package android.support.v4.widget;

import android.os.Build.VERSION;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

public final class PopupWindowCompat {
    static final PopupWindowImpl IMPL;

    interface PopupWindowImpl {
        boolean getOverlapAnchor(PopupWindow popupWindow);

        int getWindowLayoutType(PopupWindow popupWindow);

        void setOverlapAnchor(PopupWindow popupWindow, boolean z);

        void setWindowLayoutType(PopupWindow popupWindow, int i);

        void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3);
    }

    static class BasePopupWindowImpl implements PopupWindowImpl {
        private static Method sGetWindowLayoutTypeMethod;
        private static boolean sGetWindowLayoutTypeMethodAttempted;
        private static Method sSetWindowLayoutTypeMethod;
        private static boolean sSetWindowLayoutTypeMethodAttempted;

        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return false;
        }

        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        }

        BasePopupWindowImpl() {
        }

        public void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            if ((GravityCompat.getAbsoluteGravity(i3, ViewCompat.getLayoutDirection(view)) & 7) == 5) {
                i -= popupWindow.getWidth() - view.getWidth();
            }
            popupWindow.showAsDropDown(view, i, i2);
        }

        public void setWindowLayoutType(android.widget.PopupWindow r6, int r7) {
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
            r5 = sSetWindowLayoutTypeMethodAttempted;
            r0 = 0;
            r1 = 1;
            if (r5 != 0) goto L_0x001d;
        L_0x0006:
            r5 = android.widget.PopupWindow.class;	 Catch:{ Exception -> 0x001b }
            r2 = "setWindowLayoutType";	 Catch:{ Exception -> 0x001b }
            r3 = new java.lang.Class[r1];	 Catch:{ Exception -> 0x001b }
            r4 = java.lang.Integer.TYPE;	 Catch:{ Exception -> 0x001b }
            r3[r0] = r4;	 Catch:{ Exception -> 0x001b }
            r5 = r5.getDeclaredMethod(r2, r3);	 Catch:{ Exception -> 0x001b }
            sSetWindowLayoutTypeMethod = r5;	 Catch:{ Exception -> 0x001b }
            r5 = sSetWindowLayoutTypeMethod;	 Catch:{ Exception -> 0x001b }
            r5.setAccessible(r1);	 Catch:{ Exception -> 0x001b }
        L_0x001b:
            sSetWindowLayoutTypeMethodAttempted = r1;
        L_0x001d:
            r5 = sSetWindowLayoutTypeMethod;
            if (r5 == 0) goto L_0x002e;
        L_0x0021:
            r5 = sSetWindowLayoutTypeMethod;	 Catch:{ Exception -> 0x002e }
            r1 = new java.lang.Object[r1];	 Catch:{ Exception -> 0x002e }
            r7 = java.lang.Integer.valueOf(r7);	 Catch:{ Exception -> 0x002e }
            r1[r0] = r7;	 Catch:{ Exception -> 0x002e }
            r5.invoke(r6, r1);	 Catch:{ Exception -> 0x002e }
        L_0x002e:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.PopupWindowCompat.BasePopupWindowImpl.setWindowLayoutType(android.widget.PopupWindow, int):void");
        }

        public int getWindowLayoutType(android.widget.PopupWindow r5) {
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
            r4 = this;
            r4 = sGetWindowLayoutTypeMethodAttempted;
            r0 = 0;
            if (r4 != 0) goto L_0x0019;
        L_0x0005:
            r4 = 1;
            r1 = android.widget.PopupWindow.class;	 Catch:{ Exception -> 0x0017 }
            r2 = "getWindowLayoutType";	 Catch:{ Exception -> 0x0017 }
            r3 = new java.lang.Class[r0];	 Catch:{ Exception -> 0x0017 }
            r1 = r1.getDeclaredMethod(r2, r3);	 Catch:{ Exception -> 0x0017 }
            sGetWindowLayoutTypeMethod = r1;	 Catch:{ Exception -> 0x0017 }
            r1 = sGetWindowLayoutTypeMethod;	 Catch:{ Exception -> 0x0017 }
            r1.setAccessible(r4);	 Catch:{ Exception -> 0x0017 }
        L_0x0017:
            sGetWindowLayoutTypeMethodAttempted = r4;
        L_0x0019:
            r4 = sGetWindowLayoutTypeMethod;
            if (r4 == 0) goto L_0x002c;
        L_0x001d:
            r4 = sGetWindowLayoutTypeMethod;	 Catch:{ Exception -> 0x002c }
            r1 = new java.lang.Object[r0];	 Catch:{ Exception -> 0x002c }
            r4 = r4.invoke(r5, r1);	 Catch:{ Exception -> 0x002c }
            r4 = (java.lang.Integer) r4;	 Catch:{ Exception -> 0x002c }
            r4 = r4.intValue();	 Catch:{ Exception -> 0x002c }
            return r4;
        L_0x002c:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.PopupWindowCompat.BasePopupWindowImpl.getWindowLayoutType(android.widget.PopupWindow):int");
        }
    }

    static class KitKatPopupWindowImpl extends BasePopupWindowImpl {
        KitKatPopupWindowImpl() {
        }

        public void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            PopupWindowCompatKitKat.showAsDropDown(popupWindow, view, i, i2, i3);
        }
    }

    static class Api21PopupWindowImpl extends KitKatPopupWindowImpl {
        Api21PopupWindowImpl() {
        }

        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
            PopupWindowCompatApi21.setOverlapAnchor(popupWindow, z);
        }

        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi21.getOverlapAnchor(popupWindow);
        }
    }

    static class Api23PopupWindowImpl extends Api21PopupWindowImpl {
        Api23PopupWindowImpl() {
        }

        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
            PopupWindowCompatApi23.setOverlapAnchor(popupWindow, z);
        }

        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getOverlapAnchor(popupWindow);
        }

        public void setWindowLayoutType(PopupWindow popupWindow, int i) {
            PopupWindowCompatApi23.setWindowLayoutType(popupWindow, i);
        }

        public int getWindowLayoutType(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getWindowLayoutType(popupWindow);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 23) {
            IMPL = new Api23PopupWindowImpl();
        } else if (i >= 21) {
            IMPL = new Api21PopupWindowImpl();
        } else if (i >= 19) {
            IMPL = new KitKatPopupWindowImpl();
        } else {
            IMPL = new BasePopupWindowImpl();
        }
    }

    private PopupWindowCompat() {
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        IMPL.showAsDropDown(popupWindow, view, i, i2, i3);
    }

    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        IMPL.setOverlapAnchor(popupWindow, z);
    }

    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        return IMPL.getOverlapAnchor(popupWindow);
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int i) {
        IMPL.setWindowLayoutType(popupWindow, i);
    }

    public static int getWindowLayoutType(PopupWindow popupWindow) {
        return IMPL.getWindowLayoutType(popupWindow);
    }
}
