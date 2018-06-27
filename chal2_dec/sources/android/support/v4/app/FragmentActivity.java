package android.support.v4.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback;
import android.support.v4.app.ActivityCompatApi23.RequestPermissionsRequestCodeValidator;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.util.SparseArrayCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class FragmentActivity extends BaseFragmentActivityJB implements OnRequestPermissionsResultCallback, RequestPermissionsRequestCodeValidator {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    final FragmentController mFragments = FragmentController.createController(new HostCallbacks());
    final Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (FragmentActivity.this.mStopped != null) {
                        FragmentActivity.this.doReallyStop(null);
                        return;
                    }
                    return;
                case 2:
                    FragmentActivity.this.onResumeFragments();
                    FragmentActivity.this.mFragments.execPendingActions();
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };
    int mNextCandidateRequestIndex;
    boolean mOptionsMenuInvalidated;
    SparseArrayCompat<String> mPendingFragmentActivityResults;
    boolean mReallyStopped = true;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped = true;

    static final class NonConfigurationInstances {
        Object custom;
        FragmentManagerNonConfig fragments;
        SimpleArrayMap<String, LoaderManager> loaders;

        NonConfigurationInstances() {
        }
    }

    class HostCallbacks extends FragmentHostCallback<FragmentActivity> {
        public HostCallbacks() {
            super(FragmentActivity.this);
        }

        @SuppressLint({"NewApi"})
        public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return FragmentActivity.this.isFinishing() ^ 1;
        }

        public LayoutInflater onGetLayoutInflater() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        public FragmentActivity onGetHost() {
            return FragmentActivity.this;
        }

        public void onSupportInvalidateOptionsMenu() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, i);
        }

        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i, @Nullable Bundle bundle) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, i, bundle);
        }

        public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, Bundle bundle) throws SendIntentException {
            FragmentActivity.this.startIntentSenderFromFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] strArr, int i) {
            FragmentActivity.this.requestPermissionsFromFragment(fragment, strArr, i);
        }

        public boolean onShouldShowRequestPermissionRationale(@NonNull String str) {
            return ActivityCompat.shouldShowRequestPermissionRationale(FragmentActivity.this, str);
        }

        public boolean onHasWindowAnimations() {
            return FragmentActivity.this.getWindow() != null;
        }

        public int onGetWindowAnimations() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        public void onAttachFragment(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Nullable
        public View onFindViewById(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        public boolean onHasView() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public /* bridge */ /* synthetic */ View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(view, str, context, attributeSet);
    }

    public /* bridge */ /* synthetic */ View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(str, context, attributeSet);
    }

    @RequiresApi(16)
    public /* bridge */ /* synthetic */ void startActivityForResult(Intent intent, int i, @Nullable Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4) throws SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @RequiresApi(16)
    public /* bridge */ /* synthetic */ void startIntentSenderForResult(IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, Bundle bundle) throws SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.noteStateNotSaved();
        int i3 = i >> 16;
        if (i3 != 0) {
            i3--;
            String str = (String) this.mPendingFragmentActivityResults.get(i3);
            this.mPendingFragmentActivityResults.remove(i3);
            if (str == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment findFragmentByWho = this.mFragments.findFragmentByWho(str);
            if (findFragmentByWho == null) {
                String str2 = TAG;
                i = new StringBuilder();
                i.append("Activity result no fragment exists for who: ");
                i.append(str);
                Log.w(str2, i.toString());
            } else {
                findFragmentByWho.onActivityResult(i & SupportMenu.USER_MASK, i2, intent);
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    public void onBackPressed() {
        if (!this.mFragments.getSupportFragmentManager().popBackStackImmediate()) {
            super.onBackPressed();
        }
    }

    @Deprecated
    public final void setSupportMediaController(MediaControllerCompat mediaControllerCompat) {
        MediaControllerCompat.setMediaController(this, mediaControllerCompat);
    }

    @Deprecated
    public final MediaControllerCompat getSupportMediaController() {
        return MediaControllerCompat.getMediaController(this);
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.finishAfterTransition(this);
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setEnterSharedElementCallback(this, sharedElementCallback);
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setExitSharedElementCallback(this, sharedElementCallback);
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.startPostponedEnterTransition(this);
    }

    @CallSuper
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.dispatchMultiWindowModeChanged(z);
    }

    @CallSuper
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.dispatchPictureInPictureModeChanged(z);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.dispatchConfigurationChanged(configuration);
    }

    protected void onCreate(@Nullable Bundle bundle) {
        FragmentManagerNonConfig fragmentManagerNonConfig = null;
        this.mFragments.attachHost(null);
        super.onCreate(bundle);
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mFragments.restoreLoaderNonConfig(nonConfigurationInstances.loaders);
        }
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable(FRAGMENTS_TAG);
            FragmentController fragmentController = this.mFragments;
            if (nonConfigurationInstances != null) {
                fragmentManagerNonConfig = nonConfigurationInstances.fragments;
            }
            fragmentController.restoreAllState(parcelable, fragmentManagerNonConfig);
            if (bundle.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                this.mNextCandidateRequestIndex = bundle.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                int[] intArray = bundle.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                bundle = bundle.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                if (!(intArray == null || bundle == null)) {
                    if (intArray.length == bundle.length) {
                        this.mPendingFragmentActivityResults = new SparseArrayCompat(intArray.length);
                        for (int i = 0; i < intArray.length; i++) {
                            this.mPendingFragmentActivityResults.put(intArray[i], bundle[i]);
                        }
                    }
                }
                Log.w(TAG, "Invalid requestCode mapping in savedInstanceState.");
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new SparseArrayCompat();
            this.mNextCandidateRequestIndex = 0;
        }
        this.mFragments.dispatchCreate();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        return VERSION.SDK_INT >= 11 ? this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater()) | super.onCreatePanelMenu(i, menu) : true;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.onCreateView(view, str, context, attributeSet);
    }

    protected void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.dispatchDestroy();
        this.mFragments.doLoaderDestroy();
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.dispatchOptionsItemSelected(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.dispatchContextItemSelected(menuItem);
    }

    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.dispatchOptionsMenuClosed(menu);
        }
        super.onPanelClosed(i, menu);
    }

    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }

    public void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        onResumeFragments();
        this.mFragments.execPendingActions();
    }

    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.mOptionsMenuInvalidated) {
            this.mOptionsMenuInvalidated = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return this.mFragments.dispatchPrepareOptionsMenu(menu) | onPrepareOptionsPanel(view, menu);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        FragmentManagerNonConfig retainNestedNonConfig = this.mFragments.retainNestedNonConfig();
        SimpleArrayMap retainLoaderNonConfig = this.mFragments.retainLoaderNonConfig();
        if (retainNestedNonConfig == null && retainLoaderNonConfig == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances.fragments = retainNestedNonConfig;
        nonConfigurationInstances.loaders = retainLoaderNonConfig;
        return nonConfigurationInstances;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable saveAllState = this.mFragments.saveAllState();
        if (saveAllState != null) {
            bundle.putParcelable(FRAGMENTS_TAG, saveAllState);
        }
        if (this.mPendingFragmentActivityResults.size() > 0) {
            bundle.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.size()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.size()];
            for (int i = 0; i < this.mPendingFragmentActivityResults.size(); i++) {
                iArr[i] = this.mPendingFragmentActivityResults.keyAt(i);
                strArr[i] = (String) this.mPendingFragmentActivityResults.valueAt(i);
            }
            bundle.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
            bundle.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
        }
    }

    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        this.mFragments.doLoaderStart();
        this.mFragments.dispatchStart();
        this.mFragments.reportLoaderStart();
    }

    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        return nonConfigurationInstances != null ? nonConfigurationInstances.custom : null;
    }

    public void supportInvalidateOptionsMenu() {
        if (VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
        } else {
            this.mOptionsMenuInvalidated = true;
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = VERSION.SDK_INT;
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("  ");
        String stringBuilder2 = stringBuilder.toString();
        printWriter.print(stringBuilder2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.mReallyStopped);
        this.mFragments.dumpLoaders(stringBuilder2, fileDescriptor, printWriter, strArr);
        this.mFragments.getSupportFragmentManager().dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        fileDescriptor = new StringBuilder();
        fileDescriptor.append(str);
        fileDescriptor.append("  ");
        dumpViewHierarchy(fileDescriptor.toString(), printWriter, getWindow().getDecorView());
    }

    private static java.lang.String viewToString(android.view.View r6) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JavaClass.getDefinitionPosition(JavaClass.java:193)
*/
        /*
        r0 = new java.lang.StringBuilder;
        r1 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r0.<init>(r1);
        r1 = r6.getClass();
        r1 = r1.getName();
        r0.append(r1);
        r1 = 123; // 0x7b float:1.72E-43 double:6.1E-322;
        r0.append(r1);
        r1 = java.lang.System.identityHashCode(r6);
        r1 = java.lang.Integer.toHexString(r1);
        r0.append(r1);
        r1 = 32;
        r0.append(r1);
        r2 = r6.getVisibility();
        r3 = 86;
        r4 = 46;
        if (r2 == 0) goto L_0x0048;
    L_0x0031:
        r5 = 4;
        if (r2 == r5) goto L_0x0042;
    L_0x0034:
        r5 = 8;
        if (r2 == r5) goto L_0x003c;
    L_0x0038:
        r0.append(r4);
        goto L_0x004b;
    L_0x003c:
        r2 = 71;
        r0.append(r2);
        goto L_0x004b;
    L_0x0042:
        r2 = 73;
        r0.append(r2);
        goto L_0x004b;
    L_0x0048:
        r0.append(r3);
    L_0x004b:
        r2 = r6.isFocusable();
        r5 = 70;
        if (r2 == 0) goto L_0x0055;
    L_0x0053:
        r2 = r5;
        goto L_0x0056;
    L_0x0055:
        r2 = r4;
    L_0x0056:
        r0.append(r2);
        r2 = r6.isEnabled();
        if (r2 == 0) goto L_0x0062;
    L_0x005f:
        r2 = 69;
        goto L_0x0063;
    L_0x0062:
        r2 = r4;
    L_0x0063:
        r0.append(r2);
        r2 = r6.willNotDraw();
        if (r2 == 0) goto L_0x006e;
    L_0x006c:
        r2 = r4;
        goto L_0x0070;
    L_0x006e:
        r2 = 68;
    L_0x0070:
        r0.append(r2);
        r2 = r6.isHorizontalScrollBarEnabled();
        if (r2 == 0) goto L_0x007c;
    L_0x0079:
        r2 = 72;
        goto L_0x007d;
    L_0x007c:
        r2 = r4;
    L_0x007d:
        r0.append(r2);
        r2 = r6.isVerticalScrollBarEnabled();
        if (r2 == 0) goto L_0x0087;
    L_0x0086:
        goto L_0x0088;
    L_0x0087:
        r3 = r4;
    L_0x0088:
        r0.append(r3);
        r2 = r6.isClickable();
        if (r2 == 0) goto L_0x0094;
    L_0x0091:
        r2 = 67;
        goto L_0x0095;
    L_0x0094:
        r2 = r4;
    L_0x0095:
        r0.append(r2);
        r2 = r6.isLongClickable();
        if (r2 == 0) goto L_0x00a1;
    L_0x009e:
        r2 = 76;
        goto L_0x00a2;
    L_0x00a1:
        r2 = r4;
    L_0x00a2:
        r0.append(r2);
        r0.append(r1);
        r2 = r6.isFocused();
        if (r2 == 0) goto L_0x00af;
    L_0x00ae:
        goto L_0x00b0;
    L_0x00af:
        r5 = r4;
    L_0x00b0:
        r0.append(r5);
        r2 = r6.isSelected();
        if (r2 == 0) goto L_0x00bc;
    L_0x00b9:
        r2 = 83;
        goto L_0x00bd;
    L_0x00bc:
        r2 = r4;
    L_0x00bd:
        r0.append(r2);
        r2 = r6.isPressed();
        if (r2 == 0) goto L_0x00c8;
    L_0x00c6:
        r4 = 80;
    L_0x00c8:
        r0.append(r4);
        r0.append(r1);
        r1 = r6.getLeft();
        r0.append(r1);
        r1 = 44;
        r0.append(r1);
        r2 = r6.getTop();
        r0.append(r2);
        r2 = 45;
        r0.append(r2);
        r2 = r6.getRight();
        r0.append(r2);
        r0.append(r1);
        r1 = r6.getBottom();
        r0.append(r1);
        r1 = r6.getId();
        r2 = -1;
        if (r1 == r2) goto L_0x0147;
    L_0x00fe:
        r2 = " #";
        r0.append(r2);
        r2 = java.lang.Integer.toHexString(r1);
        r0.append(r2);
        r6 = r6.getResources();
        if (r1 == 0) goto L_0x0147;
    L_0x0110:
        if (r6 == 0) goto L_0x0147;
    L_0x0112:
        r2 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r1;
        r3 = 16777216; // 0x1000000 float:2.3509887E-38 double:8.289046E-317;
        if (r2 == r3) goto L_0x0125;
    L_0x0119:
        r3 = 2130706432; // 0x7f000000 float:1.7014118E38 double:1.0527088494E-314;
        if (r2 == r3) goto L_0x0122;
    L_0x011d:
        r2 = r6.getResourcePackageName(r1);	 Catch:{ NotFoundException -> 0x0147 }
        goto L_0x0127;	 Catch:{ NotFoundException -> 0x0147 }
    L_0x0122:
        r2 = "app";	 Catch:{ NotFoundException -> 0x0147 }
        goto L_0x0127;	 Catch:{ NotFoundException -> 0x0147 }
    L_0x0125:
        r2 = "android";	 Catch:{ NotFoundException -> 0x0147 }
    L_0x0127:
        r3 = r6.getResourceTypeName(r1);	 Catch:{ NotFoundException -> 0x0147 }
        r6 = r6.getResourceEntryName(r1);	 Catch:{ NotFoundException -> 0x0147 }
        r1 = " ";	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r1);	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r2);	 Catch:{ NotFoundException -> 0x0147 }
        r1 = ":";	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r1);	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r3);	 Catch:{ NotFoundException -> 0x0147 }
        r1 = "/";	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r1);	 Catch:{ NotFoundException -> 0x0147 }
        r0.append(r6);	 Catch:{ NotFoundException -> 0x0147 }
    L_0x0147:
        r6 = "}";
        r0.append(r6);
        r6 = r0.toString();
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentActivity.viewToString(android.view.View):java.lang.String");
    }

    private void dumpViewHierarchy(String str, PrintWriter printWriter, View view) {
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(viewToString(view));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            if (childCount > 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append("  ");
                str = stringBuilder.toString();
                for (int i = 0; i < childCount; i++) {
                    dumpViewHierarchy(str, printWriter, viewGroup.getChildAt(i));
                }
            }
        }
    }

    void doReallyStop(boolean z) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = z;
            this.mHandler.removeMessages(1);
            onReallyStop();
        } else if (z) {
            this.mFragments.doLoaderStart();
            this.mFragments.doLoaderStop(true);
        }
    }

    void onReallyStop() {
        this.mFragments.doLoaderStop(this.mRetaining);
        this.mFragments.dispatchReallyStop();
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.getSupportFragmentManager();
    }

    public LoaderManager getSupportLoaderManager() {
        return this.mFragments.getSupportLoaderManager();
    }

    public void startActivityForResult(Intent intent, int i) {
        if (!(this.mStartedActivityFromFragment || i == -1)) {
            BaseFragmentActivityGingerbread.checkForValidRequestCode(i);
        }
        super.startActivityForResult(intent, i);
    }

    public final void validateRequestPermissionsRequestCode(int i) {
        if (!this.mRequestedPermissionsFromFragment && i != -1) {
            BaseFragmentActivityGingerbread.checkForValidRequestCode(i);
        }
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        int i2 = (i >> 16) & SupportMenu.USER_MASK;
        if (i2 != 0) {
            i2--;
            String str = (String) this.mPendingFragmentActivityResults.get(i2);
            this.mPendingFragmentActivityResults.remove(i2);
            if (str == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment findFragmentByWho = this.mFragments.findFragmentByWho(str);
            if (findFragmentByWho == null) {
                String str2 = TAG;
                i = new StringBuilder();
                i.append("Activity result no fragment exists for who: ");
                i.append(str);
                Log.w(str2, i.toString());
            } else {
                findFragmentByWho.onRequestPermissionsResult(i & SupportMenu.USER_MASK, strArr, iArr);
            }
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, @Nullable Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        if (i == -1) {
            try {
                ActivityCompat.startActivityForResult(this, intent, -1, bundle);
            } finally {
                this.mStartedActivityFromFragment = false;
            }
        } else {
            BaseFragmentActivityGingerbread.checkForValidRequestCode(i);
            ActivityCompat.startActivityForResult(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (i & SupportMenu.USER_MASK), bundle);
            this.mStartedActivityFromFragment = false;
        }
    }

    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, Bundle bundle) throws SendIntentException {
        int i5 = i;
        this.mStartedIntentSenderFromFragment = true;
        if (i5 == -1) {
            try {
                ActivityCompat.startIntentSenderForResult(r9, intentSender, i5, intent, i2, i3, i4, bundle);
                r9.mStartedIntentSenderFromFragment = false;
            } catch (Throwable th) {
                Throwable th2 = th;
                r9.mStartedIntentSenderFromFragment = false;
            }
        } else {
            BaseFragmentActivityGingerbread.checkForValidRequestCode(i5);
            ActivityCompat.startIntentSenderForResult(r9, intentSender, ((allocateRequestIndex(fragment) + 1) << 16) + (SupportMenu.USER_MASK & i5), intent, i2, i3, i4, bundle);
            r9.mStartedIntentSenderFromFragment = false;
        }
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.size() >= MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.mPendingFragmentActivityResults.indexOfKey(this.mNextCandidateRequestIndex) >= 0) {
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
        }
        int i = this.mNextCandidateRequestIndex;
        this.mPendingFragmentActivityResults.put(i, fragment.mWho);
        this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % 65534;
        return i;
    }

    void requestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            ActivityCompat.requestPermissions(this, strArr, i);
            return;
        }
        BaseFragmentActivityGingerbread.checkForValidRequestCode(i);
        try {
            this.mRequestedPermissionsFromFragment = true;
            ActivityCompat.requestPermissions(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (i & SupportMenu.USER_MASK));
        } finally {
            this.mRequestedPermissionsFromFragment = false;
        }
    }
}
