.class Landroid/support/v7/widget/helper/ItemTouchHelper$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper$b;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/helper/ItemTouchHelper$b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$b;)V
    .locals 0

    .line 2411
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$b$1;->a:Landroid/support/v7/widget/helper/ItemTouchHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2414
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$b$1;->a:Landroid/support/v7/widget/helper/ItemTouchHelper$b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$b;->a(F)V

    return-void
.end method