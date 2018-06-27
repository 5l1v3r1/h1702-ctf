package android.support.v4.print;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.Margins;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.InputStream;

@TargetApi(19)
@RequiresApi(19)
class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode = 2;
    final Context mContext;
    Options mDecodeOptions = null;
    protected boolean mIsMinMarginsHandlingCorrect = true;
    private final Object mLock = new Object();
    int mOrientation;
    protected boolean mPrintActivityRespectsOrientation = true;
    int mScaleMode = 2;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    PrintHelperKitkat(Context context) {
        this.mContext = context;
    }

    public void setScaleMode(int i) {
        this.mScaleMode = i;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void setColorMode(int i) {
        this.mColorMode = i;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getOrientation() {
        if (this.mOrientation == 0) {
            return 1;
        }
        return this.mOrientation;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    private static boolean isPortrait(Bitmap bitmap) {
        return bitmap.getWidth() <= bitmap.getHeight() ? true : null;
    }

    protected Builder copyAttributes(PrintAttributes printAttributes) {
        Builder minMargins = new Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        return minMargins;
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        if (bitmap != null) {
            MediaSize mediaSize;
            final int i = this.mScaleMode;
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            if (isPortrait(bitmap)) {
                mediaSize = MediaSize.UNKNOWN_PORTRAIT;
            } else {
                mediaSize = MediaSize.UNKNOWN_LANDSCAPE;
            }
            final String str2 = str;
            final Bitmap bitmap2 = bitmap;
            final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
            printManager.print(str, new PrintDocumentAdapter() {
                private PrintAttributes mAttributes;

                public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    this.mAttributes = printAttributes2;
                    layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
                }

                public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                    PrintHelperKitkat.this.writeBitmap(this.mAttributes, i, bitmap2, parcelFileDescriptor, cancellationSignal, writeResultCallback);
                }

                public void onFinish() {
                    if (onPrintFinishCallback2 != null) {
                        onPrintFinishCallback2.onFinish();
                    }
                }
            }, new Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
        }
    }

    private Matrix getMatrix(int i, int i2, RectF rectF, int i3) {
        Matrix matrix = new Matrix();
        i = (float) i;
        float width = rectF.width() / i;
        if (i3 == 2) {
            i3 = Math.max(width, rectF.height() / ((float) i2));
        } else {
            i3 = Math.min(width, rectF.height() / ((float) i2));
        }
        matrix.postScale(i3, i3);
        matrix.postTranslate((rectF.width() - (i * i3)) / 2.0f, (rectF.height() - (((float) i2) * i3)) / 1073741824);
        return matrix;
    }

    private void writeBitmap(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
        PrintAttributes printAttributes2;
        if (this.mIsMinMarginsHandlingCorrect) {
            printAttributes2 = printAttributes;
        } else {
            printAttributes2 = copyAttributes(printAttributes).setMinMargins(new Margins(0, 0, 0, 0)).build();
        }
        final CancellationSignal cancellationSignal2 = cancellationSignal;
        final Bitmap bitmap2 = bitmap;
        final PrintAttributes printAttributes3 = printAttributes;
        final int i2 = i;
        final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        final WriteResultCallback writeResultCallback2 = writeResultCallback;
        new AsyncTask<Void, Void, Throwable>() {
            protected java.lang.Throwable doInBackground(java.lang.Void... r9) {
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
                r8 = this;
                r9 = r2;	 Catch:{ Throwable -> 0x00ea }
                r9 = r9.isCanceled();	 Catch:{ Throwable -> 0x00ea }
                r0 = 0;	 Catch:{ Throwable -> 0x00ea }
                if (r9 == 0) goto L_0x000a;	 Catch:{ Throwable -> 0x00ea }
            L_0x0009:
                return r0;	 Catch:{ Throwable -> 0x00ea }
            L_0x000a:
                r9 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ Throwable -> 0x00ea }
                r1 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ Throwable -> 0x00ea }
                r1 = r1.mContext;	 Catch:{ Throwable -> 0x00ea }
                r2 = r3;	 Catch:{ Throwable -> 0x00ea }
                r9.<init>(r1, r2);	 Catch:{ Throwable -> 0x00ea }
                r1 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ Throwable -> 0x00ea }
                r2 = r4;	 Catch:{ Throwable -> 0x00ea }
                r3 = r3;	 Catch:{ Throwable -> 0x00ea }
                r3 = r3.getColorMode();	 Catch:{ Throwable -> 0x00ea }
                r1 = r1.convertBitmapForColorMode(r2, r3);	 Catch:{ Throwable -> 0x00ea }
                r2 = r2;	 Catch:{ Throwable -> 0x00ea }
                r2 = r2.isCanceled();	 Catch:{ Throwable -> 0x00ea }
                if (r2 == 0) goto L_0x002c;
            L_0x002b:
                return r0;
            L_0x002c:
                r2 = 1;
                r3 = r9.startPage(r2);	 Catch:{ all -> 0x00d5 }
                r4 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ all -> 0x00d5 }
                r4 = r4.mIsMinMarginsHandlingCorrect;	 Catch:{ all -> 0x00d5 }
                if (r4 == 0) goto L_0x0045;	 Catch:{ all -> 0x00d5 }
            L_0x0037:
                r2 = new android.graphics.RectF;	 Catch:{ all -> 0x00d5 }
                r4 = r3.getInfo();	 Catch:{ all -> 0x00d5 }
                r4 = r4.getContentRect();	 Catch:{ all -> 0x00d5 }
                r2.<init>(r4);	 Catch:{ all -> 0x00d5 }
                goto L_0x0068;	 Catch:{ all -> 0x00d5 }
            L_0x0045:
                r4 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ all -> 0x00d5 }
                r5 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ all -> 0x00d5 }
                r5 = r5.mContext;	 Catch:{ all -> 0x00d5 }
                r6 = r5;	 Catch:{ all -> 0x00d5 }
                r4.<init>(r5, r6);	 Catch:{ all -> 0x00d5 }
                r2 = r4.startPage(r2);	 Catch:{ all -> 0x00d5 }
                r5 = new android.graphics.RectF;	 Catch:{ all -> 0x00d5 }
                r6 = r2.getInfo();	 Catch:{ all -> 0x00d5 }
                r6 = r6.getContentRect();	 Catch:{ all -> 0x00d5 }
                r5.<init>(r6);	 Catch:{ all -> 0x00d5 }
                r4.finishPage(r2);	 Catch:{ all -> 0x00d5 }
                r4.close();	 Catch:{ all -> 0x00d5 }
                r2 = r5;	 Catch:{ all -> 0x00d5 }
            L_0x0068:
                r4 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ all -> 0x00d5 }
                r5 = r1.getWidth();	 Catch:{ all -> 0x00d5 }
                r6 = r1.getHeight();	 Catch:{ all -> 0x00d5 }
                r7 = r6;	 Catch:{ all -> 0x00d5 }
                r4 = r4.getMatrix(r5, r6, r2, r7);	 Catch:{ all -> 0x00d5 }
                r5 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ all -> 0x00d5 }
                r5 = r5.mIsMinMarginsHandlingCorrect;	 Catch:{ all -> 0x00d5 }
                if (r5 == 0) goto L_0x007f;	 Catch:{ all -> 0x00d5 }
            L_0x007e:
                goto L_0x008d;	 Catch:{ all -> 0x00d5 }
            L_0x007f:
                r5 = r2.left;	 Catch:{ all -> 0x00d5 }
                r6 = r2.top;	 Catch:{ all -> 0x00d5 }
                r4.postTranslate(r5, r6);	 Catch:{ all -> 0x00d5 }
                r5 = r3.getCanvas();	 Catch:{ all -> 0x00d5 }
                r5.clipRect(r2);	 Catch:{ all -> 0x00d5 }
            L_0x008d:
                r2 = r3.getCanvas();	 Catch:{ all -> 0x00d5 }
                r2.drawBitmap(r1, r4, r0);	 Catch:{ all -> 0x00d5 }
                r9.finishPage(r3);	 Catch:{ all -> 0x00d5 }
                r2 = r2;	 Catch:{ all -> 0x00d5 }
                r2 = r2.isCanceled();	 Catch:{ all -> 0x00d5 }
                if (r2 == 0) goto L_0x00b3;
            L_0x009f:
                r9.close();	 Catch:{ Throwable -> 0x00ea }
                r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                if (r9 == 0) goto L_0x00ab;
            L_0x00a6:
                r9 = r7;	 Catch:{ IOException -> 0x00ab }
                r9.close();	 Catch:{ IOException -> 0x00ab }
            L_0x00ab:
                r8 = r4;	 Catch:{ Throwable -> 0x00ea }
                if (r1 == r8) goto L_0x00b2;	 Catch:{ Throwable -> 0x00ea }
            L_0x00af:
                r1.recycle();	 Catch:{ Throwable -> 0x00ea }
            L_0x00b2:
                return r0;
            L_0x00b3:
                r2 = new java.io.FileOutputStream;	 Catch:{ all -> 0x00d5 }
                r3 = r7;	 Catch:{ all -> 0x00d5 }
                r3 = r3.getFileDescriptor();	 Catch:{ all -> 0x00d5 }
                r2.<init>(r3);	 Catch:{ all -> 0x00d5 }
                r9.writeTo(r2);	 Catch:{ all -> 0x00d5 }
                r9.close();	 Catch:{ Throwable -> 0x00ea }
                r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                if (r9 == 0) goto L_0x00cd;
            L_0x00c8:
                r9 = r7;	 Catch:{ IOException -> 0x00cd }
                r9.close();	 Catch:{ IOException -> 0x00cd }
            L_0x00cd:
                r8 = r4;	 Catch:{ Throwable -> 0x00ea }
                if (r1 == r8) goto L_0x00d4;	 Catch:{ Throwable -> 0x00ea }
            L_0x00d1:
                r1.recycle();	 Catch:{ Throwable -> 0x00ea }
            L_0x00d4:
                return r0;	 Catch:{ Throwable -> 0x00ea }
            L_0x00d5:
                r0 = move-exception;	 Catch:{ Throwable -> 0x00ea }
                r9.close();	 Catch:{ Throwable -> 0x00ea }
                r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                if (r9 == 0) goto L_0x00e2;
            L_0x00dd:
                r9 = r7;	 Catch:{ IOException -> 0x00e2 }
                r9.close();	 Catch:{ IOException -> 0x00e2 }
            L_0x00e2:
                r8 = r4;	 Catch:{ Throwable -> 0x00ea }
                if (r1 == r8) goto L_0x00e9;	 Catch:{ Throwable -> 0x00ea }
            L_0x00e6:
                r1.recycle();	 Catch:{ Throwable -> 0x00ea }
            L_0x00e9:
                throw r0;	 Catch:{ Throwable -> 0x00ea }
            L_0x00ea:
                r8 = move-exception;
                return r8;
                */
                throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelperKitkat.2.doInBackground(java.lang.Void[]):java.lang.Throwable");
            }

            protected void onPostExecute(Throwable th) {
                if (cancellationSignal2.isCanceled()) {
                    writeResultCallback2.onWriteCancelled();
                } else if (th == null) {
                    writeResultCallback2.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e(PrintHelperKitkat.LOG_TAG, "Error writing printed content", th);
                    writeResultCallback2.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        final int i = this.mScaleMode;
        final String str2 = str;
        final Uri uri2 = uri;
        final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
        PrintDocumentAdapter anonymousClass3 = new PrintDocumentAdapter() {
            private PrintAttributes mAttributes;
            Bitmap mBitmap = null;
            AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                synchronized (this) {
                    this.mAttributes = printAttributes2;
                }
                if (cancellationSignal.isCanceled() != null) {
                    layoutResultCallback.onLayoutCancelled();
                } else if (this.mBitmap != null) {
                    layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), true ^ printAttributes2.equals(printAttributes));
                } else {
                    final CancellationSignal cancellationSignal2 = cancellationSignal;
                    final PrintAttributes printAttributes3 = printAttributes2;
                    final PrintAttributes printAttributes4 = printAttributes;
                    final LayoutResultCallback layoutResultCallback2 = layoutResultCallback;
                    this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {
                        protected void onPreExecute() {
                            cancellationSignal2.setOnCancelListener(new OnCancelListener() {
                                public void onCancel() {
                                    AnonymousClass3.this.cancelLoad();
                                    AnonymousClass1.this.cancel(false);
                                }
                            });
                        }

                        protected android.graphics.Bitmap doInBackground(android.net.Uri... r2) {
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
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
                            /*
                            r1 = this;
                            r2 = android.support.v4.print.PrintHelperKitkat.AnonymousClass3.this;	 Catch:{ FileNotFoundException -> 0x000f }
                            r2 = android.support.v4.print.PrintHelperKitkat.this;	 Catch:{ FileNotFoundException -> 0x000f }
                            r1 = android.support.v4.print.PrintHelperKitkat.AnonymousClass3.this;	 Catch:{ FileNotFoundException -> 0x000f }
                            r1 = r3;	 Catch:{ FileNotFoundException -> 0x000f }
                            r0 = 3500; // 0xdac float:4.905E-42 double:1.729E-320;	 Catch:{ FileNotFoundException -> 0x000f }
                            r1 = r2.loadConstrainedBitmap(r1, r0);	 Catch:{ FileNotFoundException -> 0x000f }
                            return r1;
                        L_0x000f:
                            r1 = 0;
                            return r1;
                            */
                            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelperKitkat.3.1.doInBackground(android.net.Uri[]):android.graphics.Bitmap");
                        }

                        protected void onPostExecute(Bitmap bitmap) {
                            super.onPostExecute(bitmap);
                            if (bitmap != null && (!PrintHelperKitkat.this.mPrintActivityRespectsOrientation || PrintHelperKitkat.this.mOrientation == 0)) {
                                MediaSize mediaSize;
                                synchronized (this) {
                                    mediaSize = AnonymousClass3.this.mAttributes.getMediaSize();
                                }
                                if (!(mediaSize == null || mediaSize.isPortrait() == PrintHelperKitkat.isPortrait(bitmap))) {
                                    Matrix matrix = new Matrix();
                                    matrix.postRotate(90.0f);
                                    bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                }
                            }
                            AnonymousClass3.this.mBitmap = bitmap;
                            if (bitmap != null) {
                                layoutResultCallback2.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), true ^ printAttributes3.equals(printAttributes4));
                            } else {
                                layoutResultCallback2.onLayoutFailed(null);
                            }
                            AnonymousClass3.this.mLoadBitmap = null;
                        }

                        protected void onCancelled(Bitmap bitmap) {
                            layoutResultCallback2.onLayoutCancelled();
                            AnonymousClass3.this.mLoadBitmap = null;
                        }
                    }.execute(new Uri[null]);
                }
            }

            private void cancelLoad() {
                synchronized (PrintHelperKitkat.this.mLock) {
                    if (PrintHelperKitkat.this.mDecodeOptions != null) {
                        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                        PrintHelperKitkat.this.mDecodeOptions = null;
                    }
                }
            }

            public void onFinish() {
                super.onFinish();
                cancelLoad();
                if (this.mLoadBitmap != null) {
                    this.mLoadBitmap.cancel(true);
                }
                if (onPrintFinishCallback2 != null) {
                    onPrintFinishCallback2.onFinish();
                }
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                    this.mBitmap = null;
                }
            }

            public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                PrintHelperKitkat.this.writeBitmap(this.mAttributes, i, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
            }
        };
        PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
        onPrintFinishCallback = new Builder();
        onPrintFinishCallback.setColorMode(this.mColorMode);
        if (this.mOrientation != 1) {
            if (this.mOrientation != 0) {
                if (this.mOrientation == 2) {
                    onPrintFinishCallback.setMediaSize(MediaSize.UNKNOWN_PORTRAIT);
                }
                printManager.print(str, anonymousClass3, onPrintFinishCallback.build());
            }
        }
        onPrintFinishCallback.setMediaSize(MediaSize.UNKNOWN_LANDSCAPE);
        printManager.print(str, anonymousClass3, onPrintFinishCallback.build());
    }

    private Bitmap loadConstrainedBitmap(Uri uri, int i) throws FileNotFoundException {
        if (i > 0 && uri != null) {
            if (this.mContext != null) {
                Options options = new Options();
                options.inJustDecodeBounds = true;
                loadBitmap(uri, options);
                int i2 = options.outWidth;
                int i3 = options.outHeight;
                if (i2 > 0) {
                    if (i3 > 0) {
                        int max = Math.max(i2, i3);
                        int i4 = 1;
                        while (max > i) {
                            max >>>= 1;
                            i4 <<= 1;
                        }
                        if (i4 > 0) {
                            if (Math.min(i2, i3) / i4 > 0) {
                                synchronized (this.mLock) {
                                    this.mDecodeOptions = new Options();
                                    this.mDecodeOptions.inMutable = true;
                                    this.mDecodeOptions.inSampleSize = i4;
                                    options = this.mDecodeOptions;
                                }
                                try {
                                    uri = loadBitmap(uri, options);
                                    synchronized (this.mLock) {
                                        this.mDecodeOptions = null;
                                    }
                                    return uri;
                                } catch (Throwable th) {
                                    synchronized (this.mLock) {
                                        this.mDecodeOptions = null;
                                    }
                                }
                            }
                        }
                        return null;
                    }
                }
                return null;
            }
        }
        throw new IllegalArgumentException("bad argument to getScaledBitmap");
    }

    private Bitmap loadBitmap(Uri uri, Options options) throws FileNotFoundException {
        if (uri != null) {
            if (this.mContext != null) {
                InputStream inputStream = null;
                try {
                    InputStream openInputStream = this.mContext.getContentResolver().openInputStream(uri);
                    try {
                        uri = BitmapFactory.decodeStream(openInputStream, null, options);
                        if (openInputStream != null) {
                            try {
                                openInputStream.close();
                            } catch (Throwable e) {
                                Log.w(LOG_TAG, "close fail ", e);
                            }
                        }
                        return uri;
                    } catch (Throwable th) {
                        uri = th;
                        inputStream = openInputStream;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable e2) {
                                Log.w(LOG_TAG, "close fail ", e2);
                            }
                        }
                        throw uri;
                    }
                } catch (Throwable th2) {
                    uri = th2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw uri;
                }
            }
        }
        throw new IllegalArgumentException("bad argument to loadBitmap");
    }

    private Bitmap convertBitmapForColorMode(Bitmap bitmap, int i) {
        if (i != 1) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        i = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        i.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        i.setBitmap(null);
        return createBitmap;
    }
}
