package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.v4.content.IntentCompat;

public final class NavUtils {
    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    interface NavUtilsImpl {
        Intent getParentActivityIntent(Activity activity);

        String getParentActivityName(Context context, ActivityInfo activityInfo);

        void navigateUpTo(Activity activity, Intent intent);

        boolean shouldUpRecreateTask(Activity activity, Intent intent);
    }

    static class NavUtilsImplBase implements NavUtilsImpl {
        NavUtilsImplBase() {
        }

        public android.content.Intent getParentActivityIntent(android.app.Activity r4) {
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
	at jadx.api.JavaClass.getDefinitionPosition(JavaClass.java:193)
*/
            /*
            r3 = this;
            r3 = android.support.v4.app.NavUtils.getParentActivityName(r4);
            r0 = 0;
            if (r3 != 0) goto L_0x0008;
        L_0x0007:
            return r0;
        L_0x0008:
            r1 = new android.content.ComponentName;
            r1.<init>(r4, r3);
            r4 = android.support.v4.app.NavUtils.getParentActivityName(r4, r1);	 Catch:{ NameNotFoundException -> 0x0022 }
            if (r4 != 0) goto L_0x0018;	 Catch:{ NameNotFoundException -> 0x0022 }
        L_0x0013:
            r4 = android.support.v4.content.IntentCompat.makeMainActivity(r1);	 Catch:{ NameNotFoundException -> 0x0022 }
            goto L_0x0021;	 Catch:{ NameNotFoundException -> 0x0022 }
        L_0x0018:
            r4 = new android.content.Intent;	 Catch:{ NameNotFoundException -> 0x0022 }
            r4.<init>();	 Catch:{ NameNotFoundException -> 0x0022 }
            r4 = r4.setComponent(r1);	 Catch:{ NameNotFoundException -> 0x0022 }
        L_0x0021:
            return r4;
        L_0x0022:
            r4 = "NavUtils";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "getParentActivityIntent: bad parentActivityName '";
            r1.append(r2);
            r1.append(r3);
            r3 = "' in manifest";
            r1.append(r3);
            r3 = r1.toString();
            android.util.Log.e(r4, r3);
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.NavUtils.NavUtilsImplBase.getParentActivityIntent(android.app.Activity):android.content.Intent");
        }

        public boolean shouldUpRecreateTask(Activity activity, Intent intent) {
            String action = activity.getIntent().getAction();
            return (action == null || action.equals("android.intent.action.MAIN")) ? false : true;
        }

        public void navigateUpTo(Activity activity, Intent intent) {
            intent.addFlags(67108864);
            activity.startActivity(intent);
            activity.finish();
        }

        public String getParentActivityName(Context context, ActivityInfo activityInfo) {
            if (activityInfo.metaData == null) {
                return null;
            }
            String string = activityInfo.metaData.getString(NavUtils.PARENT_ACTIVITY);
            if (string == null) {
                return null;
            }
            if (string.charAt(null) == 46) {
                activityInfo = new StringBuilder();
                activityInfo.append(context.getPackageName());
                activityInfo.append(string);
                string = activityInfo.toString();
            }
            return string;
        }
    }

    static class NavUtilsImplJB extends NavUtilsImplBase {
        NavUtilsImplJB() {
        }

        public Intent getParentActivityIntent(Activity activity) {
            Intent parentActivityIntent = NavUtilsJB.getParentActivityIntent(activity);
            return parentActivityIntent == null ? superGetParentActivityIntent(activity) : parentActivityIntent;
        }

        Intent superGetParentActivityIntent(Activity activity) {
            return super.getParentActivityIntent(activity);
        }

        public boolean shouldUpRecreateTask(Activity activity, Intent intent) {
            return NavUtilsJB.shouldUpRecreateTask(activity, intent);
        }

        public void navigateUpTo(Activity activity, Intent intent) {
            NavUtilsJB.navigateUpTo(activity, intent);
        }

        public String getParentActivityName(Context context, ActivityInfo activityInfo) {
            String parentActivityName = NavUtilsJB.getParentActivityName(activityInfo);
            return parentActivityName == null ? super.getParentActivityName(context, activityInfo) : parentActivityName;
        }
    }

    static {
        if (VERSION.SDK_INT >= 16) {
            IMPL = new NavUtilsImplJB();
        } else {
            IMPL = new NavUtilsImplBase();
        }
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        return IMPL.shouldUpRecreateTask(activity, intent);
    }

    public static void navigateUpFromSameTask(Activity activity) {
        Intent parentActivityIntent = getParentActivityIntent(activity);
        if (parentActivityIntent == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Activity ");
            stringBuilder.append(activity.getClass().getSimpleName());
            stringBuilder.append(" does not have a parent activity name specified.");
            stringBuilder.append(" (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> ");
            stringBuilder.append(" element in your manifest?)");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        navigateUpTo(activity, parentActivityIntent);
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        IMPL.navigateUpTo(activity, intent);
    }

    public static Intent getParentActivityIntent(Activity activity) {
        return IMPL.getParentActivityIntent(activity);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> cls) throws NameNotFoundException {
        cls = getParentActivityName(context, new ComponentName(context, cls));
        if (cls == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(context, cls);
        if (getParentActivityName(context, componentName) == null) {
            context = IntentCompat.makeMainActivity(componentName);
        } else {
            context = new Intent().setComponent(componentName);
        }
        return context;
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) throws NameNotFoundException {
        String parentActivityName = getParentActivityName(context, componentName);
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), parentActivityName);
        if (getParentActivityName(context, componentName2) == null) {
            context = IntentCompat.makeMainActivity(componentName2);
        } else {
            context = new Intent().setComponent(componentName2);
        }
        return context;
    }

    @Nullable
    public static String getParentActivityName(Activity activity) {
        try {
            return getParentActivityName(activity, activity.getComponentName());
        } catch (Activity activity2) {
            throw new IllegalArgumentException(activity2);
        }
    }

    @Nullable
    public static String getParentActivityName(Context context, ComponentName componentName) throws NameNotFoundException {
        return IMPL.getParentActivityName(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }

    private NavUtils() {
    }
}
