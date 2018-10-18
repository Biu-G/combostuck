.class Landroid/support/v7/widget/helper/ItemTouchHelper$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .line 2316
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2314
    iput-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 2324
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->b:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2334
    iget-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2337
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2339
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2341
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->h:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2344
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2348
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->g:I

    if-ne v1, v2, :cond_2

    .line 2349
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->g:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2350
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2351
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2352
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->c:F

    .line 2353
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput p1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->d:F

    .line 2354
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->f:F

    iput v2, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->e:F

    .line 2359
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->h:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2360
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$a;->a:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    return-void
.end method
