package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.widget.TextView;
import java.lang.reflect.Field;

@TargetApi(9)
@RequiresApi(9)
class TextViewCompatGingerbread {
    private static final int LINES = 1;
    private static final String LOG_TAG = "TextViewCompatGingerbread";
    private static Field sMaxModeField;
    private static boolean sMaxModeFieldFetched;
    private static Field sMaximumField;
    private static boolean sMaximumFieldFetched;
    private static Field sMinModeField;
    private static boolean sMinModeFieldFetched;
    private static Field sMinimumField;
    private static boolean sMinimumFieldFetched;

    TextViewCompatGingerbread() {
    }

    static int getMaxLines(TextView textView) {
        if (!sMaxModeFieldFetched) {
            sMaxModeField = retrieveField("mMaxMode");
            sMaxModeFieldFetched = true;
        }
        if (sMaxModeField != null && retrieveIntFromField(sMaxModeField, textView) == 1) {
            if (!sMaximumFieldFetched) {
                sMaximumField = retrieveField("mMaximum");
                sMaximumFieldFetched = true;
            }
            if (sMaximumField != null) {
                return retrieveIntFromField(sMaximumField, textView);
            }
        }
        return -1;
    }

    static int getMinLines(TextView textView) {
        if (!sMinModeFieldFetched) {
            sMinModeField = retrieveField("mMinMode");
            sMinModeFieldFetched = true;
        }
        if (sMinModeField != null && retrieveIntFromField(sMinModeField, textView) == 1) {
            if (!sMinimumFieldFetched) {
                sMinimumField = retrieveField("mMinimum");
                sMinimumFieldFetched = true;
            }
            if (sMinimumField != null) {
                return retrieveIntFromField(sMinimumField, textView);
            }
        }
        return -1;
    }

    private static java.lang.reflect.Field retrieveField(java.lang.String r4) {
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
        r0 = 0;
        r1 = android.widget.TextView.class;	 Catch:{ NoSuchFieldException -> 0x000c }
        r1 = r1.getDeclaredField(r4);	 Catch:{ NoSuchFieldException -> 0x000c }
        r0 = 1;
        r1.setAccessible(r0);	 Catch:{ NoSuchFieldException -> 0x000d }
        goto L_0x0028;
    L_0x000c:
        r1 = r0;
    L_0x000d:
        r0 = "TextViewCompatGingerbread";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Could not retrieve ";
        r2.append(r3);
        r2.append(r4);
        r4 = " field.";
        r2.append(r4);
        r4 = r2.toString();
        android.util.Log.e(r0, r4);
    L_0x0028:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.TextViewCompatGingerbread.retrieveField(java.lang.String):java.lang.reflect.Field");
    }

    private static int retrieveIntFromField(java.lang.reflect.Field r2, android.widget.TextView r3) {
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
        r3 = r2.getInt(r3);	 Catch:{ IllegalAccessException -> 0x0005 }
        return r3;
    L_0x0005:
        r3 = "TextViewCompatGingerbread";
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "Could not retrieve value of ";
        r0.append(r1);
        r2 = r2.getName();
        r0.append(r2);
        r2 = " field.";
        r0.append(r2);
        r2 = r0.toString();
        android.util.Log.d(r3, r2);
        r2 = -1;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.TextViewCompatGingerbread.retrieveIntFromField(java.lang.reflect.Field, android.widget.TextView):int");
    }

    static void setTextAppearance(TextView textView, int i) {
        textView.setTextAppearance(textView.getContext(), i);
    }

    static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        return textView.getCompoundDrawables();
    }
}
