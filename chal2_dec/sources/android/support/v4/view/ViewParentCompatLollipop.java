package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;

@TargetApi(21)
@RequiresApi(21)
class ViewParentCompatLollipop {
    private static final String TAG = "ViewParentCompat";

    ViewParentCompatLollipop() {
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (View view3) {
            view2 = TAG;
            i = new StringBuilder();
            i.append("ViewParent ");
            i.append(viewParent);
            i.append(" does not implement interface ");
            i.append("method onStartNestedScroll");
            Log.e(view2, i.toString(), view3);
            return null;
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
        try {
            viewParent.onNestedScrollAccepted(view, view2, i);
        } catch (View view3) {
            view2 = TAG;
            i = new StringBuilder();
            i.append("ViewParent ");
            i.append(viewParent);
            i.append(" does not implement interface ");
            i.append("method onNestedScrollAccepted");
            Log.e(view2, i.toString(), view3);
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        try {
            viewParent.onStopNestedScroll(view);
        } catch (View view2) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ViewParent ");
            stringBuilder.append(viewParent);
            stringBuilder.append(" does not implement interface ");
            stringBuilder.append("method onStopNestedScroll");
            Log.e(str, stringBuilder.toString(), view2);
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        try {
            viewParent.onNestedScroll(view, i, i2, i3, i4);
        } catch (View view2) {
            i = TAG;
            i2 = new StringBuilder();
            i2.append("ViewParent ");
            i2.append(viewParent);
            i2.append(" does not implement interface ");
            i2.append("method onNestedScroll");
            Log.e(i, i2.toString(), view2);
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        try {
            viewParent.onNestedPreScroll(view, i, i2, iArr);
        } catch (View view2) {
            i = TAG;
            i2 = new StringBuilder();
            i2.append("ViewParent ");
            i2.append(viewParent);
            i2.append(" does not implement interface ");
            i2.append("method onNestedPreScroll");
            Log.e(i, i2.toString(), view2);
        }
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (View view2) {
            f = TAG;
            f2 = new StringBuilder();
            f2.append("ViewParent ");
            f2.append(viewParent);
            f2.append(" does not implement interface ");
            f2.append("method onNestedFling");
            Log.e(f, f2.toString(), view2);
            return null;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (View view2) {
            f = TAG;
            f2 = new StringBuilder();
            f2.append("ViewParent ");
            f2.append(viewParent);
            f2.append(" does not implement interface ");
            f2.append("method onNestedPreFling");
            Log.e(f, f2.toString(), view2);
            return null;
        }
    }
}
