.class public Landroid/support/v7/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# instance fields
.field final a:Landroid/support/v7/util/ListUpdateCallback;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 1
    .param p1    # Landroid/support/v7/util/ListUpdateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    .line 43
    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->a:Landroid/support/v7/util/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 4

    .line 56
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->a:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    iget-object v3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->a:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->a:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    :goto_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 3

    .line 110
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int v0, p1, p2

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    if-ne v2, p3, :cond_0

    .line 114
    iget p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget p3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    add-int/2addr p2, p3

    .line 115
    iget p3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    .line 116
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 120
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    .line 121
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    .line 122
    iput-object p3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->e:Ljava/lang/Object;

    .line 123
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    return-void
.end method

.method public onInserted(II)V
    .locals 3

    .line 76
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    .line 78
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    .line 79
    iget p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 83
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    .line 84
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    .line 85
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 105
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->a:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    .line 90
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    .line 92
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    .line 93
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 97
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->c:I

    .line 98
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->d:I

    .line 99
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->b:I

    return-void
.end method