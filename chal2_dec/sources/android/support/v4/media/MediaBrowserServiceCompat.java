package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaBrowserCompat.MediaItem;
import android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat extends Service {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    @RestrictTo({Scope.LIBRARY_GROUP})
    public static final String KEY_MEDIA_ITEM = "media_item";
    @RestrictTo({Scope.LIBRARY_GROUP})
    public static final String KEY_SEARCH_RESULTS = "search_results";
    static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    static final int RESULT_OK = 0;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    static final String TAG = "MBServiceCompat";
    final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap();
    ConnectionRecord mCurConnection;
    final ServiceHandler mHandler = new ServiceHandler();
    private MediaBrowserServiceImpl mImpl;
    Token mSession;

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        @Deprecated
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(@NonNull String str, @Nullable Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = str;
            this.mExtras = bundle;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }
    }

    private class ConnectionRecord {
        ServiceCallbacks callbacks;
        String pkg;
        BrowserRoot root;
        Bundle rootHints;
        HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap();

        ConnectionRecord() {
        }
    }

    interface MediaBrowserServiceImpl {
        Bundle getBrowserRootHints();

        void notifyChildrenChanged(String str, Bundle bundle);

        IBinder onBind(Intent intent);

        void onCreate();

        void setSessionToken(Token token);
    }

    public static class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        void onResultSent(T t, int i) {
        }

        Result(Object obj) {
            this.mDebug = obj;
        }

        public void sendResult(T t) {
            if (this.mSendResultCalled) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("sendResult() called twice for: ");
                stringBuilder.append(this.mDebug);
                throw new IllegalStateException(stringBuilder.toString());
            }
            this.mSendResultCalled = true;
            onResultSent(t, this.mFlags);
        }

        public void detach() {
            StringBuilder stringBuilder;
            if (this.mDetachCalled) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("detach() called when detach() had already been called for: ");
                stringBuilder.append(this.mDebug);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (this.mSendResultCalled) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("detach() called when sendResult() had already been called for: ");
                stringBuilder.append(this.mDebug);
                throw new IllegalStateException(stringBuilder.toString());
            } else {
                this.mDetachCalled = true;
            }
        }

        boolean isDone() {
            if (!this.mDetachCalled) {
                if (!this.mSendResultCalled) {
                    return false;
                }
            }
            return true;
        }

        void setFlags(int i) {
            this.mFlags = i;
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void connect(String str, int i, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            if (MediaBrowserServiceCompat.this.isValidPackage(str, i)) {
                final ServiceCallbacks serviceCallbacks2 = serviceCallbacks;
                final String str2 = str;
                final Bundle bundle2 = bundle;
                final int i2 = i;
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                    public void run() {
                        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
                        /*
                        r6 = this;
                        r0 = r3;
                        r0 = r0.asBinder();
                        r1 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;
                        r1 = android.support.v4.media.MediaBrowserServiceCompat.this;
                        r1 = r1.mConnections;
                        r1.remove(r0);
                        r1 = new android.support.v4.media.MediaBrowserServiceCompat$ConnectionRecord;
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.this;
                        r1.<init>();
                        r2 = r4;
                        r1.pkg = r2;
                        r2 = r5;
                        r1.rootHints = r2;
                        r2 = r3;
                        r1.callbacks = r2;
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.this;
                        r3 = r4;
                        r4 = r6;
                        r5 = r5;
                        r2 = r2.onGetRoot(r3, r4, r5);
                        r1.root = r2;
                        r2 = r1.root;
                        if (r2 != 0) goto L_0x007f;
                    L_0x0038:
                        r0 = "MBServiceCompat";
                        r1 = new java.lang.StringBuilder;
                        r1.<init>();
                        r2 = "No root for client ";
                        r1.append(r2);
                        r2 = r4;
                        r1.append(r2);
                        r2 = " from service ";
                        r1.append(r2);
                        r2 = r6.getClass();
                        r2 = r2.getName();
                        r1.append(r2);
                        r1 = r1.toString();
                        android.util.Log.i(r0, r1);
                        r0 = r3;	 Catch:{ RemoteException -> 0x0066 }
                        r0.onConnectFailed();	 Catch:{ RemoteException -> 0x0066 }
                        goto L_0x00c9;
                    L_0x0066:
                        r0 = "MBServiceCompat";
                        r1 = new java.lang.StringBuilder;
                        r1.<init>();
                        r2 = "Calling onConnectFailed() failed. Ignoring. pkg=";
                        r1.append(r2);
                        r6 = r4;
                        r1.append(r6);
                        r6 = r1.toString();
                        android.util.Log.w(r0, r6);
                        goto L_0x00c9;
                    L_0x007f:
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r2 = r2.mConnections;	 Catch:{ RemoteException -> 0x00a8 }
                        r2.put(r0, r1);	 Catch:{ RemoteException -> 0x00a8 }
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r2 = android.support.v4.media.MediaBrowserServiceCompat.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r2 = r2.mSession;	 Catch:{ RemoteException -> 0x00a8 }
                        if (r2 == 0) goto L_0x00c9;	 Catch:{ RemoteException -> 0x00a8 }
                    L_0x0090:
                        r2 = r3;	 Catch:{ RemoteException -> 0x00a8 }
                        r3 = r1.root;	 Catch:{ RemoteException -> 0x00a8 }
                        r3 = r3.getRootId();	 Catch:{ RemoteException -> 0x00a8 }
                        r4 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r4 = android.support.v4.media.MediaBrowserServiceCompat.this;	 Catch:{ RemoteException -> 0x00a8 }
                        r4 = r4.mSession;	 Catch:{ RemoteException -> 0x00a8 }
                        r1 = r1.root;	 Catch:{ RemoteException -> 0x00a8 }
                        r1 = r1.getExtras();	 Catch:{ RemoteException -> 0x00a8 }
                        r2.onConnect(r3, r4, r1);	 Catch:{ RemoteException -> 0x00a8 }
                        goto L_0x00c9;
                    L_0x00a8:
                        r1 = "MBServiceCompat";
                        r2 = new java.lang.StringBuilder;
                        r2.<init>();
                        r3 = "Calling onConnect() failed. Dropping client. pkg=";
                        r2.append(r3);
                        r3 = r4;
                        r2.append(r3);
                        r2 = r2.toString();
                        android.util.Log.w(r1, r2);
                        r6 = android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.this;
                        r6 = android.support.v4.media.MediaBrowserServiceCompat.this;
                        r6 = r6.mConnections;
                        r6.remove(r0);
                    L_0x00c9:
                        return;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.1.run():void");
                    }
                });
                return;
            }
            bundle = new StringBuilder();
            bundle.append("Package/uid mismatch: uid=");
            bundle.append(i);
            bundle.append(" package=");
            bundle.append(str);
            throw new IllegalArgumentException(bundle.toString());
        }

        public void disconnect(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.remove(serviceCallbacks.asBinder());
                }
            });
        }

        public void addSubscription(String str, IBinder iBinder, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            final ServiceCallbacks serviceCallbacks2 = serviceCallbacks;
            final String str2 = str;
            final IBinder iBinder2 = iBinder;
            final Bundle bundle2 = bundle;
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks2.asBinder());
                    if (connectionRecord == null) {
                        String str = MediaBrowserServiceCompat.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("addSubscription for callback that isn't registered id=");
                        stringBuilder.append(str2);
                        Log.w(str, stringBuilder.toString());
                        return;
                    }
                    MediaBrowserServiceCompat.this.addSubscription(str2, connectionRecord, iBinder2, bundle2);
                }
            });
        }

        public void removeSubscription(final String str, final IBinder iBinder, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        String str = MediaBrowserServiceCompat.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("removeSubscription for callback that isn't registered id=");
                        stringBuilder.append(str);
                        Log.w(str, stringBuilder.toString());
                        return;
                    }
                    if (!MediaBrowserServiceCompat.this.removeSubscription(str, connectionRecord, iBinder)) {
                        str = MediaBrowserServiceCompat.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("removeSubscription called for ");
                        stringBuilder.append(str);
                        stringBuilder.append(" which is not subscribed");
                        Log.w(str, stringBuilder.toString());
                    }
                }
            });
        }

        public void getMediaItem(final String str, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str)) {
                if (resultReceiver != null) {
                    MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                        public void run() {
                            ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                            if (connectionRecord == null) {
                                String str = MediaBrowserServiceCompat.TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append("getMediaItem for callback that isn't registered id=");
                                stringBuilder.append(str);
                                Log.w(str, stringBuilder.toString());
                                return;
                            }
                            MediaBrowserServiceCompat.this.performLoadItem(str, connectionRecord, resultReceiver);
                        }
                    });
                }
            }
        }

        public void registerCallbacks(final ServiceCallbacks serviceCallbacks, final Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord();
                    connectionRecord.callbacks = serviceCallbacks;
                    connectionRecord.rootHints = bundle;
                    MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                }
            });
        }

        public void unregisterCallbacks(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                public void run() {
                    MediaBrowserServiceCompat.this.mConnections.remove(serviceCallbacks.asBinder());
                }
            });
        }

        public void search(String str, Bundle bundle, ResultReceiver resultReceiver, ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str)) {
                if (resultReceiver != null) {
                    final ServiceCallbacks serviceCallbacks2 = serviceCallbacks;
                    final String str2 = str;
                    final Bundle bundle2 = bundle;
                    final ResultReceiver resultReceiver2 = resultReceiver;
                    MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() {
                        public void run() {
                            ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks2.asBinder());
                            if (connectionRecord == null) {
                                String str = MediaBrowserServiceCompat.TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append("search for callback that isn't registered query=");
                                stringBuilder.append(str2);
                                Log.w(str, stringBuilder.toString());
                                return;
                            }
                            MediaBrowserServiceCompat.this.performSearch(str2, bundle2, connectionRecord, resultReceiver2);
                        }
                    });
                }
            }
        }
    }

    private interface ServiceCallbacks {
        IBinder asBinder();

        void onConnect(String str, Token token, Bundle bundle) throws RemoteException;

        void onConnectFailed() throws RemoteException;

        void onLoadChildren(String str, List<MediaItem> list, Bundle bundle) throws RemoteException;
    }

    private final class ServiceHandler extends Handler {
        private final ServiceBinderImpl mServiceBinderImpl = new ServiceBinderImpl();

        ServiceHandler() {
        }

        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    this.mServiceBinderImpl.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 2:
                    this.mServiceBinderImpl.disconnect(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 3:
                    this.mServiceBinderImpl.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), data.getBundle(MediaBrowserProtocol.DATA_OPTIONS), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 4:
                    this.mServiceBinderImpl.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 5:
                    this.mServiceBinderImpl.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 6:
                    this.mServiceBinderImpl.registerCallbacks(new ServiceCallbacksCompat(message.replyTo), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                    return;
                case 7:
                    this.mServiceBinderImpl.unregisterCallbacks(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 8:
                    this.mServiceBinderImpl.search(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    return;
                default:
                    String str = MediaBrowserServiceCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unhandled message: ");
                    stringBuilder.append(message);
                    stringBuilder.append("\n  Service version: ");
                    stringBuilder.append(1);
                    stringBuilder.append("\n  Client version: ");
                    stringBuilder.append(message.arg1);
                    Log.w(str, stringBuilder.toString());
                    return;
            }
        }

        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            return super.sendMessageAtTime(message, j);
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }
    }

    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl, ServiceCompatProxy {
        Messenger mMessenger;
        Object mServiceObj;

        MediaBrowserServiceImplApi21() {
        }

        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi21.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
        }

        public void setSessionToken(Token token) {
            MediaBrowserServiceCompatApi21.setSessionToken(this.mServiceObj, token.getToken());
        }

        public void notifyChildrenChanged(final String str, final Bundle bundle) {
            if (this.mMessenger == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, str);
            } else {
                MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                    public void run() {
                        for (IBinder iBinder : MediaBrowserServiceCompat.this.mConnections.keySet()) {
                            ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(iBinder);
                            List<Pair> list = (List) connectionRecord.subscriptions.get(str);
                            if (list != null) {
                                for (Pair pair : list) {
                                    if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, (Bundle) pair.second)) {
                                        MediaBrowserServiceCompat.this.performLoadChildren(str, connectionRecord, (Bundle) pair.second);
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }

        public Bundle getBrowserRootHints() {
            Bundle bundle = null;
            if (this.mMessenger == null) {
                return null;
            }
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            }
            if (MediaBrowserServiceCompat.this.mCurConnection.rootHints != null) {
                bundle = new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            }
            return bundle;
        }

        public BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || bundle.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0) {
                bundle2 = null;
            } else {
                bundle.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
                bundle2 = new Bundle();
                bundle2.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
                BundleCompat.putBinder(bundle2, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.mMessenger.getBinder());
            }
            BrowserRoot onGetRoot = MediaBrowserServiceCompat.this.onGetRoot(str, i, bundle);
            if (onGetRoot == null) {
                return null;
            }
            if (bundle2 == null) {
                bundle2 = onGetRoot.getExtras();
            } else if (onGetRoot.getExtras() != null) {
                bundle2.putAll(onGetRoot.getExtras());
            }
            return new BrowserRoot(onGetRoot.getRootId(), bundle2);
        }

        public void onLoadChildren(String str, final ResultWrapper<List<Parcel>> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaItem>>(str) {
                void onResultSent(List<MediaItem> list, int i) {
                    if (list != null) {
                        i = new ArrayList();
                        for (MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            i.add(obtain);
                        }
                    } else {
                        i = 0;
                    }
                    resultWrapper.sendResult(i);
                }

                public void detach() {
                    resultWrapper.detach();
                }
            });
        }
    }

    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {
        private Messenger mMessenger;

        MediaBrowserServiceImplBase() {
        }

        public void onCreate() {
            this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
        }

        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction()) != null ? this.mMessenger.getBinder() : null;
        }

        public void setSessionToken(final Token token) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                public void run() {
                    /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
                    /*
                    r6 = this;
                    r0 = android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.this;
                    r0 = android.support.v4.media.MediaBrowserServiceCompat.this;
                    r0 = r0.mConnections;
                    r0 = r0.values();
                    r0 = r0.iterator();
                L_0x000e:
                    r1 = r0.hasNext();
                    if (r1 == 0) goto L_0x004f;
                L_0x0014:
                    r1 = r0.next();
                    r1 = (android.support.v4.media.MediaBrowserServiceCompat.ConnectionRecord) r1;
                    r2 = r1.callbacks;	 Catch:{ RemoteException -> 0x002e }
                    r3 = r1.root;	 Catch:{ RemoteException -> 0x002e }
                    r3 = r3.getRootId();	 Catch:{ RemoteException -> 0x002e }
                    r4 = r3;	 Catch:{ RemoteException -> 0x002e }
                    r5 = r1.root;	 Catch:{ RemoteException -> 0x002e }
                    r5 = r5.getExtras();	 Catch:{ RemoteException -> 0x002e }
                    r2.onConnect(r3, r4, r5);	 Catch:{ RemoteException -> 0x002e }
                    goto L_0x000e;
                L_0x002e:
                    r2 = "MBServiceCompat";
                    r3 = new java.lang.StringBuilder;
                    r3.<init>();
                    r4 = "Connection for ";
                    r3.append(r4);
                    r1 = r1.pkg;
                    r3.append(r1);
                    r1 = " is no longer valid.";
                    r3.append(r1);
                    r1 = r3.toString();
                    android.util.Log.w(r2, r1);
                    r0.remove();
                    goto L_0x000e;
                L_0x004f:
                    return;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.1.run():void");
                }
            });
        }

        public void notifyChildrenChanged(@NonNull final String str, final Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() {
                public void run() {
                    for (IBinder iBinder : MediaBrowserServiceCompat.this.mConnections.keySet()) {
                        ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(iBinder);
                        List<Pair> list = (List) connectionRecord.subscriptions.get(str);
                        if (list != null) {
                            for (Pair pair : list) {
                                if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, (Bundle) pair.second)) {
                                    MediaBrowserServiceCompat.this.performLoadChildren(str, connectionRecord, (Bundle) pair.second);
                                }
                            }
                        }
                    }
                }
            });
        }

        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection != null) {
                return MediaBrowserServiceCompat.this.mCurConnection.rootHints == null ? null : new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            } else {
                throw new IllegalStateException("This should be called inside of onLoadChildren or onLoadItem methods");
            }
        }
    }

    private class ServiceCallbacksCompat implements ServiceCallbacks {
        final Messenger mCallbacks;

        ServiceCallbacksCompat(Messenger messenger) {
            this.mCallbacks = messenger;
        }

        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        public void onConnect(String str, Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, token);
            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, bundle);
            sendRequest(1, bundle2);
        }

        public void onConnectFailed() throws RemoteException {
            sendRequest(2, null);
        }

        public void onLoadChildren(String str, List<MediaItem> list, Bundle bundle) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            if (list != null) {
                bundle2.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, (list instanceof ArrayList) != null ? (ArrayList) list : new ArrayList(list));
            }
            sendRequest(3, bundle2);
        }

        private void sendRequest(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            this.mCallbacks.send(obtain);
        }
    }

    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
            super();
        }

        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi23.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        public void onLoadItem(String str, final ResultWrapper<Parcel> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadItem(str, new Result<MediaItem>(str) {
                void onResultSent(MediaItem mediaItem, int i) {
                    if (mediaItem == null) {
                        resultWrapper.sendResult(null);
                        return;
                    }
                    i = Parcel.obtain();
                    mediaItem.writeToParcel(i, 0);
                    resultWrapper.sendResult(i);
                }

                public void detach() {
                    resultWrapper.detach();
                }
            });
        }
    }

    class MediaBrowserServiceImplApi24 extends MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi24.ServiceCompatProxy {
        MediaBrowserServiceImplApi24() {
            super();
        }

        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi24.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        public void notifyChildrenChanged(String str, Bundle bundle) {
            if (bundle == null) {
                MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, str);
            } else {
                MediaBrowserServiceCompatApi24.notifyChildrenChanged(this.mServiceObj, str, bundle);
            }
        }

        public void onLoadChildren(String str, final ResultWrapper resultWrapper, Bundle bundle) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaItem>>(str) {
                void onResultSent(List<MediaItem> list, int i) {
                    List arrayList;
                    if (list != null) {
                        arrayList = new ArrayList();
                        for (MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.sendResult(arrayList, i);
                }

                public void detach() {
                    resultWrapper.detach();
                }
            }, bundle);
        }

        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                return MediaBrowserServiceCompatApi24.getBrowserRootHints(this.mServiceObj);
            }
            return MediaBrowserServiceCompat.this.mCurConnection.rootHints == null ? null : new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaItem>> result);

    public void onCreate() {
        super.onCreate();
        if (VERSION.SDK_INT < 26) {
            if (!BuildCompat.isAtLeastO()) {
                if (VERSION.SDK_INT >= 23) {
                    this.mImpl = new MediaBrowserServiceImplApi23();
                } else if (VERSION.SDK_INT >= 21) {
                    this.mImpl = new MediaBrowserServiceImplApi21();
                } else {
                    this.mImpl = new MediaBrowserServiceImplBase();
                }
                this.mImpl.onCreate();
            }
        }
        this.mImpl = new MediaBrowserServiceImplApi24();
        this.mImpl.onCreate();
    }

    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    public void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaItem>> result, @NonNull Bundle bundle) {
        result.setFlags(1);
        onLoadChildren(str, result);
    }

    public void onLoadItem(String str, @NonNull Result<MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    public void onSearch(@NonNull String str, Bundle bundle, @NonNull Result<List<MediaItem>> result) {
        result.setFlags(4);
        result.sendResult(null);
    }

    public void setSessionToken(Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        } else if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        } else {
            this.mSession = token;
            this.mImpl.setSessionToken(token);
        }
    }

    @Nullable
    public Token getSessionToken() {
        return this.mSession;
    }

    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(str, null);
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        } else if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        } else {
            this.mImpl.notifyChildrenChanged(str, bundle);
        }
    }

    boolean isValidPackage(String str, int i) {
        if (str == null) {
            return false;
        }
        for (String equals : getPackageManager().getPackagesForUid(i)) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    void addSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List list = (List) connectionRecord.subscriptions.get(str);
        if (list == null) {
            list = new ArrayList();
        }
        for (Pair pair : r0) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(bundle, (Bundle) pair.second)) {
                return;
            }
        }
        r0.add(new Pair(iBinder, bundle));
        connectionRecord.subscriptions.put(str, r0);
        performLoadChildren(str, connectionRecord, bundle);
    }

    boolean removeSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z = false;
        if (iBinder == null) {
            if (connectionRecord.subscriptions.remove(str) != null) {
                z = true;
            }
            return z;
        }
        List list = (List) connectionRecord.subscriptions.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (iBinder == ((Pair) it.next()).first) {
                    it.remove();
                    z = true;
                }
            }
            if (list.size() == null) {
                connectionRecord.subscriptions.remove(str);
            }
        }
        return z;
    }

    void performLoadChildren(String str, ConnectionRecord connectionRecord, Bundle bundle) {
        final ConnectionRecord connectionRecord2 = connectionRecord;
        final String str2 = str;
        final Bundle bundle2 = bundle;
        Result anonymousClass1 = new Result<List<MediaItem>>(str) {
            void onResultSent(java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> r3, int r4) {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
                /*
                r2 = this;
                r0 = android.support.v4.media.MediaBrowserServiceCompat.this;
                r0 = r0.mConnections;
                r1 = r3;
                r1 = r1.callbacks;
                r1 = r1.asBinder();
                r0 = r0.get(r1);
                r1 = r3;
                if (r0 == r1) goto L_0x003d;
            L_0x0014:
                r3 = android.support.v4.media.MediaBrowserServiceCompat.DEBUG;
                if (r3 == 0) goto L_0x003c;
            L_0x0018:
                r3 = "MBServiceCompat";
                r4 = new java.lang.StringBuilder;
                r4.<init>();
                r0 = "Not sending onLoadChildren result for connection that has been disconnected. pkg=";
                r4.append(r0);
                r0 = r3;
                r0 = r0.pkg;
                r4.append(r0);
                r0 = " id=";
                r4.append(r0);
                r2 = r4;
                r4.append(r2);
                r2 = r4.toString();
                android.util.Log.d(r3, r2);
            L_0x003c:
                return;
            L_0x003d:
                r4 = r4 & 1;
                if (r4 == 0) goto L_0x0049;
            L_0x0041:
                r4 = android.support.v4.media.MediaBrowserServiceCompat.this;
                r0 = r5;
                r3 = r4.applyOptions(r3, r0);
            L_0x0049:
                r4 = r3;	 Catch:{ RemoteException -> 0x0055 }
                r4 = r4.callbacks;	 Catch:{ RemoteException -> 0x0055 }
                r0 = r4;	 Catch:{ RemoteException -> 0x0055 }
                r1 = r5;	 Catch:{ RemoteException -> 0x0055 }
                r4.onLoadChildren(r0, r3, r1);	 Catch:{ RemoteException -> 0x0055 }
                goto L_0x0079;
            L_0x0055:
                r3 = "MBServiceCompat";
                r4 = new java.lang.StringBuilder;
                r4.<init>();
                r0 = "Calling onLoadChildren() failed for id=";
                r4.append(r0);
                r0 = r4;
                r4.append(r0);
                r0 = " package=";
                r4.append(r0);
                r2 = r3;
                r2 = r2.pkg;
                r4.append(r2);
                r2 = r4.toString();
                android.util.Log.w(r3, r2);
            L_0x0079:
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserServiceCompat.1.onResultSent(java.util.List, int):void");
            }
        };
        this.mCurConnection = connectionRecord;
        if (bundle == null) {
            onLoadChildren(str, anonymousClass1);
        } else {
            onLoadChildren(str, anonymousClass1, bundle);
        }
        this.mCurConnection = null;
        if (!anonymousClass1.isDone()) {
            bundle = new StringBuilder();
            bundle.append("onLoadChildren must call detach() or sendResult() before returning for package=");
            bundle.append(connectionRecord.pkg);
            bundle.append(" id=");
            bundle.append(str);
            throw new IllegalStateException(bundle.toString());
        }
    }

    List<MediaItem> applyOptions(List<MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        bundle = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i == -1 && bundle == -1) {
            return list;
        }
        int i2 = bundle * i;
        int i3 = i2 + bundle;
        if (i >= 0 && bundle >= 1) {
            if (i2 < list.size()) {
                if (i3 > list.size()) {
                    i3 = list.size();
                }
                return list.subList(i2, i3);
            }
        }
        return Collections.EMPTY_LIST;
    }

    void performLoadItem(String str, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result anonymousClass2 = new Result<MediaItem>(str) {
            void onResultSent(MediaItem mediaItem, int i) {
                if ((i & 2) != 0) {
                    resultReceiver.send(-1, 0);
                    return;
                }
                i = new Bundle();
                i.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
                resultReceiver.send(null, i);
            }
        };
        this.mCurConnection = connectionRecord;
        onLoadItem(str, anonymousClass2);
        this.mCurConnection = null;
        if (!anonymousClass2.isDone()) {
            connectionRecord = new StringBuilder();
            connectionRecord.append("onLoadItem must call detach() or sendResult() before returning for id=");
            connectionRecord.append(str);
            throw new IllegalStateException(connectionRecord.toString());
        }
    }

    void performSearch(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result anonymousClass3 = new Result<List<MediaItem>>(str) {
            void onResultSent(List<MediaItem> list, int i) {
                if ((i & 4) == 0) {
                    if (list != null) {
                        i = new Bundle();
                        i.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaItem[0]));
                        resultReceiver.send(0, i);
                        return;
                    }
                }
                resultReceiver.send(-1, 0);
            }
        };
        this.mCurConnection = connectionRecord;
        onSearch(str, bundle, anonymousClass3);
        this.mCurConnection = null;
        if (!anonymousClass3.isDone()) {
            bundle = new StringBuilder();
            bundle.append("onSearch must call detach() or sendResult() before returning for query=");
            bundle.append(str);
            throw new IllegalStateException(bundle.toString());
        }
    }
}
