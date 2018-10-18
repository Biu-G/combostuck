.class public Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;,
        Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;
    }
.end annotation


# instance fields
.field private a:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;

.field private b:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->a:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;

    .line 27
    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->b:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;

    .line 28
    invoke-interface {p3}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080093

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    .line 29
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    invoke-interface {p3}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06018a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 30
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->d:I

    .line 31
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->e:I

    .line 32
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {p3}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060148

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 111
    check-cast p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    iget-object p1, p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    .line 112
    invoke-static {}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 37
    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 102
    instance-of p1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 11

    move-object v0, p0

    move-object v2, p1

    move-object v1, p3

    move v3, p4

    .line 58
    move-object v4, v1

    check-cast v4, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    iget-object v4, v4, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    .line 60
    instance-of v5, v1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    if-nez v5, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v3, v1

    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v5, v1

    mul-float v3, v3, v5

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    move v5, v1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 68
    iget-object v6, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    float-to-int v8, v3

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v6, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->e:I

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 73
    iget v7, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->e:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v5

    iget v8, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->d:I

    sub-int/2addr v7, v8

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v5

    .line 76
    iget v5, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->e:I

    add-int/2addr v5, v6

    .line 79
    iget-object v8, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v1, v0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v5, v3

    .line 82
    :goto_0
    invoke-static {}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 89
    check-cast p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    iget-object p1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    .line 90
    invoke-static {}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    :cond_0
    if-nez p2, :cond_1

    .line 94
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->b:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;->toggle(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->b:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;->toggle(Z)V

    :goto_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 47
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->a:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;->canBeSwiped(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->a:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;->onItemSwiped(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;->a:Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method
