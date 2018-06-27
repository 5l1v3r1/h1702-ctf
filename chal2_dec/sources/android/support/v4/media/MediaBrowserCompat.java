package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.BuildCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class MediaBrowserCompat {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
    static final String TAG = "MediaBrowserCompat";
    private final MediaBrowserImpl mImpl;

    private static class CallbackHandler extends Handler {
        private final WeakReference<MediaBrowserServiceCallbackImpl> mCallbackImplRef;
        private WeakReference<Messenger> mCallbacksMessengerRef;

        CallbackHandler(MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.mCallbackImplRef = new WeakReference(mediaBrowserServiceCallbackImpl);
        }

        public void handleMessage(Message message) {
            if (!(this.mCallbacksMessengerRef == null || this.mCallbacksMessengerRef.get() == null)) {
                if (this.mCallbackImplRef.get() != null) {
                    Bundle data = message.getData();
                    data.setClassLoader(MediaSessionCompat.class.getClassLoader());
                    switch (message.what) {
                        case 1:
                            ((MediaBrowserServiceCallbackImpl) this.mCallbackImplRef.get()).onServiceConnected((Messenger) this.mCallbacksMessengerRef.get(), data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                            break;
                        case 2:
                            ((MediaBrowserServiceCallbackImpl) this.mCallbackImplRef.get()).onConnectionFailed((Messenger) this.mCallbacksMessengerRef.get());
                            break;
                        case 3:
                            ((MediaBrowserServiceCallbackImpl) this.mCallbackImplRef.get()).onLoadChildren((Messenger) this.mCallbacksMessengerRef.get(), data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), data.getBundle(MediaBrowserProtocol.DATA_OPTIONS));
                            break;
                        default:
                            String str = MediaBrowserCompat.TAG;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("Unhandled message: ");
                            stringBuilder.append(message);
                            stringBuilder.append("\n  Client version: ");
                            stringBuilder.append(1);
                            stringBuilder.append("\n  Service version: ");
                            stringBuilder.append(message.arg1);
                            Log.w(str, stringBuilder.toString());
                            break;
                    }
                }
            }
        }

        void setCallbacksMessenger(Messenger messenger) {
            this.mCallbacksMessengerRef = new WeakReference(messenger);
        }
    }

    public static class ConnectionCallback {
        ConnectionCallbackInternal mConnectionCallbackInternal;
        final Object mConnectionCallbackObj;

        interface ConnectionCallbackInternal {
            void onConnected();

            void onConnectionFailed();

            void onConnectionSuspended();
        }

        private class StubApi21 implements ConnectionCallback {
            StubApi21() {
            }

            public void onConnected() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnected();
                }
                ConnectionCallback.this.onConnected();
            }

            public void onConnectionSuspended() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnectionSuspended();
                }
                ConnectionCallback.this.onConnectionSuspended();
            }

            public void onConnectionFailed() {
                if (ConnectionCallback.this.mConnectionCallbackInternal != null) {
                    ConnectionCallback.this.mConnectionCallbackInternal.onConnectionFailed();
                }
                ConnectionCallback.this.onConnectionFailed();
            }
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public ConnectionCallback() {
            if (VERSION.SDK_INT >= 21) {
                this.mConnectionCallbackObj = MediaBrowserCompatApi21.createConnectionCallback(new StubApi21());
            } else {
                this.mConnectionCallbackObj = null;
            }
        }

        void setInternalConnectionCallback(ConnectionCallbackInternal connectionCallbackInternal) {
            this.mConnectionCallbackInternal = connectionCallbackInternal;
        }
    }

    public static abstract class ItemCallback {
        final Object mItemCallbackObj;

        private class StubApi23 implements ItemCallback {
            StubApi23() {
            }

            public void onItemLoaded(Parcel parcel) {
                if (parcel == null) {
                    ItemCallback.this.onItemLoaded(null);
                    return;
                }
                parcel.setDataPosition(0);
                MediaItem mediaItem = (MediaItem) MediaItem.CREATOR.createFromParcel(parcel);
                parcel.recycle();
                ItemCallback.this.onItemLoaded(mediaItem);
            }

            public void onError(@NonNull String str) {
                ItemCallback.this.onError(str);
            }
        }

        public void onError(@NonNull String str) {
        }

        public void onItemLoaded(MediaItem mediaItem) {
        }

        public ItemCallback() {
            if (VERSION.SDK_INT >= 23) {
                this.mItemCallbackObj = MediaBrowserCompatApi23.createItemCallback(new StubApi23());
            } else {
                this.mItemCallbackObj = null;
            }
        }
    }

    interface MediaBrowserImpl {
        void connect();

        void disconnect();

        @Nullable
        Bundle getExtras();

        void getItem(@NonNull String str, @NonNull ItemCallback itemCallback);

        @NonNull
        String getRoot();

        ComponentName getServiceComponent();

        @NonNull
        Token getSessionToken();

        boolean isConnected();

        void search(@NonNull String str, Bundle bundle, @NonNull SearchCallback searchCallback);

        void subscribe(@NonNull String str, Bundle bundle, @NonNull SubscriptionCallback subscriptionCallback);

        void unsubscribe(@NonNull String str, SubscriptionCallback subscriptionCallback);
    }

    interface MediaBrowserServiceCallbackImpl {
        void onConnectionFailed(Messenger messenger);

        void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle);

        void onServiceConnected(Messenger messenger, String str, Token token, Bundle bundle);
    }

    public static class MediaItem implements Parcelable {
        public static final Creator<MediaItem> CREATOR = new Creator<MediaItem>() {
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        @RestrictTo({Scope.LIBRARY_GROUP})
        @Retention(RetentionPolicy.SOURCE)
        public @interface Flags {
        }

        public int describeContents() {
            return 0;
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj != null) {
                if (VERSION.SDK_INT >= 21) {
                    return new MediaItem(MediaDescriptionCompat.fromMediaDescription(MediaItem.getDescription(obj)), MediaItem.getFlags(obj));
                }
            }
            return null;
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list != null) {
                if (VERSION.SDK_INT >= 21) {
                    List<MediaItem> arrayList = new ArrayList(list.size());
                    for (Object fromMediaItem : list) {
                        arrayList.add(fromMediaItem(fromMediaItem));
                    }
                    return arrayList;
                }
            }
            return null;
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            } else {
                this.mFlags = i;
                this.mDescription = mediaDescriptionCompat;
            }
        }

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = (MediaDescriptionCompat) MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("MediaItem{");
            stringBuilder.append("mFlags=");
            stringBuilder.append(this.mFlags);
            stringBuilder.append(", mDescription=");
            stringBuilder.append(this.mDescription);
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        public int getFlags() {
            return this.mFlags;
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        @NonNull
        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        @Nullable
        public String getMediaId() {
            return this.mDescription.getMediaId();
        }
    }

    public static abstract class SearchCallback {
        public void onError(@NonNull String str, Bundle bundle) {
        }

        public void onSearchResult(@NonNull String str, Bundle bundle, @NonNull List<MediaItem> list) {
        }
    }

    private static class ServiceBinderWrapper {
        private Messenger mMessenger;
        private Bundle mRootHints;

        public ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
            this.mMessenger = new Messenger(iBinder);
            this.mRootHints = bundle;
        }

        void connect(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.mRootHints);
            sendRequest(1, bundle, messenger);
        }

        void disconnect(Messenger messenger) throws RemoteException {
            sendRequest(2, null, messenger);
        }

        void addSubscription(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle2, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            sendRequest(3, bundle2, messenger);
        }

        void removeSubscription(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            sendRequest(4, bundle, messenger);
        }

        void getMediaItem(String str, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            sendRequest(5, bundle, messenger);
        }

        void registerCallbackMessenger(Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.mRootHints);
            sendRequest(6, bundle, messenger);
        }

        void unregisterCallbackMessenger(Messenger messenger) throws RemoteException {
            sendRequest(7, null, messenger);
        }

        void search(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_SEARCH_QUERY, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            sendRequest(8, bundle2, messenger);
        }

        private void sendRequest(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.mMessenger.send(obtain);
        }
    }

    private static class Subscription {
        private final List<SubscriptionCallback> mCallbacks = new ArrayList();
        private final List<Bundle> mOptionsList = new ArrayList();

        public boolean isEmpty() {
            return this.mCallbacks.isEmpty();
        }

        public List<Bundle> getOptionsList() {
            return this.mOptionsList;
        }

        public List<SubscriptionCallback> getCallbacks() {
            return this.mCallbacks;
        }

        public SubscriptionCallback getCallback(Bundle bundle) {
            for (int i = 0; i < this.mOptionsList.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) this.mOptionsList.get(i), bundle)) {
                    return (SubscriptionCallback) this.mCallbacks.get(i);
                }
            }
            return null;
        }

        public void putCallback(Bundle bundle, SubscriptionCallback subscriptionCallback) {
            for (int i = 0; i < this.mOptionsList.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) this.mOptionsList.get(i), bundle)) {
                    this.mCallbacks.set(i, subscriptionCallback);
                    return;
                }
            }
            this.mCallbacks.add(subscriptionCallback);
            this.mOptionsList.add(bundle);
        }
    }

    public static abstract class SubscriptionCallback {
        private final Object mSubscriptionCallbackObj;
        WeakReference<Subscription> mSubscriptionRef;
        private final IBinder mToken;

        private class StubApi21 implements SubscriptionCallback {
            StubApi21() {
            }

            public void onChildrenLoaded(@NonNull String str, List<?> list) {
                Subscription subscription = SubscriptionCallback.this.mSubscriptionRef == null ? null : (Subscription) SubscriptionCallback.this.mSubscriptionRef.get();
                if (subscription == null) {
                    SubscriptionCallback.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list));
                    return;
                }
                list = MediaItem.fromMediaItemList(list);
                List callbacks = subscription.getCallbacks();
                List optionsList = subscription.getOptionsList();
                for (int i = 0; i < callbacks.size(); i++) {
                    Bundle bundle = (Bundle) optionsList.get(i);
                    if (bundle == null) {
                        SubscriptionCallback.this.onChildrenLoaded(str, list);
                    } else {
                        SubscriptionCallback.this.onChildrenLoaded(str, applyOptions(list, bundle), bundle);
                    }
                }
            }

            public void onError(@NonNull String str) {
                SubscriptionCallback.this.onError(str);
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
        }

        private class StubApi24 extends StubApi21 implements SubscriptionCallback {
            StubApi24() {
                super();
            }

            public void onChildrenLoaded(@NonNull String str, List<?> list, @NonNull Bundle bundle) {
                SubscriptionCallback.this.onChildrenLoaded(str, MediaItem.fromMediaItemList(list), bundle);
            }

            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                SubscriptionCallback.this.onError(str, bundle);
            }
        }

        public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }

        public void onError(@NonNull String str) {
        }

        public void onError(@NonNull String str, @NonNull Bundle bundle) {
        }

        public SubscriptionCallback() {
            if (VERSION.SDK_INT < 26) {
                if (!BuildCompat.isAtLeastO()) {
                    if (VERSION.SDK_INT >= 21) {
                        this.mSubscriptionCallbackObj = MediaBrowserCompatApi21.createSubscriptionCallback(new StubApi21());
                        this.mToken = new Binder();
                        return;
                    }
                    this.mSubscriptionCallbackObj = null;
                    this.mToken = new Binder();
                    return;
                }
            }
            this.mSubscriptionCallbackObj = MediaBrowserCompatApi24.createSubscriptionCallback(new StubApi24());
            this.mToken = null;
        }

        private void setSubscription(Subscription subscription) {
            this.mSubscriptionRef = new WeakReference(subscription);
        }
    }

    private static class ItemReceiver extends ResultReceiver {
        private final ItemCallback mCallback;
        private final String mMediaId;

        ItemReceiver(String str, ItemCallback itemCallback, Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = itemCallback;
        }

        protected void onReceiveResult(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i == 0 && bundle != null) {
                if (bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM) != 0) {
                    i = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                    if (i != 0) {
                        if ((i instanceof MediaItem) == null) {
                            this.mCallback.onError(this.mMediaId);
                            return;
                        }
                    }
                    this.mCallback.onItemLoaded((MediaItem) i);
                    return;
                }
            }
            this.mCallback.onError(this.mMediaId);
        }
    }

    static class MediaBrowserImplApi21 implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl, ConnectionCallbackInternal {
        protected final Object mBrowserObj;
        protected Messenger mCallbacksMessenger;
        protected final CallbackHandler mHandler = new CallbackHandler(this);
        protected final Bundle mRootHints;
        protected ServiceBinderWrapper mServiceBinderWrapper;
        private final ArrayMap<String, Subscription> mSubscriptions = new ArrayMap();

        public void onConnectionFailed() {
        }

        public void onConnectionFailed(Messenger messenger) {
        }

        public void onServiceConnected(Messenger messenger, String str, Token token, Bundle bundle) {
        }

        public MediaBrowserImplApi21(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            if (VERSION.SDK_INT <= 25) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
                this.mRootHints = new Bundle(bundle);
            } else {
                if (bundle == null) {
                    bundle = null;
                } else {
                    bundle = new Bundle(bundle);
                }
                this.mRootHints = bundle;
            }
            connectionCallback.setInternalConnectionCallback(this);
            this.mBrowserObj = MediaBrowserCompatApi21.createBrowser(context, componentName, connectionCallback.mConnectionCallbackObj, this.mRootHints);
        }

        public void connect() {
            MediaBrowserCompatApi21.connect(this.mBrowserObj);
        }

        public void disconnect() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r2 = this;
            r0 = r2.mServiceBinderWrapper;
            if (r0 == 0) goto L_0x0017;
        L_0x0004:
            r0 = r2.mCallbacksMessenger;
            if (r0 == 0) goto L_0x0017;
        L_0x0008:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0010 }
            r1 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0010 }
            r0.unregisterCallbackMessenger(r1);	 Catch:{ RemoteException -> 0x0010 }
            goto L_0x0017;
        L_0x0010:
            r0 = "MediaBrowserCompat";
            r1 = "Remote error unregistering client messenger.";
            android.util.Log.i(r0, r1);
        L_0x0017:
            r2 = r2.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.disconnect(r2);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.disconnect():void");
        }

        public boolean isConnected() {
            return MediaBrowserCompatApi21.isConnected(this.mBrowserObj);
        }

        public ComponentName getServiceComponent() {
            return MediaBrowserCompatApi21.getServiceComponent(this.mBrowserObj);
        }

        @NonNull
        public String getRoot() {
            return MediaBrowserCompatApi21.getRoot(this.mBrowserObj);
        }

        @Nullable
        public Bundle getExtras() {
            return MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
        }

        @NonNull
        public Token getSessionToken() {
            return Token.fromToken(MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj));
        }

        public void subscribe(@android.support.annotation.NonNull java.lang.String r3, android.os.Bundle r4, @android.support.annotation.NonNull android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r2 = this;
            r0 = r2.mSubscriptions;
            r0 = r0.get(r3);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x0014;
        L_0x000a:
            r0 = new android.support.v4.media.MediaBrowserCompat$Subscription;
            r0.<init>();
            r1 = r2.mSubscriptions;
            r1.put(r3, r0);
        L_0x0014:
            r5.setSubscription(r0);
            if (r4 != 0) goto L_0x001b;
        L_0x0019:
            r4 = 0;
            goto L_0x0021;
        L_0x001b:
            r1 = new android.os.Bundle;
            r1.<init>(r4);
            r4 = r1;
        L_0x0021:
            r0.putCallback(r4, r5);
            r0 = r2.mServiceBinderWrapper;
            if (r0 != 0) goto L_0x0032;
        L_0x0028:
            r2 = r2.mBrowserObj;
            r4 = r5.mSubscriptionCallbackObj;
            android.support.v4.media.MediaBrowserCompatApi21.subscribe(r2, r3, r4);
            goto L_0x0054;
        L_0x0032:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x003e }
            r5 = r5.mToken;	 Catch:{ RemoteException -> 0x003e }
            r2 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x003e }
            r0.addSubscription(r3, r5, r4, r2);	 Catch:{ RemoteException -> 0x003e }
            goto L_0x0054;
        L_0x003e:
            r2 = "MediaBrowserCompat";
            r4 = new java.lang.StringBuilder;
            r4.<init>();
            r5 = "Remote error subscribing media item: ";
            r4.append(r5);
            r4.append(r3);
            r3 = r4.toString();
            android.util.Log.i(r2, r3);
        L_0x0054:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.subscribe(java.lang.String, android.os.Bundle, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void unsubscribe(@android.support.annotation.NonNull java.lang.String r8, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r9) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r7 = this;
            r0 = r7.mSubscriptions;
            r0 = r0.get(r8);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r1 = r7.mServiceBinderWrapper;
            if (r1 != 0) goto L_0x0043;
        L_0x000f:
            if (r9 != 0) goto L_0x0018;
        L_0x0011:
            r1 = r7.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(r1, r8);
            goto L_0x008e;
        L_0x0018:
            r1 = r0.getCallbacks();
            r2 = r0.getOptionsList();
            r3 = r1.size();
            r3 = r3 + -1;
        L_0x0026:
            if (r3 < 0) goto L_0x0037;
        L_0x0028:
            r4 = r1.get(r3);
            if (r4 != r9) goto L_0x0034;
        L_0x002e:
            r1.remove(r3);
            r2.remove(r3);
        L_0x0034:
            r3 = r3 + -1;
            goto L_0x0026;
        L_0x0037:
            r1 = r1.size();
            if (r1 != 0) goto L_0x008e;
        L_0x003d:
            r1 = r7.mBrowserObj;
            android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(r1, r8);
            goto L_0x008e;
        L_0x0043:
            if (r9 != 0) goto L_0x004e;
        L_0x0045:
            r1 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0078 }
            r2 = 0;	 Catch:{ RemoteException -> 0x0078 }
            r3 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0078 }
            r1.removeSubscription(r8, r2, r3);	 Catch:{ RemoteException -> 0x0078 }
            goto L_0x008e;	 Catch:{ RemoteException -> 0x0078 }
        L_0x004e:
            r1 = r0.getCallbacks();	 Catch:{ RemoteException -> 0x0078 }
            r2 = r0.getOptionsList();	 Catch:{ RemoteException -> 0x0078 }
            r3 = r1.size();	 Catch:{ RemoteException -> 0x0078 }
            r3 = r3 + -1;	 Catch:{ RemoteException -> 0x0078 }
        L_0x005c:
            if (r3 < 0) goto L_0x008e;	 Catch:{ RemoteException -> 0x0078 }
        L_0x005e:
            r4 = r1.get(r3);	 Catch:{ RemoteException -> 0x0078 }
            if (r4 != r9) goto L_0x0075;	 Catch:{ RemoteException -> 0x0078 }
        L_0x0064:
            r4 = r7.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0078 }
            r5 = r9.mToken;	 Catch:{ RemoteException -> 0x0078 }
            r6 = r7.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0078 }
            r4.removeSubscription(r8, r5, r6);	 Catch:{ RemoteException -> 0x0078 }
            r1.remove(r3);	 Catch:{ RemoteException -> 0x0078 }
            r2.remove(r3);	 Catch:{ RemoteException -> 0x0078 }
        L_0x0075:
            r3 = r3 + -1;
            goto L_0x005c;
        L_0x0078:
            r1 = "MediaBrowserCompat";
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "removeSubscription failed with RemoteException parentId=";
            r2.append(r3);
            r2.append(r8);
            r2 = r2.toString();
            android.util.Log.d(r1, r2);
        L_0x008e:
            r0 = r0.isEmpty();
            if (r0 != 0) goto L_0x0096;
        L_0x0094:
            if (r9 != 0) goto L_0x009b;
        L_0x0096:
            r7 = r7.mSubscriptions;
            r7.remove(r8);
        L_0x009b:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.unsubscribe(java.lang.String, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void getItem(@android.support.annotation.NonNull final java.lang.String r4, @android.support.annotation.NonNull final android.support.v4.media.MediaBrowserCompat.ItemCallback r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r3 = this;
            r0 = android.text.TextUtils.isEmpty(r4);
            if (r0 == 0) goto L_0x000e;
        L_0x0006:
            r3 = new java.lang.IllegalArgumentException;
            r4 = "mediaId is empty";
            r3.<init>(r4);
            throw r3;
        L_0x000e:
            if (r5 != 0) goto L_0x0018;
        L_0x0010:
            r3 = new java.lang.IllegalArgumentException;
            r4 = "cb is null";
            r3.<init>(r4);
            throw r3;
        L_0x0018:
            r0 = r3.mBrowserObj;
            r0 = android.support.v4.media.MediaBrowserCompatApi21.isConnected(r0);
            if (r0 != 0) goto L_0x0032;
        L_0x0020:
            r0 = "MediaBrowserCompat";
            r1 = "Not connected, unable to retrieve the MediaItem.";
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$1;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x0032:
            r0 = r3.mServiceBinderWrapper;
            if (r0 != 0) goto L_0x0041;
        L_0x0036:
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$2;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x0041:
            r0 = new android.support.v4.media.MediaBrowserCompat$ItemReceiver;
            r1 = r3.mHandler;
            r0.<init>(r4, r5, r1);
            r1 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0050 }
            r2 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0050 }
            r1.getMediaItem(r4, r0, r2);	 Catch:{ RemoteException -> 0x0050 }
            goto L_0x0070;
        L_0x0050:
            r0 = "MediaBrowserCompat";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Remote error getting media item: ";
            r1.append(r2);
            r1.append(r4);
            r1 = r1.toString();
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$3;
            r1.<init>(r5, r4);
            r0.post(r1);
        L_0x0070:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.getItem(java.lang.String, android.support.v4.media.MediaBrowserCompat$ItemCallback):void");
        }

        public void search(@NonNull final String str, final Bundle bundle, @NonNull final SearchCallback searchCallback) {
            if (!isConnected()) {
                Log.i(MediaBrowserCompat.TAG, "Not connected, unable to search.");
                this.mHandler.post(new Runnable() {
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
            } else if (this.mServiceBinderWrapper == null) {
                Log.i(MediaBrowserCompat.TAG, "The connected service doesn't support search.");
                this.mHandler.post(new Runnable() {
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
            } else {
                try {
                    this.mServiceBinderWrapper.search(str, bundle, new SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
                } catch (Throwable e) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Remote error searching items with query: ");
                    stringBuilder.append(str);
                    Log.i(str2, stringBuilder.toString(), e);
                    this.mHandler.post(new Runnable() {
                        public void run() {
                            searchCallback.onError(str, bundle);
                        }
                    });
                }
            }
        }

        public void onConnected() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r3 = this;
            r0 = r3.mBrowserObj;
            r0 = android.support.v4.media.MediaBrowserCompatApi21.getExtras(r0);
            if (r0 != 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r1 = "extra_messenger";
            r0 = android.support.v4.app.BundleCompat.getBinder(r0, r1);
            if (r0 == 0) goto L_0x0039;
        L_0x0011:
            r1 = new android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper;
            r2 = r3.mRootHints;
            r1.<init>(r0, r2);
            r3.mServiceBinderWrapper = r1;
            r0 = new android.os.Messenger;
            r1 = r3.mHandler;
            r0.<init>(r1);
            r3.mCallbacksMessenger = r0;
            r0 = r3.mHandler;
            r1 = r3.mCallbacksMessenger;
            r0.setCallbacksMessenger(r1);
            r0 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0032 }
            r3 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0032 }
            r0.registerCallbackMessenger(r3);	 Catch:{ RemoteException -> 0x0032 }
            goto L_0x0039;
        L_0x0032:
            r3 = "MediaBrowserCompat";
            r0 = "Remote error registering client messenger.";
            android.util.Log.i(r3, r0);
        L_0x0039:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.onConnected():void");
        }

        public void onConnectionSuspended() {
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mHandler.setCallbacksMessenger(null);
        }

        public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle) {
            if (this.mCallbacksMessenger == messenger) {
                Subscription subscription = (Subscription) this.mSubscriptions.get(str);
                if (subscription == null) {
                    if (MediaBrowserCompat.DEBUG) {
                        String str2 = MediaBrowserCompat.TAG;
                        messenger = new StringBuilder();
                        messenger.append("onLoadChildren for id that isn't subscribed id=");
                        messenger.append(str);
                        Log.d(str2, messenger.toString());
                    }
                    return;
                }
                SubscriptionCallback callback = subscription.getCallback(bundle);
                if (callback != null) {
                    if (bundle == null) {
                        if (list == null) {
                            callback.onError(str);
                        } else {
                            callback.onChildrenLoaded(str, list);
                        }
                    } else if (list == null) {
                        callback.onError(str, bundle);
                    } else {
                        callback.onChildrenLoaded(str, list, bundle);
                    }
                }
            }
        }
    }

    static class MediaBrowserImplBase implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl {
        private static final int CONNECT_STATE_CONNECTED = 2;
        static final int CONNECT_STATE_CONNECTING = 1;
        static final int CONNECT_STATE_DISCONNECTED = 0;
        static final int CONNECT_STATE_SUSPENDED = 3;
        final ConnectionCallback mCallback;
        Messenger mCallbacksMessenger;
        final Context mContext;
        private Bundle mExtras;
        final CallbackHandler mHandler = new CallbackHandler(this);
        private Token mMediaSessionToken;
        final Bundle mRootHints;
        private String mRootId;
        ServiceBinderWrapper mServiceBinderWrapper;
        final ComponentName mServiceComponent;
        MediaServiceConnection mServiceConnection;
        int mState = 0;
        private final ArrayMap<String, Subscription> mSubscriptions = new ArrayMap();

        private class MediaServiceConnection implements ServiceConnection {
            MediaServiceConnection() {
            }

            public void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                postOrRun(new Runnable() {
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
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
                        /*
                        r4 = this;
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                        if (r0 == 0) goto L_0x002d;
                    L_0x0004:
                        r0 = "MediaBrowserCompat";
                        r1 = new java.lang.StringBuilder;
                        r1.<init>();
                        r2 = "MediaServiceConnection.onServiceConnected name=";
                        r1.append(r2);
                        r2 = r2;
                        r1.append(r2);
                        r2 = " binder=";
                        r1.append(r2);
                        r2 = r3;
                        r1.append(r2);
                        r1 = r1.toString();
                        android.util.Log.d(r0, r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r0.dump();
                    L_0x002d:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r1 = "onServiceConnected";
                        r0 = r0.isCurrent(r1);
                        if (r0 != 0) goto L_0x0038;
                    L_0x0037:
                        return;
                    L_0x0038:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = new android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper;
                        r2 = r3;
                        r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r3 = r3.mRootHints;
                        r1.<init>(r2, r3);
                        r0.mServiceBinderWrapper = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = new android.os.Messenger;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r2 = r2.mHandler;
                        r1.<init>(r2);
                        r0.mCallbacksMessenger = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r0 = r0.mHandler;
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = r1.mCallbacksMessenger;
                        r0.setCallbacksMessenger(r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r1 = 1;
                        r0.mState = r1;
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;	 Catch:{ RemoteException -> 0x009a }
                        if (r0 == 0) goto L_0x0084;	 Catch:{ RemoteException -> 0x009a }
                    L_0x0076:
                        r0 = "MediaBrowserCompat";	 Catch:{ RemoteException -> 0x009a }
                        r1 = "ServiceCallbacks.onConnect...";	 Catch:{ RemoteException -> 0x009a }
                        android.util.Log.d(r0, r1);	 Catch:{ RemoteException -> 0x009a }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x009a }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x009a }
                        r0.dump();	 Catch:{ RemoteException -> 0x009a }
                    L_0x0084:
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x009a }
                        r0 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x009a }
                        r0 = r0.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x009a }
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x009a }
                        r1 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x009a }
                        r1 = r1.mContext;	 Catch:{ RemoteException -> 0x009a }
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;	 Catch:{ RemoteException -> 0x009a }
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;	 Catch:{ RemoteException -> 0x009a }
                        r2 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x009a }
                        r0.connect(r1, r2);	 Catch:{ RemoteException -> 0x009a }
                        goto L_0x00c8;
                    L_0x009a:
                        r0 = "MediaBrowserCompat";
                        r1 = new java.lang.StringBuilder;
                        r1.<init>();
                        r2 = "RemoteException during connect for ";
                        r1.append(r2);
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r2 = r2.mServiceComponent;
                        r1.append(r2);
                        r1 = r1.toString();
                        android.util.Log.w(r0, r1);
                        r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
                        if (r0 == 0) goto L_0x00c8;
                    L_0x00ba:
                        r0 = "MediaBrowserCompat";
                        r1 = "ServiceCallbacks.onConnect...";
                        android.util.Log.d(r0, r1);
                        r4 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this;
                        r4 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        r4.dump();
                    L_0x00c8:
                        return;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.1.run():void");
                    }
                });
            }

            public void onServiceDisconnected(final ComponentName componentName) {
                postOrRun(new Runnable() {
                    public void run() {
                        if (MediaBrowserCompat.DEBUG) {
                            String str = MediaBrowserCompat.TAG;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("MediaServiceConnection.onServiceDisconnected name=");
                            stringBuilder.append(componentName);
                            stringBuilder.append(" this=");
                            stringBuilder.append(this);
                            stringBuilder.append(" mServiceConnection=");
                            stringBuilder.append(MediaBrowserImplBase.this.mServiceConnection);
                            Log.d(str, stringBuilder.toString());
                            MediaBrowserImplBase.this.dump();
                        }
                        if (MediaServiceConnection.this.isCurrent("onServiceDisconnected")) {
                            MediaBrowserImplBase.this.mServiceBinderWrapper = null;
                            MediaBrowserImplBase.this.mCallbacksMessenger = null;
                            MediaBrowserImplBase.this.mHandler.setCallbacksMessenger(null);
                            MediaBrowserImplBase.this.mState = 3;
                            MediaBrowserImplBase.this.mCallback.onConnectionSuspended();
                        }
                    }
                });
            }

            private void postOrRun(Runnable runnable) {
                if (Thread.currentThread() == MediaBrowserImplBase.this.mHandler.getLooper().getThread()) {
                    runnable.run();
                } else {
                    MediaBrowserImplBase.this.mHandler.post(runnable);
                }
            }

            boolean isCurrent(String str) {
                if (MediaBrowserImplBase.this.mServiceConnection == this) {
                    return true;
                }
                if (MediaBrowserImplBase.this.mState != 0) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(" for ");
                    stringBuilder.append(MediaBrowserImplBase.this.mServiceComponent);
                    stringBuilder.append(" with mServiceConnection=");
                    stringBuilder.append(MediaBrowserImplBase.this.mServiceConnection);
                    stringBuilder.append(" this=");
                    stringBuilder.append(this);
                    Log.i(str2, stringBuilder.toString());
                }
                return false;
            }
        }

        public MediaBrowserImplBase(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (connectionCallback == null) {
                throw new IllegalArgumentException("connection callback must not be null");
            } else {
                this.mContext = context;
                this.mServiceComponent = componentName;
                this.mCallback = connectionCallback;
                if (bundle == null) {
                    context = null;
                } else {
                    context = new Bundle(bundle);
                }
                this.mRootHints = context;
            }
        }

        public void connect() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r6 = this;
            r0 = r6.mState;
            if (r0 == 0) goto L_0x0026;
        L_0x0004:
            r0 = new java.lang.IllegalStateException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "connect() called while not disconnected (state=";
            r1.append(r2);
            r6 = r6.mState;
            r6 = getStateLabel(r6);
            r1.append(r6);
            r6 = ")";
            r1.append(r6);
            r6 = r1.toString();
            r0.<init>(r6);
            throw r0;
        L_0x0026:
            r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
            if (r0 == 0) goto L_0x0047;
        L_0x002a:
            r0 = r6.mServiceConnection;
            if (r0 == 0) goto L_0x0047;
        L_0x002e:
            r0 = new java.lang.RuntimeException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "mServiceConnection should be null. Instead it is ";
            r1.append(r2);
            r6 = r6.mServiceConnection;
            r1.append(r6);
            r6 = r1.toString();
            r0.<init>(r6);
            throw r0;
        L_0x0047:
            r0 = r6.mServiceBinderWrapper;
            if (r0 == 0) goto L_0x0064;
        L_0x004b:
            r0 = new java.lang.RuntimeException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "mServiceBinderWrapper should be null. Instead it is ";
            r1.append(r2);
            r6 = r6.mServiceBinderWrapper;
            r1.append(r6);
            r6 = r1.toString();
            r0.<init>(r6);
            throw r0;
        L_0x0064:
            r0 = r6.mCallbacksMessenger;
            if (r0 == 0) goto L_0x0081;
        L_0x0068:
            r0 = new java.lang.RuntimeException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "mCallbacksMessenger should be null. Instead it is ";
            r1.append(r2);
            r6 = r6.mCallbacksMessenger;
            r1.append(r6);
            r6 = r1.toString();
            r0.<init>(r6);
            throw r0;
        L_0x0081:
            r0 = 1;
            r6.mState = r0;
            r1 = new android.content.Intent;
            r2 = "android.media.browse.MediaBrowserService";
            r1.<init>(r2);
            r2 = r6.mServiceComponent;
            r1.setComponent(r2);
            r2 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
            r2.<init>();
            r6.mServiceConnection = r2;
            r3 = 0;
            r4 = r6.mContext;	 Catch:{ Exception -> 0x00a1 }
            r5 = r6.mServiceConnection;	 Catch:{ Exception -> 0x00a1 }
            r0 = r4.bindService(r1, r5, r0);	 Catch:{ Exception -> 0x00a1 }
            goto L_0x00ba;
        L_0x00a1:
            r0 = "MediaBrowserCompat";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r4 = "Failed binding to service ";
            r1.append(r4);
            r4 = r6.mServiceComponent;
            r1.append(r4);
            r1 = r1.toString();
            android.util.Log.e(r0, r1);
            r0 = r3;
        L_0x00ba:
            if (r0 != 0) goto L_0x00c6;
        L_0x00bc:
            r0 = r6.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$1;
            r1.<init>(r2);
            r0.post(r1);
        L_0x00c6:
            r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
            if (r0 == 0) goto L_0x00d4;
        L_0x00ca:
            r0 = "MediaBrowserCompat";
            r1 = "connect...";
            android.util.Log.d(r0, r1);
            r6.dump();
        L_0x00d4:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.connect():void");
        }

        public void disconnect() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r3 = this;
            r0 = r3.mCallbacksMessenger;
            if (r0 == 0) goto L_0x0024;
        L_0x0004:
            r0 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x000c }
            r1 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x000c }
            r0.disconnect(r1);	 Catch:{ RemoteException -> 0x000c }
            goto L_0x0024;
        L_0x000c:
            r0 = "MediaBrowserCompat";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "RemoteException during connect for ";
            r1.append(r2);
            r2 = r3.mServiceComponent;
            r1.append(r2);
            r1 = r1.toString();
            android.util.Log.w(r0, r1);
        L_0x0024:
            r3.forceCloseConnection();
            r0 = android.support.v4.media.MediaBrowserCompat.DEBUG;
            if (r0 == 0) goto L_0x0035;
        L_0x002b:
            r0 = "MediaBrowserCompat";
            r1 = "disconnect...";
            android.util.Log.d(r0, r1);
            r3.dump();
        L_0x0035:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.disconnect():void");
        }

        void forceCloseConnection() {
            if (this.mServiceConnection != null) {
                this.mContext.unbindService(this.mServiceConnection);
            }
            this.mState = 0;
            this.mServiceConnection = null;
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mHandler.setCallbacksMessenger(null);
            this.mRootId = null;
            this.mMediaSessionToken = null;
        }

        public boolean isConnected() {
            return this.mState == 2;
        }

        @NonNull
        public ComponentName getServiceComponent() {
            if (isConnected()) {
                return this.mServiceComponent;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getServiceComponent() called while not connected (state=");
            stringBuilder.append(this.mState);
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        @NonNull
        public String getRoot() {
            if (isConnected()) {
                return this.mRootId;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getRoot() called while not connected(state=");
            stringBuilder.append(getStateLabel(this.mState));
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        @Nullable
        public Bundle getExtras() {
            if (isConnected()) {
                return this.mExtras;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getExtras() called while not connected (state=");
            stringBuilder.append(getStateLabel(this.mState));
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        @NonNull
        public Token getSessionToken() {
            if (isConnected()) {
                return this.mMediaSessionToken;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getSessionToken() called while not connected(state=");
            stringBuilder.append(this.mState);
            stringBuilder.append(")");
            throw new IllegalStateException(stringBuilder.toString());
        }

        public void subscribe(@android.support.annotation.NonNull java.lang.String r3, android.os.Bundle r4, @android.support.annotation.NonNull android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r2 = this;
            r0 = r2.mSubscriptions;
            r0 = r0.get(r3);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x0014;
        L_0x000a:
            r0 = new android.support.v4.media.MediaBrowserCompat$Subscription;
            r0.<init>();
            r1 = r2.mSubscriptions;
            r1.put(r3, r0);
        L_0x0014:
            if (r4 != 0) goto L_0x0018;
        L_0x0016:
            r4 = 0;
            goto L_0x001e;
        L_0x0018:
            r1 = new android.os.Bundle;
            r1.<init>(r4);
            r4 = r1;
        L_0x001e:
            r0.putCallback(r4, r5);
            r0 = r2.mState;
            r1 = 2;
            if (r0 != r1) goto L_0x0048;
        L_0x0026:
            r0 = r2.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0032 }
            r5 = r5.mToken;	 Catch:{ RemoteException -> 0x0032 }
            r2 = r2.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0032 }
            r0.addSubscription(r3, r5, r4, r2);	 Catch:{ RemoteException -> 0x0032 }
            goto L_0x0048;
        L_0x0032:
            r2 = "MediaBrowserCompat";
            r4 = new java.lang.StringBuilder;
            r4.<init>();
            r5 = "addSubscription failed with RemoteException parentId=";
            r4.append(r5);
            r4.append(r3);
            r3 = r4.toString();
            android.util.Log.d(r2, r3);
        L_0x0048:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.subscribe(java.lang.String, android.os.Bundle, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void unsubscribe(@android.support.annotation.NonNull java.lang.String r9, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r10) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r8 = this;
            r0 = r8.mSubscriptions;
            r0 = r0.get(r9);
            r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0;
            if (r0 != 0) goto L_0x000b;
        L_0x000a:
            return;
        L_0x000b:
            r1 = 2;
            if (r10 != 0) goto L_0x001b;
        L_0x000e:
            r2 = r8.mState;	 Catch:{ RemoteException -> 0x0049 }
            if (r2 != r1) goto L_0x005f;	 Catch:{ RemoteException -> 0x0049 }
        L_0x0012:
            r1 = r8.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0049 }
            r2 = 0;	 Catch:{ RemoteException -> 0x0049 }
            r3 = r8.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0049 }
            r1.removeSubscription(r9, r2, r3);	 Catch:{ RemoteException -> 0x0049 }
            goto L_0x005f;	 Catch:{ RemoteException -> 0x0049 }
        L_0x001b:
            r2 = r0.getCallbacks();	 Catch:{ RemoteException -> 0x0049 }
            r3 = r0.getOptionsList();	 Catch:{ RemoteException -> 0x0049 }
            r4 = r2.size();	 Catch:{ RemoteException -> 0x0049 }
            r4 = r4 + -1;	 Catch:{ RemoteException -> 0x0049 }
        L_0x0029:
            if (r4 < 0) goto L_0x005f;	 Catch:{ RemoteException -> 0x0049 }
        L_0x002b:
            r5 = r2.get(r4);	 Catch:{ RemoteException -> 0x0049 }
            if (r5 != r10) goto L_0x0046;	 Catch:{ RemoteException -> 0x0049 }
        L_0x0031:
            r5 = r8.mState;	 Catch:{ RemoteException -> 0x0049 }
            if (r5 != r1) goto L_0x0040;	 Catch:{ RemoteException -> 0x0049 }
        L_0x0035:
            r5 = r8.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0049 }
            r6 = r10.mToken;	 Catch:{ RemoteException -> 0x0049 }
            r7 = r8.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0049 }
            r5.removeSubscription(r9, r6, r7);	 Catch:{ RemoteException -> 0x0049 }
        L_0x0040:
            r2.remove(r4);	 Catch:{ RemoteException -> 0x0049 }
            r3.remove(r4);	 Catch:{ RemoteException -> 0x0049 }
        L_0x0046:
            r4 = r4 + -1;
            goto L_0x0029;
        L_0x0049:
            r1 = "MediaBrowserCompat";
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "removeSubscription failed with RemoteException parentId=";
            r2.append(r3);
            r2.append(r9);
            r2 = r2.toString();
            android.util.Log.d(r1, r2);
        L_0x005f:
            r0 = r0.isEmpty();
            if (r0 != 0) goto L_0x0067;
        L_0x0065:
            if (r10 != 0) goto L_0x006c;
        L_0x0067:
            r8 = r8.mSubscriptions;
            r8.remove(r9);
        L_0x006c:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.unsubscribe(java.lang.String, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }

        public void getItem(@android.support.annotation.NonNull final java.lang.String r4, @android.support.annotation.NonNull final android.support.v4.media.MediaBrowserCompat.ItemCallback r5) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r3 = this;
            r0 = android.text.TextUtils.isEmpty(r4);
            if (r0 == 0) goto L_0x000e;
        L_0x0006:
            r3 = new java.lang.IllegalArgumentException;
            r4 = "mediaId is empty";
            r3.<init>(r4);
            throw r3;
        L_0x000e:
            if (r5 != 0) goto L_0x0018;
        L_0x0010:
            r3 = new java.lang.IllegalArgumentException;
            r4 = "cb is null";
            r3.<init>(r4);
            throw r3;
        L_0x0018:
            r0 = r3.mState;
            r1 = 2;
            if (r0 == r1) goto L_0x002f;
        L_0x001d:
            r0 = "MediaBrowserCompat";
            r1 = "Not connected, unable to retrieve the MediaItem.";
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$2;
            r1.<init>(r5, r4);
            r0.post(r1);
            return;
        L_0x002f:
            r0 = new android.support.v4.media.MediaBrowserCompat$ItemReceiver;
            r1 = r3.mHandler;
            r0.<init>(r4, r5, r1);
            r1 = r3.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x003e }
            r2 = r3.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x003e }
            r1.getMediaItem(r4, r0, r2);	 Catch:{ RemoteException -> 0x003e }
            goto L_0x004f;
        L_0x003e:
            r0 = "MediaBrowserCompat";
            r1 = "Remote error getting media item.";
            android.util.Log.i(r0, r1);
            r0 = r3.mHandler;
            r1 = new android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$3;
            r1.<init>(r5, r4);
            r0.post(r1);
        L_0x004f:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.getItem(java.lang.String, android.support.v4.media.MediaBrowserCompat$ItemCallback):void");
        }

        public void search(@NonNull final String str, final Bundle bundle, @NonNull final SearchCallback searchCallback) {
            if (isConnected()) {
                try {
                    this.mServiceBinderWrapper.search(str, bundle, new SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
                } catch (Throwable e) {
                    String str2 = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Remote error searching items with query: ");
                    stringBuilder.append(str);
                    Log.i(str2, stringBuilder.toString(), e);
                    this.mHandler.post(new Runnable() {
                        public void run() {
                            searchCallback.onError(str, bundle);
                        }
                    });
                }
                return;
            }
            Log.i(MediaBrowserCompat.TAG, "Not connected, unable to search.");
            this.mHandler.post(new Runnable() {
                public void run() {
                    searchCallback.onError(str, bundle);
                }
            });
        }

        public void onServiceConnected(android.os.Messenger r6, java.lang.String r7, android.support.v4.media.session.MediaSessionCompat.Token r8, android.os.Bundle r9) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
            /*
            r5 = this;
            r0 = "onConnect";
            r6 = r5.isCurrent(r6, r0);
            if (r6 != 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r6 = r5.mState;
            r0 = 1;
            if (r6 == r0) goto L_0x0030;
        L_0x000e:
            r6 = "MediaBrowserCompat";
            r7 = new java.lang.StringBuilder;
            r7.<init>();
            r8 = "onConnect from service while mState=";
            r7.append(r8);
            r5 = r5.mState;
            r5 = getStateLabel(r5);
            r7.append(r5);
            r5 = "... ignoring";
            r7.append(r5);
            r5 = r7.toString();
            android.util.Log.w(r6, r5);
            return;
        L_0x0030:
            r5.mRootId = r7;
            r5.mMediaSessionToken = r8;
            r5.mExtras = r9;
            r6 = 2;
            r5.mState = r6;
            r6 = android.support.v4.media.MediaBrowserCompat.DEBUG;
            if (r6 == 0) goto L_0x0047;
        L_0x003d:
            r6 = "MediaBrowserCompat";
            r7 = "ServiceCallbacks.onConnect...";
            android.util.Log.d(r6, r7);
            r5.dump();
        L_0x0047:
            r6 = r5.mCallback;
            r6.onConnected();
            r6 = r5.mSubscriptions;	 Catch:{ RemoteException -> 0x0097 }
            r6 = r6.entrySet();	 Catch:{ RemoteException -> 0x0097 }
            r6 = r6.iterator();	 Catch:{ RemoteException -> 0x0097 }
        L_0x0056:
            r7 = r6.hasNext();	 Catch:{ RemoteException -> 0x0097 }
            if (r7 == 0) goto L_0x009e;	 Catch:{ RemoteException -> 0x0097 }
        L_0x005c:
            r7 = r6.next();	 Catch:{ RemoteException -> 0x0097 }
            r7 = (java.util.Map.Entry) r7;	 Catch:{ RemoteException -> 0x0097 }
            r8 = r7.getKey();	 Catch:{ RemoteException -> 0x0097 }
            r8 = (java.lang.String) r8;	 Catch:{ RemoteException -> 0x0097 }
            r7 = r7.getValue();	 Catch:{ RemoteException -> 0x0097 }
            r7 = (android.support.v4.media.MediaBrowserCompat.Subscription) r7;	 Catch:{ RemoteException -> 0x0097 }
            r9 = r7.getCallbacks();	 Catch:{ RemoteException -> 0x0097 }
            r7 = r7.getOptionsList();	 Catch:{ RemoteException -> 0x0097 }
            r0 = 0;	 Catch:{ RemoteException -> 0x0097 }
        L_0x0077:
            r1 = r9.size();	 Catch:{ RemoteException -> 0x0097 }
            if (r0 >= r1) goto L_0x0056;	 Catch:{ RemoteException -> 0x0097 }
        L_0x007d:
            r1 = r5.mServiceBinderWrapper;	 Catch:{ RemoteException -> 0x0097 }
            r2 = r9.get(r0);	 Catch:{ RemoteException -> 0x0097 }
            r2 = (android.support.v4.media.MediaBrowserCompat.SubscriptionCallback) r2;	 Catch:{ RemoteException -> 0x0097 }
            r2 = r2.mToken;	 Catch:{ RemoteException -> 0x0097 }
            r3 = r7.get(r0);	 Catch:{ RemoteException -> 0x0097 }
            r3 = (android.os.Bundle) r3;	 Catch:{ RemoteException -> 0x0097 }
            r4 = r5.mCallbacksMessenger;	 Catch:{ RemoteException -> 0x0097 }
            r1.addSubscription(r8, r2, r3, r4);	 Catch:{ RemoteException -> 0x0097 }
            r0 = r0 + 1;
            goto L_0x0077;
        L_0x0097:
            r5 = "MediaBrowserCompat";
            r6 = "addSubscription failed with RemoteException.";
            android.util.Log.d(r5, r6);
        L_0x009e:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.onServiceConnected(android.os.Messenger, java.lang.String, android.support.v4.media.session.MediaSessionCompat$Token, android.os.Bundle):void");
        }

        public void onConnectionFailed(Messenger messenger) {
            String str = MediaBrowserCompat.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onConnectFailed for ");
            stringBuilder.append(this.mServiceComponent);
            Log.e(str, stringBuilder.toString());
            if (isCurrent(messenger, "onConnectFailed") != null) {
                if (this.mState != 1) {
                    messenger = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("onConnect from service while mState=");
                    stringBuilder2.append(getStateLabel(this.mState));
                    stringBuilder2.append("... ignoring");
                    Log.w(messenger, stringBuilder2.toString());
                    return;
                }
                forceCloseConnection();
                this.mCallback.onConnectionFailed();
            }
        }

        public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle) {
            if (isCurrent(messenger, "onLoadChildren") != null) {
                if (MediaBrowserCompat.DEBUG != null) {
                    messenger = MediaBrowserCompat.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("onLoadChildren for ");
                    stringBuilder.append(this.mServiceComponent);
                    stringBuilder.append(" id=");
                    stringBuilder.append(str);
                    Log.d(messenger, stringBuilder.toString());
                }
                Subscription subscription = (Subscription) this.mSubscriptions.get(str);
                if (subscription == null) {
                    if (MediaBrowserCompat.DEBUG) {
                        String str2 = MediaBrowserCompat.TAG;
                        messenger = new StringBuilder();
                        messenger.append("onLoadChildren for id that isn't subscribed id=");
                        messenger.append(str);
                        Log.d(str2, messenger.toString());
                    }
                    return;
                }
                SubscriptionCallback callback = subscription.getCallback(bundle);
                if (callback != null) {
                    if (bundle == null) {
                        if (list == null) {
                            callback.onError(str);
                        } else {
                            callback.onChildrenLoaded(str, list);
                        }
                    } else if (list == null) {
                        callback.onError(str, bundle);
                    } else {
                        callback.onChildrenLoaded(str, list, bundle);
                    }
                }
            }
        }

        private static String getStateLabel(int i) {
            switch (i) {
                case 0:
                    return "CONNECT_STATE_DISCONNECTED";
                case 1:
                    return "CONNECT_STATE_CONNECTING";
                case 2:
                    return "CONNECT_STATE_CONNECTED";
                case 3:
                    return "CONNECT_STATE_SUSPENDED";
                default:
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("UNKNOWN/");
                    stringBuilder.append(i);
                    return stringBuilder.toString();
            }
        }

        private boolean isCurrent(Messenger messenger, String str) {
            if (this.mCallbacksMessenger == messenger) {
                return true;
            }
            if (this.mState != null) {
                messenger = MediaBrowserCompat.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(" for ");
                stringBuilder.append(this.mServiceComponent);
                stringBuilder.append(" with mCallbacksMessenger=");
                stringBuilder.append(this.mCallbacksMessenger);
                stringBuilder.append(" this=");
                stringBuilder.append(this);
                Log.i(messenger, stringBuilder.toString());
            }
            return false;
        }

        void dump() {
            Log.d(MediaBrowserCompat.TAG, "MediaBrowserCompat...");
            String str = MediaBrowserCompat.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("  mServiceComponent=");
            stringBuilder.append(this.mServiceComponent);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mCallback=");
            stringBuilder.append(this.mCallback);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mRootHints=");
            stringBuilder.append(this.mRootHints);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mState=");
            stringBuilder.append(getStateLabel(this.mState));
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mServiceConnection=");
            stringBuilder.append(this.mServiceConnection);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mServiceBinderWrapper=");
            stringBuilder.append(this.mServiceBinderWrapper);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mCallbacksMessenger=");
            stringBuilder.append(this.mCallbacksMessenger);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mRootId=");
            stringBuilder.append(this.mRootId);
            Log.d(str, stringBuilder.toString());
            str = MediaBrowserCompat.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("  mMediaSessionToken=");
            stringBuilder.append(this.mMediaSessionToken);
            Log.d(str, stringBuilder.toString());
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {
        private final SearchCallback mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        SearchResultReceiver(String str, Bundle bundle, SearchCallback searchCallback, Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = searchCallback;
        }

        protected void onReceiveResult(int i, Bundle bundle) {
            if (i == 0 && bundle != null) {
                if (bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS) != 0) {
                    i = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                    bundle = null;
                    if (i != 0) {
                        bundle = new ArrayList();
                        for (Object obj : i) {
                            bundle.add((MediaItem) obj);
                        }
                    }
                    this.mCallback.onSearchResult(this.mQuery, this.mExtras, bundle);
                    return;
                }
            }
            this.mCallback.onError(this.mQuery, this.mExtras);
        }
    }

    static class MediaBrowserImplApi23 extends MediaBrowserImplApi21 {
        public MediaBrowserImplApi23(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        public void getItem(@NonNull String str, @NonNull ItemCallback itemCallback) {
            if (this.mServiceBinderWrapper == null) {
                MediaBrowserCompatApi23.getItem(this.mBrowserObj, str, itemCallback.mItemCallbackObj);
            } else {
                super.getItem(str, itemCallback);
            }
        }
    }

    static class MediaBrowserImplApi24 extends MediaBrowserImplApi23 {
        public MediaBrowserImplApi24(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        public void subscribe(@NonNull String str, @NonNull Bundle bundle, @NonNull SubscriptionCallback subscriptionCallback) {
            if (bundle == null) {
                MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            } else {
                MediaBrowserCompatApi24.subscribe(this.mBrowserObj, str, bundle, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }

        public void unsubscribe(@NonNull String str, SubscriptionCallback subscriptionCallback) {
            if (subscriptionCallback == null) {
                MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
            } else {
                MediaBrowserCompatApi24.unsubscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
        if (VERSION.SDK_INT < 26) {
            if (!BuildCompat.isAtLeastO()) {
                if (VERSION.SDK_INT >= 23) {
                    this.mImpl = new MediaBrowserImplApi23(context, componentName, connectionCallback, bundle);
                    return;
                } else if (VERSION.SDK_INT >= 21) {
                    this.mImpl = new MediaBrowserImplApi21(context, componentName, connectionCallback, bundle);
                    return;
                } else {
                    this.mImpl = new MediaBrowserImplBase(context, componentName, connectionCallback, bundle);
                    return;
                }
            }
        }
        this.mImpl = new MediaBrowserImplApi24(context, componentName, connectionCallback, bundle);
    }

    public void connect() {
        this.mImpl.connect();
    }

    public void disconnect() {
        this.mImpl.disconnect();
    }

    public boolean isConnected() {
        return this.mImpl.isConnected();
    }

    @NonNull
    public ComponentName getServiceComponent() {
        return this.mImpl.getServiceComponent();
    }

    @NonNull
    public String getRoot() {
        return this.mImpl.getRoot();
    }

    @Nullable
    public Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    @NonNull
    public Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public void subscribe(@NonNull String str, @NonNull SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else {
            this.mImpl.subscribe(str, null, subscriptionCallback);
        }
    }

    public void subscribe(@NonNull String str, @NonNull Bundle bundle, @NonNull SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else if (bundle == null) {
            throw new IllegalArgumentException("options are null");
        } else {
            this.mImpl.subscribe(str, bundle, subscriptionCallback);
        }
    }

    public void unsubscribe(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        this.mImpl.unsubscribe(str, null);
    }

    public void unsubscribe(@NonNull String str, @NonNull SubscriptionCallback subscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        } else if (subscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        } else {
            this.mImpl.unsubscribe(str, subscriptionCallback);
        }
    }

    public void getItem(@NonNull String str, @NonNull ItemCallback itemCallback) {
        this.mImpl.getItem(str, itemCallback);
    }

    public void search(@NonNull String str, Bundle bundle, @NonNull SearchCallback searchCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query cannot be empty");
        } else if (searchCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        } else {
            this.mImpl.search(str, bundle, searchCallback);
        }
    }
}
