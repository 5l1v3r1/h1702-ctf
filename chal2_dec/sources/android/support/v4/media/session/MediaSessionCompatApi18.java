package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.SystemClock;
import android.support.annotation.RequiresApi;

@TargetApi(18)
@RequiresApi(18)
class MediaSessionCompatApi18 {
    private static final long ACTION_SEEK_TO = 256;
    private static final String TAG = "MediaSessionCompatApi18";
    private static boolean sIsMbrPendingIntentSupported = true;

    interface Callback {
        void onSeekTo(long j);
    }

    static class OnPlaybackPositionUpdateListener<T extends Callback> implements android.media.RemoteControlClient.OnPlaybackPositionUpdateListener {
        protected final T mCallback;

        public OnPlaybackPositionUpdateListener(T t) {
            this.mCallback = t;
        }

        public void onPlaybackPositionUpdate(long j) {
            this.mCallback.onSeekTo(j);
        }
    }

    MediaSessionCompatApi18() {
    }

    public static Object createPlaybackPositionUpdateListener(Callback callback) {
        return new OnPlaybackPositionUpdateListener(callback);
    }

    public static void registerMediaButtonEventReceiver(android.content.Context r1, android.app.PendingIntent r2, android.content.ComponentName r3) {
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
        r0 = "audio";
        r1 = r1.getSystemService(r0);
        r1 = (android.media.AudioManager) r1;
        r0 = sIsMbrPendingIntentSupported;
        if (r0 == 0) goto L_0x001a;
    L_0x000c:
        r1.registerMediaButtonEventReceiver(r2);	 Catch:{ NullPointerException -> 0x0010 }
        goto L_0x001a;
    L_0x0010:
        r2 = "MediaSessionCompatApi18";
        r0 = "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.";
        android.util.Log.w(r2, r0);
        r2 = 0;
        sIsMbrPendingIntentSupported = r2;
    L_0x001a:
        r2 = sIsMbrPendingIntentSupported;
        if (r2 != 0) goto L_0x0021;
    L_0x001e:
        r1.registerMediaButtonEventReceiver(r3);
    L_0x0021:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompatApi18.registerMediaButtonEventReceiver(android.content.Context, android.app.PendingIntent, android.content.ComponentName):void");
    }

    public static void unregisterMediaButtonEventReceiver(Context context, PendingIntent pendingIntent, ComponentName componentName) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (sIsMbrPendingIntentSupported) {
            audioManager.unregisterMediaButtonEventReceiver(pendingIntent);
        } else {
            audioManager.unregisterMediaButtonEventReceiver(componentName);
        }
    }

    public static void setState(Object obj, int i, long j, float f, long j2) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (i == 3) {
            long j3 = 0;
            if (j > 0) {
                if (j2 > 0) {
                    j3 = elapsedRealtime - j2;
                    if (f > 0 && f != 1065353216) {
                        j3 = (long) (((float) j3) * f);
                    }
                }
                j += j3;
            }
        }
        ((RemoteControlClient) obj).setPlaybackState(MediaSessionCompatApi14.getRccStateFromState(i), j, f);
    }

    public static void setTransportControlFlags(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(getRccTransportControlFlagsFromActions(j));
    }

    public static void setOnPlaybackPositionUpdateListener(Object obj, Object obj2) {
        ((RemoteControlClient) obj).setPlaybackPositionUpdateListener((android.media.RemoteControlClient.OnPlaybackPositionUpdateListener) obj2);
    }

    static int getRccTransportControlFlagsFromActions(long j) {
        int rccTransportControlFlagsFromActions = MediaSessionCompatApi14.getRccTransportControlFlagsFromActions(j);
        return (j & 256) != 0 ? rccTransportControlFlagsFromActions | 256 : rccTransportControlFlagsFromActions;
    }
}
