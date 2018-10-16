.class public final Lcn/edu/pku/pkurunner/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Lcn/edu/pku/pkurunner/GlideOptions;

.field private static b:Lcn/edu/pku/pkurunner/GlideOptions;

.field private static c:Lcn/edu/pku/pkurunner/GlideOptions;

.field private static d:Lcn/edu/pku/pkurunner/GlideOptions;

.field private static e:Lcn/edu/pku/pkurunner/GlideOptions;

.field private static f:Lcn/edu/pku/pkurunner/GlideOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 177
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->c:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 179
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->centerCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->c:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 181
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->c:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 164
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->b:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 166
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->centerInside()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->b:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 168
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->b:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 190
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->d:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 192
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->circleCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->d:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 194
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->d:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->decode(Ljava/lang/Class;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 261
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 288
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 279
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->encodeQuality(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 105
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->error(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->a:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 153
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->fitCenter()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->a:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 155
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->a:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 243
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 252
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->frame(J)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 297
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->f:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 299
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->dontAnimate()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->f:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 301
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->f:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 212
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->e:Lcn/edu/pku/pkurunner/GlideOptions;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    .line 214
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->dontTransform()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->e:Lcn/edu/pku/pkurunner/GlideOptions;

    .line 216
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/GlideOptions;->e:Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 133
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->override(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 124
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->override(II)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 87
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->placeholder(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 78
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 142
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->sizeMultiplier(F)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 114
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->skipMemoryCache(Z)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 270
    new-instance v0, Lcn/edu/pku/pkurunner/GlideOptions;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/GlideOptions;->timeout(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Lcom/bumptech/glide/request/RequestOptions;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 604
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final autoClone()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 616
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->autoClone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerCrop()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 503
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->centerCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerInside()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 531
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->centerInside()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final circleCrop()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 545
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->circleCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 426
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->clone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->clone()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Ljava/lang/Class;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 440
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->decode(Ljava/lang/Class;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final disallowHardwareConfig()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 475
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->disallowHardwareConfig()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 336
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final dontAnimate()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 597
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->dontAnimate()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransform()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 590
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->dontTransform()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 482
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 447
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeQuality(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 454
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->encodeQuality(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final error(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 378
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->error(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final fallback(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 371
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 364
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->fallback(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final fitCenter()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 517
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->fitCenter()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final format(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 468
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final frame(J)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 461
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/GlideOptions;->frame(J)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final lock()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 610
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->lock()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final onlyRetrieveFromCache(Z)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 329
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->onlyRetrieveFromCache(Z)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final optionalCenterCrop()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 496
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalCenterCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterInside()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 524
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalCenterInside()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCircleCrop()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 538
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalCircleCrop()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalFitCenter()Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 510
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalFitCenter()Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 568
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 576
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final override(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 413
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final override(II)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 406
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->override(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/GlideOptions;->override(II)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final placeholder(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 357
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 350
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->placeholder(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final priority(Lcom/bumptech/glide/Priority;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 343
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 433
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 420
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final sizeMultiplier(F)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 308
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->sizeMultiplier(F)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final skipMemoryCache(Z)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 399
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->skipMemoryCache(Z)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final theme(Landroid/content/res/Resources$Theme;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 392
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(I)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 489
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->timeout(I)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public final transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .line 583
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcn/edu/pku/pkurunner/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 561
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final useAnimationPool(Z)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 322
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->useAnimationPool(Z)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final useUnlimitedSourceGeneratorsPool(Z)Lcn/edu/pku/pkurunner/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 315
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcn/edu/pku/pkurunner/GlideOptions;

    move-result-object p1

    return-object p1
.end method
