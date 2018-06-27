package android.support.v4.os;

import android.os.Build.VERSION;

public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;

    public interface OnCancelListener {
        void onCancel();
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.mIsCanceled;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel() {
        /*
        r3 = this;
        monitor-enter(r3);
        r0 = r3.mIsCanceled;	 Catch:{ all -> 0x0036 }
        if (r0 == 0) goto L_0x0007;
    L_0x0005:
        monitor-exit(r3);	 Catch:{ all -> 0x0036 }
        return;
    L_0x0007:
        r0 = 1;
        r3.mIsCanceled = r0;	 Catch:{ all -> 0x0036 }
        r3.mCancelInProgress = r0;	 Catch:{ all -> 0x0036 }
        r0 = r3.mOnCancelListener;	 Catch:{ all -> 0x0036 }
        r1 = r3.mCancellationSignalObj;	 Catch:{ all -> 0x0036 }
        monitor-exit(r3);	 Catch:{ all -> 0x0036 }
        r2 = 0;
        if (r0 == 0) goto L_0x001a;
    L_0x0014:
        r0.onCancel();	 Catch:{ all -> 0x0018 }
        goto L_0x001a;
    L_0x0018:
        r0 = move-exception;
        goto L_0x0020;
    L_0x001a:
        if (r1 == 0) goto L_0x002b;
    L_0x001c:
        android.support.v4.os.CancellationSignalCompatJellybean.cancel(r1);	 Catch:{ all -> 0x0018 }
        goto L_0x002b;
    L_0x0020:
        monitor-enter(r3);
        r3.mCancelInProgress = r2;	 Catch:{ all -> 0x0028 }
        r3.notifyAll();	 Catch:{ all -> 0x0028 }
        monitor-exit(r3);	 Catch:{ all -> 0x0028 }
        throw r0;
    L_0x0028:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0028 }
        throw r0;
    L_0x002b:
        monitor-enter(r3);
        r3.mCancelInProgress = r2;	 Catch:{ all -> 0x0033 }
        r3.notifyAll();	 Catch:{ all -> 0x0033 }
        monitor-exit(r3);	 Catch:{ all -> 0x0033 }
        return;
    L_0x0033:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0033 }
        throw r0;
    L_0x0036:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0036 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.os.CancellationSignal.cancel():void");
    }

    public void setOnCancelListener(OnCancelListener onCancelListener) {
        synchronized (this) {
            waitForCancelFinishedLocked();
            if (this.mOnCancelListener == onCancelListener) {
                return;
            }
            this.mOnCancelListener = onCancelListener;
            if (this.mIsCanceled) {
                if (onCancelListener != null) {
                    onCancelListener.onCancel();
                    return;
                }
            }
        }
    }

    public Object getCancellationSignalObject() {
        if (VERSION.SDK_INT < 16) {
            return null;
        }
        Object obj;
        synchronized (this) {
            if (this.mCancellationSignalObj == null) {
                this.mCancellationSignalObj = CancellationSignalCompatJellybean.create();
                if (this.mIsCanceled) {
                    CancellationSignalCompatJellybean.cancel(this.mCancellationSignalObj);
                }
            }
            obj = this.mCancellationSignalObj;
        }
        return obj;
    }

    private void waitForCancelFinishedLocked() {
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
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
        /*
        r1 = this;
    L_0x0000:
        r0 = r1.mCancelInProgress;
        if (r0 == 0) goto L_0x0008;
    L_0x0004:
        r1.wait();	 Catch:{ InterruptedException -> 0x0000 }
        goto L_0x0000;
    L_0x0008:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.os.CancellationSignal.waitForCancelFinishedLocked():void");
    }
}
