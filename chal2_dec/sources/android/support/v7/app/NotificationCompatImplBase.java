package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.annotation.RequiresApi;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompatBase.Action;
import android.support.v7.appcompat.R;
import android.widget.RemoteViews;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

@TargetApi(9)
@RequiresApi(9)
class NotificationCompatImplBase {
    private static final int MAX_ACTION_BUTTONS = 3;
    static final int MAX_MEDIA_BUTTONS = 5;
    static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;

    public static float constrain(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    NotificationCompatImplBase() {
    }

    @TargetApi(11)
    @RequiresApi(11)
    public static <T extends Action> RemoteViews overrideContentViewMedia(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent, boolean z3) {
        RemoteViews generateContentViewMedia = generateContentViewMedia(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, i2, list, iArr, z2, pendingIntent, z3);
        notificationBuilderWithBuilderAccessor.getBuilder().setContent(generateContentViewMedia);
        if (z2) {
            notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
        }
        return generateContentViewMedia;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static <T extends Action> RemoteViews generateContentViewMedia(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, List<T> list, int[] iArr, boolean z2, PendingIntent pendingIntent, boolean z3) {
        int i3;
        int[] iArr2 = iArr;
        RemoteViews applyStandardTemplate = applyStandardTemplate(context, charSequence, charSequence2, charSequence3, i, 0, bitmap, charSequence4, z, j, i2, 0, z3 ? R.layout.notification_template_media_custom : R.layout.notification_template_media, true);
        int size = list.size();
        if (iArr2 == null) {
            i3 = 0;
        } else {
            i3 = Math.min(iArr2.length, 3);
        }
        applyStandardTemplate.removeAllViews(R.id.media_actions);
        if (i3 > 0) {
            for (int i4 = 0; i4 < i3; i4++) {
                if (i4 >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i4), Integer.valueOf(size - 1)}));
                }
                applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(context, (Action) list.get(iArr2[i4])));
            }
        }
        Context context2 = context;
        if (z2) {
            applyStandardTemplate.setViewVisibility(R.id.end_padder, 8);
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
            applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
            applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
        } else {
            applyStandardTemplate.setViewVisibility(R.id.end_padder, 0);
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
        }
        return applyStandardTemplate;
    }

    @TargetApi(16)
    @RequiresApi(16)
    public static <T extends Action> void overrideMediaBigContentView(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, int i3, List<T> list, boolean z2, PendingIntent pendingIntent, boolean z3) {
        Notification notification2 = notification;
        notification2.bigContentView = generateMediaBigView(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, i2, i3, list, z2, pendingIntent, z3);
        if (z2) {
            notification2.flags |= 2;
        }
    }

    @TargetApi(11)
    @RequiresApi(11)
    public static <T extends Action> RemoteViews generateMediaBigView(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, int i3, List<T> list, boolean z2, PendingIntent pendingIntent, boolean z3) {
        int min = Math.min(list.size(), 5);
        RemoteViews applyStandardTemplate = applyStandardTemplate(context, charSequence, charSequence2, charSequence3, i, 0, bitmap, charSequence4, z, j, i2, i3, getBigMediaLayoutResource(z3, min), false);
        applyStandardTemplate.removeAllViews(R.id.media_actions);
        if (min > 0) {
            for (int i4 = 0; i4 < min; i4++) {
                applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(context, (Action) list.get(i4)));
            }
        }
        Context context2 = context;
        if (z2) {
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
            applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", context.getResources().getInteger(R.integer.cancel_button_image_alpha));
            applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, pendingIntent);
        } else {
            applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
        }
        return applyStandardTemplate;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static RemoteViews generateMediaActionButton(Context context, Action action) {
        Object obj = action.getActionIntent() == null ? 1 : null;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.notification_media_action);
        remoteViews.setImageViewResource(R.id.action0, action.getIcon());
        if (obj == null) {
            remoteViews.setOnClickPendingIntent(R.id.action0, action.getActionIntent());
        }
        if (VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R.id.action0, action.getTitle());
        }
        return remoteViews;
    }

    @TargetApi(11)
    @RequiresApi(11)
    private static int getBigMediaLayoutResource(boolean z, int i) {
        if (i <= 3) {
            return z ? R.layout.notification_template_big_media_narrow_custom : R.layout.notification_template_big_media_narrow;
        }
        return z ? R.layout.notification_template_big_media_custom : R.layout.notification_template_big_media;
    }

    public static RemoteViews applyStandardTemplateWithActions(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, int i2, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i3, int i4, int i5, boolean z2, ArrayList<NotificationCompat.Action> arrayList) {
        charSequence = applyStandardTemplate(context, charSequence, charSequence2, charSequence3, i, i2, bitmap, charSequence4, z, j, i3, i4, i5, z2);
        charSequence.removeAllViews(R.id.actions);
        charSequence2 = null;
        if (arrayList != null) {
            charSequence3 = arrayList.size();
            if (charSequence3 > null) {
                if (charSequence3 > 3) {
                    charSequence3 = 3;
                }
                for (i = 0; i < charSequence3; i++) {
                    charSequence.addView(R.id.actions, generateActionButton(context, (NotificationCompat.Action) arrayList.get(i)));
                }
                context = true;
                if (context != null) {
                    charSequence2 = 8;
                }
                charSequence.setViewVisibility(R.id.actions, charSequence2);
                charSequence.setViewVisibility(R.id.action_divider, charSequence2);
                return charSequence;
            }
        }
        context = null;
        if (context != null) {
            charSequence2 = 8;
        }
        charSequence.setViewVisibility(R.id.actions, charSequence2);
        charSequence.setViewVisibility(R.id.action_divider, charSequence2);
        return charSequence;
    }

    private static RemoteViews generateActionButton(Context context, NotificationCompat.Action action) {
        int actionTombstoneLayoutResource;
        Object obj = action.actionIntent == null ? 1 : null;
        String packageName = context.getPackageName();
        if (obj != null) {
            actionTombstoneLayoutResource = getActionTombstoneLayoutResource();
        } else {
            actionTombstoneLayoutResource = getActionLayoutResource();
        }
        RemoteViews remoteViews = new RemoteViews(packageName, actionTombstoneLayoutResource);
        remoteViews.setImageViewBitmap(R.id.action_image, createColoredBitmap(context, action.getIcon(), context.getResources().getColor(R.color.notification_action_color_filter)));
        remoteViews.setTextViewText(R.id.action_text, action.title);
        if (obj == null) {
            remoteViews.setOnClickPendingIntent(R.id.action_container, action.actionIntent);
        }
        if (VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R.id.action_container, action.title);
        }
        return remoteViews;
    }

    private static Bitmap createColoredBitmap(Context context, int i, int i2) {
        return createColoredBitmap(context, i, i2, 0);
    }

    private static Bitmap createColoredBitmap(Context context, int i, int i2, int i3) {
        context = context.getResources().getDrawable(i);
        i = i3 == 0 ? context.getIntrinsicWidth() : i3;
        if (i3 == 0) {
            i3 = context.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i3, Config.ARGB_8888);
        context.setBounds(0, 0, i, i3);
        if (i2 != 0) {
            context.mutate().setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_IN));
        }
        context.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private static int getActionLayoutResource() {
        return R.layout.notification_action;
    }

    private static int getActionTombstoneLayoutResource() {
        return R.layout.notification_action_tombstone;
    }

    public static RemoteViews applyStandardTemplate(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, int i2, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i3, int i4, int i5, boolean z2) {
        Object obj;
        boolean z3;
        int i6;
        Object obj2;
        long j2;
        int i7;
        int i8;
        Context context2 = context;
        CharSequence charSequence5 = charSequence;
        CharSequence charSequence6 = charSequence2;
        CharSequence charSequence7 = charSequence3;
        int i9 = i;
        int i10 = i2;
        Bitmap bitmap2 = bitmap;
        CharSequence charSequence8 = charSequence4;
        long j3 = j;
        int i11 = i4;
        Resources resources = context.getResources();
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i5);
        Object obj3 = i3 < -1 ? 1 : null;
        if (VERSION.SDK_INT >= 16 && VERSION.SDK_INT < 21) {
            if (obj3 != null) {
                remoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg_low);
                remoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_low_bg);
            } else {
                remoteViews.setInt(R.id.notification_background, "setBackgroundResource", R.drawable.notification_bg);
                remoteViews.setInt(R.id.icon, "setBackgroundResource", R.drawable.notification_template_icon_bg);
            }
        }
        if (bitmap2 != null) {
            if (VERSION.SDK_INT >= 16) {
                remoteViews.setViewVisibility(R.id.icon, 0);
                remoteViews.setImageViewBitmap(R.id.icon, bitmap2);
            } else {
                remoteViews.setViewVisibility(R.id.icon, 8);
            }
            if (i10 != 0) {
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
                int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding) * 2);
                if (VERSION.SDK_INT >= 21) {
                    remoteViews.setImageViewBitmap(R.id.right_icon, createIconWithBackground(context2, i10, dimensionPixelSize, dimensionPixelSize2, i11));
                } else {
                    remoteViews.setImageViewBitmap(R.id.right_icon, createColoredBitmap(context2, i10, -1));
                }
                remoteViews.setViewVisibility(R.id.right_icon, 0);
            }
        } else if (i10 != 0) {
            remoteViews.setViewVisibility(R.id.icon, 0);
            if (VERSION.SDK_INT >= 21) {
                remoteViews.setImageViewBitmap(R.id.icon, createIconWithBackground(context2, i10, resources.getDimensionPixelSize(R.dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R.dimen.notification_big_circle_margin), resources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large), i11));
            } else {
                remoteViews.setImageViewBitmap(R.id.icon, createColoredBitmap(context2, i10, -1));
            }
        }
        if (charSequence5 != null) {
            remoteViews.setTextViewText(R.id.title, charSequence5);
        }
        if (charSequence6 != null) {
            remoteViews.setTextViewText(R.id.text, charSequence6);
            obj3 = 1;
        } else {
            obj3 = null;
        }
        boolean z4 = VERSION.SDK_INT < 21 && bitmap2 != null;
        if (charSequence7 != null) {
            remoteViews.setTextViewText(R.id.info, charSequence7);
            remoteViews.setViewVisibility(R.id.info, 0);
        } else if (i9 > 0) {
            if (i9 > resources.getInteger(R.integer.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(R.id.info, resources.getString(R.string.status_bar_notification_info_overflow));
            } else {
                remoteViews.setTextViewText(R.id.info, NumberFormat.getIntegerInstance().format((long) i9));
            }
            remoteViews.setViewVisibility(R.id.info, 0);
        } else {
            remoteViews.setViewVisibility(R.id.info, 8);
            obj = obj3;
            z3 = z4;
            if (charSequence8 != null || VERSION.SDK_INT < 16) {
                i6 = 8;
            } else {
                remoteViews.setTextViewText(R.id.text, charSequence8);
                if (charSequence6 != null) {
                    remoteViews.setTextViewText(R.id.text2, charSequence6);
                    remoteViews.setViewVisibility(R.id.text2, 0);
                    obj2 = 1;
                    i6 = 8;
                    if (obj2 != null && VERSION.SDK_INT >= 16) {
                        if (z2) {
                            remoteViews.setTextViewTextSize(R.id.text, 0, (float) resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                        }
                        remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
                    }
                    j2 = j;
                    if (j2 != 0) {
                        if (z || VERSION.SDK_INT < 16) {
                            z3 = true;
                            i7 = 0;
                            remoteViews.setViewVisibility(R.id.time, 0);
                            remoteViews.setLong(R.id.time, "setTime", j2);
                            remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
                            i8 = R.id.line3;
                            if (obj != null) {
                                i7 = i6;
                            }
                            remoteViews.setViewVisibility(i8, i7);
                            return remoteViews;
                        }
                        remoteViews.setViewVisibility(R.id.chronometer, 0);
                        remoteViews.setLong(R.id.chronometer, "setBase", j2 + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                        z3 = true;
                        remoteViews.setBoolean(R.id.chronometer, "setStarted", true);
                    }
                    i7 = 0;
                    if (z3) {
                    }
                    remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
                    i8 = R.id.line3;
                    if (obj != null) {
                        i7 = i6;
                    }
                    remoteViews.setViewVisibility(i8, i7);
                    return remoteViews;
                }
                i6 = 8;
                remoteViews.setViewVisibility(R.id.text2, 8);
            }
            obj2 = null;
            if (z2) {
                remoteViews.setTextViewTextSize(R.id.text, 0, (float) resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
            }
            remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
            j2 = j;
            if (j2 != 0) {
                if (z) {
                }
                z3 = true;
                i7 = 0;
                remoteViews.setViewVisibility(R.id.time, 0);
                remoteViews.setLong(R.id.time, "setTime", j2);
                if (z3) {
                }
                remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
                i8 = R.id.line3;
                if (obj != null) {
                    i7 = i6;
                }
                remoteViews.setViewVisibility(i8, i7);
                return remoteViews;
            }
            i7 = 0;
            if (z3) {
            }
            remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
            i8 = R.id.line3;
            if (obj != null) {
                i7 = i6;
            }
            remoteViews.setViewVisibility(i8, i7);
            return remoteViews;
        }
        obj = 1;
        z3 = true;
        if (charSequence8 != null) {
        }
        i6 = 8;
        obj2 = null;
        if (z2) {
            remoteViews.setTextViewTextSize(R.id.text, 0, (float) resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
        }
        remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
        j2 = j;
        if (j2 != 0) {
            if (z) {
            }
            z3 = true;
            i7 = 0;
            remoteViews.setViewVisibility(R.id.time, 0);
            remoteViews.setLong(R.id.time, "setTime", j2);
            if (z3) {
            }
            remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
            i8 = R.id.line3;
            if (obj != null) {
                i7 = i6;
            }
            remoteViews.setViewVisibility(i8, i7);
            return remoteViews;
        }
        i7 = 0;
        if (z3) {
        }
        remoteViews.setViewVisibility(R.id.right_side, z3 ? i7 : i6);
        i8 = R.id.line3;
        if (obj != null) {
            i7 = i6;
        }
        remoteViews.setViewVisibility(i8, i7);
        return remoteViews;
    }

    public static Bitmap createIconWithBackground(Context context, int i, int i2, int i3, int i4) {
        int i5 = R.drawable.notification_icon_background;
        if (i4 == 0) {
            i4 = 0;
        }
        i4 = createColoredBitmap(context, i5, i4, i2);
        Canvas canvas = new Canvas(i4);
        context = context.getResources().getDrawable(i).mutate();
        context.setFilterBitmap(1);
        i2 = (i2 - i3) / 2;
        i3 += i2;
        context.setBounds(i2, i2, i3, i3);
        context.setColorFilter(new PorterDuffColorFilter(-1, Mode.SRC_ATOP));
        context.draw(canvas);
        return i4;
    }

    public static void buildIntoRemoteViews(Context context, RemoteViews remoteViews, RemoteViews remoteViews2) {
        hideNormalContent(remoteViews);
        remoteViews.removeAllViews(R.id.notification_main_column);
        remoteViews.addView(R.id.notification_main_column, remoteViews2.clone());
        remoteViews.setViewVisibility(R.id.notification_main_column, 0);
        if (VERSION.SDK_INT >= 21) {
            remoteViews.setViewPadding(R.id.notification_main_column_container, 0, calculateTopPadding(context), 0, 0);
        }
    }

    private static void hideNormalContent(RemoteViews remoteViews) {
        remoteViews.setViewVisibility(R.id.title, 8);
        remoteViews.setViewVisibility(R.id.text2, 8);
        remoteViews.setViewVisibility(R.id.text, 8);
    }

    public static int calculateTopPadding(Context context) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.notification_top_pad);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
        context = (constrain(context.getResources().getConfiguration().fontScale, 1.0f, 1.3f) - 1065353216) / 0.29999995f;
        return Math.round(((1.0f - context) * ((float) dimensionPixelSize)) + (context * ((float) dimensionPixelSize2)));
    }
}
