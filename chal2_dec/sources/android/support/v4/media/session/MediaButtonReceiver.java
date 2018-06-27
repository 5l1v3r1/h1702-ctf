package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

public class MediaButtonReceiver extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent2.setPackage(context.getPackageName());
        PackageManager packageManager = context.getPackageManager();
        List queryIntentServices = packageManager.queryIntentServices(intent2, 0);
        if (queryIntentServices.isEmpty()) {
            intent2.setAction(MediaBrowserServiceCompat.SERVICE_INTERFACE);
            queryIntentServices = packageManager.queryIntentServices(intent2, 0);
        }
        if (queryIntentServices.isEmpty()) {
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or a media browser service implementation");
        } else if (queryIntentServices.size() != 1) {
            intent = new StringBuilder();
            intent.append("Expected 1 Service that handles ");
            intent.append(intent2.getAction());
            intent.append(", found ");
            intent.append(queryIntentServices.size());
            throw new IllegalStateException(intent.toString());
        } else {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentServices.get(0);
            intent.setComponent(new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name));
            context.startService(intent);
        }
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (!(mediaSessionCompat == null || intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()))) {
            if (intent.hasExtra("android.intent.extra.KEY_EVENT")) {
                KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                mediaSessionCompat.getController().dispatchMediaButtonEvent(keyEvent);
                return keyEvent;
            }
        }
        return null;
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent != null) {
            return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j);
        }
        Log.w(TAG, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
        return null;
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j) {
        if (componentName == null) {
            Log.w(TAG, "The component name of media button receiver should be provided.");
            return null;
        }
        int toKeyCode = PlaybackStateCompat.toKeyCode(j);
        if (toKeyCode == 0) {
            context = TAG;
            componentName = new StringBuilder();
            componentName.append("Cannot build a media button pending intent with the given action: ");
            componentName.append(j);
            Log.w(context, componentName.toString());
            return null;
        }
        j = new Intent("android.intent.action.MEDIA_BUTTON");
        j.setComponent(componentName);
        j.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, toKeyCode));
        return PendingIntent.getBroadcast(context, toKeyCode, j, 0);
    }

    static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        context = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (context.size() == 1) {
            ResolveInfo resolveInfo = (ResolveInfo) context.get(0);
            return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }
        if (context.size() > 1) {
            Log.w(TAG, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        }
        return null;
    }
}
