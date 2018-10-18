package android.support.v4.print;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
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
import android.print.PrintDocumentInfo.Builder;
import android.print.PrintManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;

public final class PrintHelper
{
  @SuppressLint({"InlinedApi"})
  public static final int COLOR_MODE_COLOR = 2;
  @SuppressLint({"InlinedApi"})
  public static final int COLOR_MODE_MONOCHROME = 1;
  public static final int ORIENTATION_LANDSCAPE = 1;
  public static final int ORIENTATION_PORTRAIT = 2;
  public static final int SCALE_MODE_FILL = 2;
  public static final int SCALE_MODE_FIT = 1;
  static final boolean a;
  static final boolean b;
  final Context c;
  BitmapFactory.Options d = null;
  final Object e = new Object();
  int f = 2;
  int g = 2;
  int h = 1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool2 = false;
    if ((i >= 20) && (Build.VERSION.SDK_INT <= 23)) {
      bool1 = false;
    } else {
      bool1 = true;
    }
    a = bool1;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT != 23) {
      bool1 = true;
    }
    b = bool1;
  }
  
  public PrintHelper(@NonNull Context paramContext)
  {
    c = paramContext;
  }
  
  static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    if (paramInt != 1) {
      return paramBitmap;
    }
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    ColorMatrix localColorMatrix = new ColorMatrix();
    localColorMatrix.setSaturation(0.0F);
    localPaint.setColorFilter(new ColorMatrixColorFilter(localColorMatrix));
    localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
    localCanvas.setBitmap(null);
    return localBitmap;
  }
  
  /* Error */
  private Bitmap a(Uri paramUri, BitmapFactory.Options paramOptions)
    throws FileNotFoundException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +87 -> 88
    //   4: aload_0
    //   5: getfield 70	android/support/v4/print/PrintHelper:c	Landroid/content/Context;
    //   8: ifnull +80 -> 88
    //   11: aconst_null
    //   12: astore_3
    //   13: aload_0
    //   14: getfield 70	android/support/v4/print/PrintHelper:c	Landroid/content/Context;
    //   17: invokevirtual 133	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   20: aload_1
    //   21: invokevirtual 139	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   24: astore_1
    //   25: aload_1
    //   26: aconst_null
    //   27: aload_2
    //   28: invokestatic 145	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   31: astore_2
    //   32: aload_1
    //   33: ifnull +19 -> 52
    //   36: aload_1
    //   37: invokevirtual 150	java/io/InputStream:close	()V
    //   40: aload_2
    //   41: areturn
    //   42: astore_1
    //   43: ldc -104
    //   45: ldc -102
    //   47: aload_1
    //   48: invokestatic 160	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   51: pop
    //   52: aload_2
    //   53: areturn
    //   54: astore_3
    //   55: aload_1
    //   56: astore_2
    //   57: aload_3
    //   58: astore_1
    //   59: goto +6 -> 65
    //   62: astore_1
    //   63: aload_3
    //   64: astore_2
    //   65: aload_2
    //   66: ifnull +20 -> 86
    //   69: aload_2
    //   70: invokevirtual 150	java/io/InputStream:close	()V
    //   73: goto +13 -> 86
    //   76: astore_2
    //   77: ldc -104
    //   79: ldc -102
    //   81: aload_2
    //   82: invokestatic 160	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   85: pop
    //   86: aload_1
    //   87: athrow
    //   88: new 162	java/lang/IllegalArgumentException
    //   91: dup
    //   92: ldc -92
    //   94: invokespecial 167	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	PrintHelper
    //   0	98	1	paramUri	Uri
    //   0	98	2	paramOptions	BitmapFactory.Options
    //   12	1	3	localObject1	Object
    //   54	10	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   36	40	42	java/io/IOException
    //   25	32	54	finally
    //   13	25	62	finally
    //   69	73	76	java/io/IOException
  }
  
  static Matrix a(int paramInt1, int paramInt2, RectF paramRectF, int paramInt3)
  {
    Matrix localMatrix = new Matrix();
    float f1 = paramRectF.width();
    float f2 = paramInt1;
    f1 /= f2;
    if (paramInt3 == 2) {
      f1 = Math.max(f1, paramRectF.height() / paramInt2);
    } else {
      f1 = Math.min(f1, paramRectF.height() / paramInt2);
    }
    localMatrix.postScale(f1, f1);
    localMatrix.postTranslate((paramRectF.width() - f2 * f1) / 2.0F, (paramRectF.height() - paramInt2 * f1) / 2.0F);
    return localMatrix;
  }
  
  @RequiresApi(19)
  private static PrintAttributes.Builder a(PrintAttributes paramPrintAttributes)
  {
    PrintAttributes.Builder localBuilder = new PrintAttributes.Builder().setMediaSize(paramPrintAttributes.getMediaSize()).setResolution(paramPrintAttributes.getResolution()).setMinMargins(paramPrintAttributes.getMinMargins());
    if (paramPrintAttributes.getColorMode() != 0) {
      localBuilder.setColorMode(paramPrintAttributes.getColorMode());
    }
    if ((Build.VERSION.SDK_INT >= 23) && (paramPrintAttributes.getDuplexMode() != 0)) {
      localBuilder.setDuplexMode(paramPrintAttributes.getDuplexMode());
    }
    return localBuilder;
  }
  
  static boolean a(Bitmap paramBitmap)
  {
    return paramBitmap.getWidth() <= paramBitmap.getHeight();
  }
  
  public static boolean systemSupportsPrint()
  {
    return Build.VERSION.SDK_INT >= 19;
  }
  
  /* Error */
  Bitmap a(Uri arg1)
    throws FileNotFoundException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +219 -> 220
    //   4: aload_0
    //   5: getfield 70	android/support/v4/print/PrintHelper:c	Landroid/content/Context;
    //   8: ifnull +212 -> 220
    //   11: new 249	android/graphics/BitmapFactory$Options
    //   14: dup
    //   15: invokespecial 250	android/graphics/BitmapFactory$Options:<init>	()V
    //   18: astore 6
    //   20: aload 6
    //   22: iconst_1
    //   23: putfield 253	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   26: aload_0
    //   27: aload_1
    //   28: aload 6
    //   30: invokespecial 255	android/support/v4/print/PrintHelper:a	(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   33: pop
    //   34: aload 6
    //   36: getfield 258	android/graphics/BitmapFactory$Options:outWidth	I
    //   39: istore 4
    //   41: aload 6
    //   43: getfield 261	android/graphics/BitmapFactory$Options:outHeight	I
    //   46: istore 5
    //   48: iload 4
    //   50: ifle +168 -> 218
    //   53: iload 5
    //   55: ifgt +5 -> 60
    //   58: aconst_null
    //   59: areturn
    //   60: iload 4
    //   62: iload 5
    //   64: invokestatic 264	java/lang/Math:max	(II)I
    //   67: istore_3
    //   68: iconst_1
    //   69: istore_2
    //   70: iload_3
    //   71: sipush 3500
    //   74: if_icmple +14 -> 88
    //   77: iload_3
    //   78: iconst_1
    //   79: iushr
    //   80: istore_3
    //   81: iload_2
    //   82: iconst_1
    //   83: ishl
    //   84: istore_2
    //   85: goto -15 -> 70
    //   88: iload_2
    //   89: ifle +127 -> 216
    //   92: iload 4
    //   94: iload 5
    //   96: invokestatic 266	java/lang/Math:min	(II)I
    //   99: iload_2
    //   100: idiv
    //   101: ifgt +5 -> 106
    //   104: aconst_null
    //   105: areturn
    //   106: aload_0
    //   107: getfield 62	android/support/v4/print/PrintHelper:e	Ljava/lang/Object;
    //   110: astore 6
    //   112: aload 6
    //   114: monitorenter
    //   115: aload_0
    //   116: new 249	android/graphics/BitmapFactory$Options
    //   119: dup
    //   120: invokespecial 250	android/graphics/BitmapFactory$Options:<init>	()V
    //   123: putfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   126: aload_0
    //   127: getfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   130: iconst_1
    //   131: putfield 269	android/graphics/BitmapFactory$Options:inMutable	Z
    //   134: aload_0
    //   135: getfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   138: iload_2
    //   139: putfield 272	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   142: aload_0
    //   143: getfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   146: astore 7
    //   148: aload 6
    //   150: monitorexit
    //   151: aload_0
    //   152: aload_1
    //   153: aload 7
    //   155: invokespecial 255	android/support/v4/print/PrintHelper:a	(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   158: astore 6
    //   160: aload_0
    //   161: getfield 62	android/support/v4/print/PrintHelper:e	Ljava/lang/Object;
    //   164: astore_1
    //   165: aload_1
    //   166: monitorenter
    //   167: aload_0
    //   168: aconst_null
    //   169: putfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   172: aload_1
    //   173: monitorexit
    //   174: aload 6
    //   176: areturn
    //   177: astore 6
    //   179: aload_1
    //   180: monitorexit
    //   181: aload 6
    //   183: athrow
    //   184: astore 6
    //   186: aload_0
    //   187: getfield 62	android/support/v4/print/PrintHelper:e	Ljava/lang/Object;
    //   190: astore_1
    //   191: aload_1
    //   192: monitorenter
    //   193: aload_0
    //   194: aconst_null
    //   195: putfield 60	android/support/v4/print/PrintHelper:d	Landroid/graphics/BitmapFactory$Options;
    //   198: aload_1
    //   199: monitorexit
    //   200: aload 6
    //   202: athrow
    //   203: astore 6
    //   205: aload_1
    //   206: monitorexit
    //   207: aload 6
    //   209: athrow
    //   210: astore_1
    //   211: aload 6
    //   213: monitorexit
    //   214: aload_1
    //   215: athrow
    //   216: aconst_null
    //   217: areturn
    //   218: aconst_null
    //   219: areturn
    //   220: new 162	java/lang/IllegalArgumentException
    //   223: dup
    //   224: ldc_w 274
    //   227: invokespecial 167	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   230: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	this	PrintHelper
    //   69	70	2	i	int
    //   67	14	3	j	int
    //   39	54	4	k	int
    //   46	49	5	m	int
    //   18	157	6	localObject1	Object
    //   177	5	6	localObject2	Object
    //   184	17	6	localObject3	Object
    //   203	9	6	localObject4	Object
    //   146	8	7	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   167	174	177	finally
    //   179	181	177	finally
    //   151	160	184	finally
    //   193	200	203	finally
    //   205	207	203	finally
    //   115	151	210	finally
    //   211	214	210	finally
  }
  
  @RequiresApi(19)
  void a(final PrintAttributes paramPrintAttributes, final int paramInt, final Bitmap paramBitmap, final ParcelFileDescriptor paramParcelFileDescriptor, final CancellationSignal paramCancellationSignal, final PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
  {
    final PrintAttributes localPrintAttributes;
    if (b) {
      localPrintAttributes = paramPrintAttributes;
    } else {
      localPrintAttributes = a(paramPrintAttributes).setMinMargins(new PrintAttributes.Margins(0, 0, 0, 0)).build();
    }
    new AsyncTask()
    {
      /* Error */
      protected Throwable a(Void... paramAnonymousVarArgs)
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 30	android/support/v4/print/PrintHelper$1:a	Landroid/os/CancellationSignal;
        //   4: invokevirtual 57	android/os/CancellationSignal:isCanceled	()Z
        //   7: ifeq +5 -> 12
        //   10: aconst_null
        //   11: areturn
        //   12: new 59	android/print/pdf/PrintedPdfDocument
        //   15: dup
        //   16: aload_0
        //   17: getfield 28	android/support/v4/print/PrintHelper$1:h	Landroid/support/v4/print/PrintHelper;
        //   20: getfield 62	android/support/v4/print/PrintHelper:c	Landroid/content/Context;
        //   23: aload_0
        //   24: getfield 32	android/support/v4/print/PrintHelper$1:b	Landroid/print/PrintAttributes;
        //   27: invokespecial 65	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
        //   30: astore 4
        //   32: aload_0
        //   33: getfield 34	android/support/v4/print/PrintHelper$1:c	Landroid/graphics/Bitmap;
        //   36: aload_0
        //   37: getfield 32	android/support/v4/print/PrintHelper$1:b	Landroid/print/PrintAttributes;
        //   40: invokevirtual 71	android/print/PrintAttributes:getColorMode	()I
        //   43: invokestatic 74	android/support/v4/print/PrintHelper:a	(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
        //   46: astore_3
        //   47: aload_0
        //   48: getfield 30	android/support/v4/print/PrintHelper$1:a	Landroid/os/CancellationSignal;
        //   51: invokevirtual 57	android/os/CancellationSignal:isCanceled	()Z
        //   54: istore_2
        //   55: iload_2
        //   56: ifeq +5 -> 61
        //   59: aconst_null
        //   60: areturn
        //   61: aload 4
        //   63: iconst_1
        //   64: invokevirtual 78	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
        //   67: astore 5
        //   69: getstatic 81	android/support/v4/print/PrintHelper:b	Z
        //   72: ifeq +22 -> 94
        //   75: new 83	android/graphics/RectF
        //   78: dup
        //   79: aload 5
        //   81: invokevirtual 89	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
        //   84: invokevirtual 95	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
        //   87: invokespecial 98	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
        //   90: astore_1
        //   91: goto +59 -> 150
        //   94: new 59	android/print/pdf/PrintedPdfDocument
        //   97: dup
        //   98: aload_0
        //   99: getfield 28	android/support/v4/print/PrintHelper$1:h	Landroid/support/v4/print/PrintHelper;
        //   102: getfield 62	android/support/v4/print/PrintHelper:c	Landroid/content/Context;
        //   105: aload_0
        //   106: getfield 36	android/support/v4/print/PrintHelper$1:d	Landroid/print/PrintAttributes;
        //   109: invokespecial 65	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
        //   112: astore 6
        //   114: aload 6
        //   116: iconst_1
        //   117: invokevirtual 78	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
        //   120: astore 7
        //   122: new 83	android/graphics/RectF
        //   125: dup
        //   126: aload 7
        //   128: invokevirtual 89	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
        //   131: invokevirtual 95	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
        //   134: invokespecial 98	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
        //   137: astore_1
        //   138: aload 6
        //   140: aload 7
        //   142: invokevirtual 102	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
        //   145: aload 6
        //   147: invokevirtual 105	android/print/pdf/PrintedPdfDocument:close	()V
        //   150: aload_3
        //   151: invokevirtual 110	android/graphics/Bitmap:getWidth	()I
        //   154: aload_3
        //   155: invokevirtual 113	android/graphics/Bitmap:getHeight	()I
        //   158: aload_1
        //   159: aload_0
        //   160: getfield 38	android/support/v4/print/PrintHelper$1:e	I
        //   163: invokestatic 116	android/support/v4/print/PrintHelper:a	(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
        //   166: astore 6
        //   168: getstatic 81	android/support/v4/print/PrintHelper:b	Z
        //   171: ifeq +6 -> 177
        //   174: goto +27 -> 201
        //   177: aload 6
        //   179: aload_1
        //   180: getfield 120	android/graphics/RectF:left	F
        //   183: aload_1
        //   184: getfield 123	android/graphics/RectF:top	F
        //   187: invokevirtual 129	android/graphics/Matrix:postTranslate	(FF)Z
        //   190: pop
        //   191: aload 5
        //   193: invokevirtual 133	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
        //   196: aload_1
        //   197: invokevirtual 139	android/graphics/Canvas:clipRect	(Landroid/graphics/RectF;)Z
        //   200: pop
        //   201: aload 5
        //   203: invokevirtual 133	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
        //   206: aload_3
        //   207: aload 6
        //   209: aconst_null
        //   210: invokevirtual 143	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
        //   213: aload 4
        //   215: aload 5
        //   217: invokevirtual 102	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
        //   220: aload_0
        //   221: getfield 30	android/support/v4/print/PrintHelper$1:a	Landroid/os/CancellationSignal;
        //   224: invokevirtual 57	android/os/CancellationSignal:isCanceled	()Z
        //   227: istore_2
        //   228: iload_2
        //   229: ifeq +38 -> 267
        //   232: aload 4
        //   234: invokevirtual 105	android/print/pdf/PrintedPdfDocument:close	()V
        //   237: aload_0
        //   238: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   241: astore_1
        //   242: aload_1
        //   243: ifnull +10 -> 253
        //   246: aload_0
        //   247: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   250: invokevirtual 146	android/os/ParcelFileDescriptor:close	()V
        //   253: aload_3
        //   254: aload_0
        //   255: getfield 34	android/support/v4/print/PrintHelper$1:c	Landroid/graphics/Bitmap;
        //   258: if_acmpeq +7 -> 265
        //   261: aload_3
        //   262: invokevirtual 149	android/graphics/Bitmap:recycle	()V
        //   265: aconst_null
        //   266: areturn
        //   267: aload 4
        //   269: new 151	java/io/FileOutputStream
        //   272: dup
        //   273: aload_0
        //   274: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   277: invokevirtual 155	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
        //   280: invokespecial 158	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
        //   283: invokevirtual 162	android/print/pdf/PrintedPdfDocument:writeTo	(Ljava/io/OutputStream;)V
        //   286: aload 4
        //   288: invokevirtual 105	android/print/pdf/PrintedPdfDocument:close	()V
        //   291: aload_0
        //   292: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   295: astore_1
        //   296: aload_1
        //   297: ifnull +10 -> 307
        //   300: aload_0
        //   301: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   304: invokevirtual 146	android/os/ParcelFileDescriptor:close	()V
        //   307: aload_3
        //   308: aload_0
        //   309: getfield 34	android/support/v4/print/PrintHelper$1:c	Landroid/graphics/Bitmap;
        //   312: if_acmpeq +63 -> 375
        //   315: aload_3
        //   316: invokevirtual 149	android/graphics/Bitmap:recycle	()V
        //   319: aconst_null
        //   320: areturn
        //   321: astore_1
        //   322: aload 4
        //   324: invokevirtual 105	android/print/pdf/PrintedPdfDocument:close	()V
        //   327: aload_0
        //   328: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   331: astore 4
        //   333: aload 4
        //   335: ifnull +10 -> 345
        //   338: aload_0
        //   339: getfield 40	android/support/v4/print/PrintHelper$1:f	Landroid/os/ParcelFileDescriptor;
        //   342: invokevirtual 146	android/os/ParcelFileDescriptor:close	()V
        //   345: aload_3
        //   346: aload_0
        //   347: getfield 34	android/support/v4/print/PrintHelper$1:c	Landroid/graphics/Bitmap;
        //   350: if_acmpeq +7 -> 357
        //   353: aload_3
        //   354: invokevirtual 149	android/graphics/Bitmap:recycle	()V
        //   357: aload_1
        //   358: athrow
        //   359: astore_1
        //   360: aload_1
        //   361: areturn
        //   362: astore_1
        //   363: goto -110 -> 253
        //   366: astore_1
        //   367: goto -60 -> 307
        //   370: astore 4
        //   372: goto -27 -> 345
        //   375: aconst_null
        //   376: areturn
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	377	0	this	1
        //   0	377	1	paramAnonymousVarArgs	Void[]
        //   54	175	2	bool	boolean
        //   46	308	3	localBitmap	Bitmap
        //   30	304	4	localObject1	Object
        //   370	1	4	localIOException	java.io.IOException
        //   67	149	5	localPage1	android.graphics.pdf.PdfDocument.Page
        //   112	96	6	localObject2	Object
        //   120	21	7	localPage2	android.graphics.pdf.PdfDocument.Page
        // Exception table:
        //   from	to	target	type
        //   61	91	321	finally
        //   94	150	321	finally
        //   150	174	321	finally
        //   177	201	321	finally
        //   201	228	321	finally
        //   267	286	321	finally
        //   0	10	359	java/lang/Throwable
        //   12	55	359	java/lang/Throwable
        //   232	242	359	java/lang/Throwable
        //   246	253	359	java/lang/Throwable
        //   253	265	359	java/lang/Throwable
        //   286	296	359	java/lang/Throwable
        //   300	307	359	java/lang/Throwable
        //   307	319	359	java/lang/Throwable
        //   322	333	359	java/lang/Throwable
        //   338	345	359	java/lang/Throwable
        //   345	357	359	java/lang/Throwable
        //   357	359	359	java/lang/Throwable
        //   246	253	362	java/io/IOException
        //   300	307	366	java/io/IOException
        //   338	345	370	java/io/IOException
      }
      
      protected void a(Throwable paramAnonymousThrowable)
      {
        if (paramCancellationSignal.isCanceled())
        {
          paramWriteResultCallback.onWriteCancelled();
          return;
        }
        if (paramAnonymousThrowable == null)
        {
          paramWriteResultCallback.onWriteFinished(new PageRange[] { PageRange.ALL_PAGES });
          return;
        }
        Log.e("PrintHelper", "Error writing printed content", paramAnonymousThrowable);
        paramWriteResultCallback.onWriteFailed(null);
      }
    }.execute(new Void[0]);
  }
  
  public int getColorMode()
  {
    return g;
  }
  
  public int getOrientation()
  {
    if ((Build.VERSION.SDK_INT >= 19) && (h == 0)) {
      return 1;
    }
    return h;
  }
  
  public int getScaleMode()
  {
    return f;
  }
  
  public void printBitmap(@NonNull String paramString, @NonNull Bitmap paramBitmap)
  {
    printBitmap(paramString, paramBitmap, null);
  }
  
  public void printBitmap(@NonNull String paramString, @NonNull Bitmap paramBitmap, @Nullable OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      if (paramBitmap == null) {
        return;
      }
      PrintManager localPrintManager = (PrintManager)c.getSystemService("print");
      if (a(paramBitmap)) {
        localObject = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
      } else {
        localObject = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
      }
      Object localObject = new PrintAttributes.Builder().setMediaSize((PrintAttributes.MediaSize)localObject).setColorMode(g).build();
      localPrintManager.print(paramString, new a(paramString, f, paramBitmap, paramOnPrintFinishCallback), (PrintAttributes)localObject);
      return;
    }
  }
  
  public void printBitmap(@NonNull String paramString, @NonNull Uri paramUri)
    throws FileNotFoundException
  {
    printBitmap(paramString, paramUri, null);
  }
  
  public void printBitmap(@NonNull String paramString, @NonNull Uri paramUri, @Nullable OnPrintFinishCallback paramOnPrintFinishCallback)
    throws FileNotFoundException
  {
    if (Build.VERSION.SDK_INT < 19) {
      return;
    }
    paramUri = new b(paramString, paramUri, paramOnPrintFinishCallback, f);
    paramOnPrintFinishCallback = (PrintManager)c.getSystemService("print");
    PrintAttributes.Builder localBuilder = new PrintAttributes.Builder();
    localBuilder.setColorMode(g);
    if ((h != 1) && (h != 0))
    {
      if (h == 2) {
        localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
      }
    }
    else {
      localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
    }
    paramOnPrintFinishCallback.print(paramString, paramUri, localBuilder.build());
  }
  
  public void setColorMode(int paramInt)
  {
    g = paramInt;
  }
  
  public void setOrientation(int paramInt)
  {
    h = paramInt;
  }
  
  public void setScaleMode(int paramInt)
  {
    f = paramInt;
  }
  
  public static abstract interface OnPrintFinishCallback
  {
    public abstract void onFinish();
  }
  
  @RequiresApi(19)
  private class a
    extends PrintDocumentAdapter
  {
    private final String b;
    private final int c;
    private final Bitmap d;
    private final PrintHelper.OnPrintFinishCallback e;
    private PrintAttributes f;
    
    a(String paramString, int paramInt, Bitmap paramBitmap, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback)
    {
      b = paramString;
      c = paramInt;
      d = paramBitmap;
      e = paramOnPrintFinishCallback;
    }
    
    public void onFinish()
    {
      if (e != null) {
        e.onFinish();
      }
    }
    
    public void onLayout(PrintAttributes paramPrintAttributes1, PrintAttributes paramPrintAttributes2, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle)
    {
      f = paramPrintAttributes2;
      paramLayoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(b).setContentType(1).setPageCount(1).build(), paramPrintAttributes2.equals(paramPrintAttributes1) ^ true);
    }
    
    public void onWrite(PageRange[] paramArrayOfPageRange, ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
    {
      a(f, c, d, paramParcelFileDescriptor, paramCancellationSignal, paramWriteResultCallback);
    }
  }
  
  @RequiresApi(19)
  private class b
    extends PrintDocumentAdapter
  {
    final String a;
    final Uri b;
    final PrintHelper.OnPrintFinishCallback c;
    final int d;
    PrintAttributes e;
    AsyncTask<Uri, Boolean, Bitmap> f;
    Bitmap g;
    
    b(String paramString, Uri paramUri, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback, int paramInt)
    {
      a = paramString;
      b = paramUri;
      c = paramOnPrintFinishCallback;
      d = paramInt;
      g = null;
    }
    
    void a()
    {
      synchronized (e)
      {
        if (d != null)
        {
          if (Build.VERSION.SDK_INT < 24) {
            d.requestCancelDecode();
          }
          d = null;
        }
        return;
      }
    }
    
    public void onFinish()
    {
      super.onFinish();
      a();
      if (f != null) {
        f.cancel(true);
      }
      if (c != null) {
        c.onFinish();
      }
      if (g != null)
      {
        g.recycle();
        g = null;
      }
    }
    
    public void onLayout(final PrintAttributes paramPrintAttributes1, final PrintAttributes paramPrintAttributes2, final CancellationSignal paramCancellationSignal, final PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle)
    {
      try
      {
        e = paramPrintAttributes2;
        if (paramCancellationSignal.isCanceled())
        {
          paramLayoutResultCallback.onLayoutCancelled();
          return;
        }
        if (g != null)
        {
          paramLayoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(a).setContentType(1).setPageCount(1).build(), paramPrintAttributes2.equals(paramPrintAttributes1) ^ true);
          return;
        }
        f = new AsyncTask()
        {
          protected Bitmap a(Uri... paramAnonymousVarArgs)
          {
            try
            {
              paramAnonymousVarArgs = a(b);
              return paramAnonymousVarArgs;
            }
            catch (FileNotFoundException paramAnonymousVarArgs)
            {
              for (;;) {}
            }
            return null;
          }
          
          protected void a(Bitmap paramAnonymousBitmap)
          {
            super.onPostExecute(paramAnonymousBitmap);
            Object localObject = paramAnonymousBitmap;
            if (paramAnonymousBitmap != null) {
              if (PrintHelper.a)
              {
                localObject = paramAnonymousBitmap;
                if (h != 0) {}
              }
              else
              {
                try
                {
                  PrintAttributes.MediaSize localMediaSize = e.getMediaSize();
                  localObject = paramAnonymousBitmap;
                  if (localMediaSize != null)
                  {
                    localObject = paramAnonymousBitmap;
                    if (localMediaSize.isPortrait() != PrintHelper.a(paramAnonymousBitmap))
                    {
                      localObject = new Matrix();
                      ((Matrix)localObject).postRotate(90.0F);
                      localObject = Bitmap.createBitmap(paramAnonymousBitmap, 0, 0, paramAnonymousBitmap.getWidth(), paramAnonymousBitmap.getHeight(), (Matrix)localObject, true);
                    }
                  }
                }
                finally {}
              }
            }
            g = ((Bitmap)localObject);
            if (localObject != null)
            {
              paramAnonymousBitmap = new PrintDocumentInfo.Builder(a).setContentType(1).setPageCount(1).build();
              boolean bool = paramPrintAttributes2.equals(paramPrintAttributes1);
              paramLayoutResultCallback.onLayoutFinished(paramAnonymousBitmap, true ^ bool);
            }
            else
            {
              paramLayoutResultCallback.onLayoutFailed(null);
            }
            f = null;
          }
          
          protected void b(Bitmap paramAnonymousBitmap)
          {
            paramLayoutResultCallback.onLayoutCancelled();
            f = null;
          }
          
          protected void onPreExecute()
          {
            paramCancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener()
            {
              public void onCancel()
              {
                a();
                cancel(false);
              }
            });
          }
        }.execute(new Uri[0]);
        return;
      }
      finally {}
    }
    
    public void onWrite(PageRange[] paramArrayOfPageRange, ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
    {
      a(e, d, g, paramParcelFileDescriptor, paramCancellationSignal, paramWriteResultCallback);
    }
  }
}
