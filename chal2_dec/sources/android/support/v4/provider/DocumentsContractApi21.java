package android.support.v4.provider;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.util.ArrayList;

@TargetApi(21)
@RequiresApi(21)
class DocumentsContractApi21 {
    private static final String TAG = "DocumentFile";

    DocumentsContractApi21() {
    }

    public static Uri createFile(Context context, Uri uri, String str, String str2) {
        return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
    }

    public static Uri createDirectory(Context context, Uri uri, String str) {
        return createFile(context, uri, "vnd.android.document/directory", str);
    }

    public static Uri prepareTreeUri(Uri uri) {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    }

    public static Uri[] listFiles(Context context, Uri uri) {
        ContentResolver contentResolver = context.getContentResolver();
        Uri buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        context = new ArrayList();
        AutoCloseable autoCloseable = null;
        try {
            AutoCloseable query = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
            while (query.moveToNext()) {
                try {
                    context.add(DocumentsContract.buildDocumentUriUsingTree(uri, query.getString(0)));
                } catch (Exception e) {
                    uri = e;
                    autoCloseable = query;
                } catch (Throwable th) {
                    context = th;
                    autoCloseable = query;
                }
            }
            closeQuietly(query);
        } catch (Exception e2) {
            uri = e2;
            try {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Failed query: ");
                stringBuilder.append(uri);
                Log.w(str, stringBuilder.toString());
                closeQuietly(autoCloseable);
                return (Uri[]) context.toArray(new Uri[context.size()]);
            } catch (Throwable th2) {
                context = th2;
                closeQuietly(autoCloseable);
                throw context;
            }
        }
        return (Uri[]) context.toArray(new Uri[context.size()]);
    }

    public static Uri renameTo(Context context, Uri uri, String str) {
        return DocumentsContract.renameDocument(context.getContentResolver(), uri, str);
    }

    private static void closeQuietly(java.lang.AutoCloseable r0) {
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
        if (r0 == 0) goto L_0x0008;
    L_0x0002:
        r0.close();	 Catch:{ RuntimeException -> 0x0006, Exception -> 0x0008 }
        goto L_0x0008;
    L_0x0006:
        r0 = move-exception;
        throw r0;
    L_0x0008:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.DocumentsContractApi21.closeQuietly(java.lang.AutoCloseable):void");
    }
}
