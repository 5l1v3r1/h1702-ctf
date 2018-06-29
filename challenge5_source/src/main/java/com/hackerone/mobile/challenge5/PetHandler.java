package com.hackerone.mobile.challenge5;

import android.webkit.JavascriptInterface;

public class PetHandler {
    public native byte[] censorCats(byte[] bArr);

    public native byte[] censorDogs(int i, String str);

    public native long getSomething();

    @JavascriptInterface
    public String toString() {
        return "Pets :)";
    }

    @android.webkit.JavascriptInterface
    public java.lang.String censorMyCats(java.lang.String r7) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JavaClass.getDefinitionPosition(JavaClass.java:193)
*/
        /*
        r6 = this;
        r0 = 0;
        r1 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x003d }
        r1.<init>(r7);	 Catch:{ JSONException -> 0x003d }
        r7 = r1.length();	 Catch:{ JSONException -> 0x003d }
        r7 = new byte[r7];	 Catch:{ JSONException -> 0x003d }
        r2 = 0;	 Catch:{ JSONException -> 0x003d }
    L_0x000d:
        r3 = r1.length();	 Catch:{ JSONException -> 0x003d }
        if (r2 >= r3) goto L_0x002e;	 Catch:{ JSONException -> 0x003d }
    L_0x0013:
        r3 = r1.getInt(r2);	 Catch:{ JSONException -> 0x003d }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ JSONException -> 0x003d }
        r4 = r3.intValue();	 Catch:{ JSONException -> 0x003d }
        r5 = 255; // 0xff float:3.57E-43 double:1.26E-321;	 Catch:{ JSONException -> 0x003d }
        if (r4 <= r5) goto L_0x0024;	 Catch:{ JSONException -> 0x003d }
    L_0x0023:
        return r0;	 Catch:{ JSONException -> 0x003d }
    L_0x0024:
        r3 = r3.intValue();	 Catch:{ JSONException -> 0x003d }
        r3 = (byte) r3;	 Catch:{ JSONException -> 0x003d }
        r7[r2] = r3;	 Catch:{ JSONException -> 0x003d }
        r2 = r2 + 1;
        goto L_0x000d;
    L_0x002e:
        r1 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x003c }
        r6 = r6.censorCats(r7);	 Catch:{ JSONException -> 0x003c }
        r1.<init>(r6);	 Catch:{ JSONException -> 0x003c }
        r6 = r1.toString();	 Catch:{ JSONException -> 0x003d }
        return r6;
    L_0x003c:
        return r0;
    L_0x003d:
        r6 = move-exception;
        r6.printStackTrace();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hackerone.mobile.challenge5.PetHandler.censorMyCats(java.lang.String):java.lang.String");
    }

    @android.webkit.JavascriptInterface
    public java.lang.String censorMyDogs(int r1, java.lang.String r2) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JavaClass.getDefinitionPosition(JavaClass.java:193)
*/
        /*
        r0 = this;
        r0 = r0.censorDogs(r1, r2);
        r1 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x000e }
        r1.<init>(r0);	 Catch:{ JSONException -> 0x000e }
        r0 = r1.toString();
        return r0;
    L_0x000e:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hackerone.mobile.challenge5.PetHandler.censorMyDogs(int, java.lang.String):java.lang.String");
    }

    @JavascriptInterface
    public String getMySomething() {
        return String.valueOf(getSomething());
    }
}
