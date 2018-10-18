.class Lcn/edu/pku/pkurunner/MainActivity$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/MainActivity;->b(Lcn/edu/pku/pkurunner/Model/Weather;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;II)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$2;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity$2;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-static {p2}, Lcn/edu/pku/pkurunner/MainActivity;->a(Lcn/edu/pku/pkurunner/MainActivity;)Landroid/support/design/widget/NavigationView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v0, 0x7f0900cd

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 246
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity$2;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 242
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/MainActivity$2;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
