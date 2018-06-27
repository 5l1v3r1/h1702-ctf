package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.support.annotation.RequiresApi;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import java.lang.reflect.Field;

@TargetApi(9)
@RequiresApi(9)
class ViewCompatBase {
    private static final String TAG = "ViewCompatBase";
    private static Field sMinHeightField;
    private static boolean sMinHeightFieldFetched;
    private static Field sMinWidthField;
    private static boolean sMinWidthFieldFetched;

    ViewCompatBase() {
    }

    static ColorStateList getBackgroundTintList(View view) {
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintList() : null;
    }

    static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    static Mode getBackgroundTintMode(View view) {
        return view instanceof TintableBackgroundView ? ((TintableBackgroundView) view).getSupportBackgroundTintMode() : null;
    }

    static void setBackgroundTintMode(View view, Mode mode) {
        if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintMode(mode);
        }
    }

    static boolean isLaidOut(View view) {
        return (view.getWidth() <= 0 || view.getHeight() <= null) ? null : true;
    }

    static int getMinimumWidth(android.view.View r3) {
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
        r0 = sMinWidthFieldFetched;
        if (r0 != 0) goto L_0x0016;
    L_0x0004:
        r0 = 1;
        r1 = android.view.View.class;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r2 = "mMinWidth";	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1 = r1.getDeclaredField(r2);	 Catch:{ NoSuchFieldException -> 0x0014 }
        sMinWidthField = r1;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1 = sMinWidthField;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1.setAccessible(r0);	 Catch:{ NoSuchFieldException -> 0x0014 }
    L_0x0014:
        sMinWidthFieldFetched = r0;
    L_0x0016:
        r0 = sMinWidthField;
        if (r0 == 0) goto L_0x0027;
    L_0x001a:
        r0 = sMinWidthField;	 Catch:{ Exception -> 0x0027 }
        r3 = r0.get(r3);	 Catch:{ Exception -> 0x0027 }
        r3 = (java.lang.Integer) r3;	 Catch:{ Exception -> 0x0027 }
        r3 = r3.intValue();	 Catch:{ Exception -> 0x0027 }
        return r3;
    L_0x0027:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewCompatBase.getMinimumWidth(android.view.View):int");
    }

    static int getMinimumHeight(android.view.View r3) {
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
        r0 = sMinHeightFieldFetched;
        if (r0 != 0) goto L_0x0016;
    L_0x0004:
        r0 = 1;
        r1 = android.view.View.class;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r2 = "mMinHeight";	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1 = r1.getDeclaredField(r2);	 Catch:{ NoSuchFieldException -> 0x0014 }
        sMinHeightField = r1;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1 = sMinHeightField;	 Catch:{ NoSuchFieldException -> 0x0014 }
        r1.setAccessible(r0);	 Catch:{ NoSuchFieldException -> 0x0014 }
    L_0x0014:
        sMinHeightFieldFetched = r0;
    L_0x0016:
        r0 = sMinHeightField;
        if (r0 == 0) goto L_0x0027;
    L_0x001a:
        r0 = sMinHeightField;	 Catch:{ Exception -> 0x0027 }
        r3 = r0.get(r3);	 Catch:{ Exception -> 0x0027 }
        r3 = (java.lang.Integer) r3;	 Catch:{ Exception -> 0x0027 }
        r3 = r3.intValue();	 Catch:{ Exception -> 0x0027 }
        return r3;
    L_0x0027:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewCompatBase.getMinimumHeight(android.view.View):int");
    }

    static boolean isAttachedToWindow(View view) {
        return view.getWindowToken() != null ? true : null;
    }

    static void offsetTopAndBottom(View view, int i) {
        int top = view.getTop();
        view.offsetTopAndBottom(i);
        if (i != 0) {
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                i = Math.abs(i);
                ((View) parent).invalidate(view.getLeft(), top - i, view.getRight(), (top + view.getHeight()) + i);
                return;
            }
            view.invalidate();
        }
    }

    static void offsetLeftAndRight(View view, int i) {
        int left = view.getLeft();
        view.offsetLeftAndRight(i);
        if (i != 0) {
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                i = Math.abs(i);
                ((View) parent).invalidate(left - i, view.getTop(), (left + view.getWidth()) + i, view.getBottom());
                return;
            }
            view.invalidate();
        }
    }

    static Display getDisplay(View view) {
        return isAttachedToWindow(view) ? ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay() : null;
    }
}
