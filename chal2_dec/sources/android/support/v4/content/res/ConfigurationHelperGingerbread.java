package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@TargetApi(9)
@RequiresApi(9)
class ConfigurationHelperGingerbread {
    ConfigurationHelperGingerbread() {
    }

    static int getScreenHeightDp(@NonNull Resources resources) {
        resources = resources.getDisplayMetrics();
        return (int) (((float) resources.heightPixels) / resources.density);
    }

    static int getScreenWidthDp(@NonNull Resources resources) {
        resources = resources.getDisplayMetrics();
        return (int) (((float) resources.widthPixels) / resources.density);
    }

    static int getSmallestScreenWidthDp(@NonNull Resources resources) {
        return Math.min(getScreenWidthDp(resources), getScreenHeightDp(resources));
    }

    static int getDensityDpi(@NonNull Resources resources) {
        return resources.getDisplayMetrics().densityDpi;
    }
}
