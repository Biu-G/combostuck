.class Lcom/bumptech/glide/load/engine/bitmap_recycle/b$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/c<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;
    .locals 1

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b$b;)V

    return-object v0
.end method

.method a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$b;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/f;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;

    .line 69
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/f;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b$b;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/b$a;

    move-result-object v0

    return-object v0
.end method
