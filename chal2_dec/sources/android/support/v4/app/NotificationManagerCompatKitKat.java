package android.support.v4.app;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

@TargetApi(19)
@RequiresApi(19)
class NotificationManagerCompatKitKat {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";

    NotificationManagerCompatKitKat() {
    }

    public static boolean areNotificationsEnabled(android.content.Context r10) {
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
        r0 = "appops";
        r0 = r10.getSystemService(r0);
        r0 = (android.app.AppOpsManager) r0;
        r1 = r10.getApplicationInfo();
        r10 = r10.getApplicationContext();
        r10 = r10.getPackageName();
        r1 = r1.uid;
        r2 = 1;
        r3 = android.app.AppOpsManager.class;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = r3.getName();	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = java.lang.Class.forName(r3);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r4 = "checkOpNoThrow";	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r5 = 3;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6 = new java.lang.Class[r5];	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r7 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r8 = 0;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6[r8] = r7;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r7 = java.lang.Integer.TYPE;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6[r2] = r7;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r7 = java.lang.String.class;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r9 = 2;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6[r9] = r7;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r4 = r3.getMethod(r4, r6);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6 = "OP_POST_NOTIFICATION";	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = r3.getDeclaredField(r6);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r6 = java.lang.Integer.class;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = r3.get(r6);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = (java.lang.Integer) r3;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = r3.intValue();	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r5 = new java.lang.Object[r5];	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r5[r8] = r3;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r5[r2] = r1;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r5[r9] = r10;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r10 = r4.invoke(r0, r5);	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r10 = (java.lang.Integer) r10;	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        r10 = r10.intValue();	 Catch:{ ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069, ClassNotFoundException -> 0x0069 }
        if (r10 != 0) goto L_0x0067;
    L_0x0066:
        goto L_0x0068;
    L_0x0067:
        r2 = r8;
    L_0x0068:
        return r2;
    L_0x0069:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.NotificationManagerCompatKitKat.areNotificationsEnabled(android.content.Context):boolean");
    }
}
