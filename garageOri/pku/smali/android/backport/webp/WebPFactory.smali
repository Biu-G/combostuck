.class public final Landroid/backport/webp/WebPFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "webpbackport"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Landroid/backport/webp/WebPFactory;->a:Z

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available()Z
    .locals 1

    .line 31
    sget-boolean v0, Landroid/backport/webp/WebPFactory;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static decodeByteArray([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 42
    invoke-static {}, Landroid/backport/webp/WebPFactory;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/backport/webp/WebPFactory;->nativeDecodeByteArray([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 45
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 57
    invoke-static {}, Landroid/backport/webp/WebPFactory;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/backport/webp/WebPFactory;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 2

    .line 72
    invoke-static {}, Landroid/backport/webp/WebPFactory;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/backport/webp/WebPFactory;->nativeEncodeBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static native nativeDecodeByteArray([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeEncodeBitmap(Landroid/graphics/Bitmap;I)[B
.end method
