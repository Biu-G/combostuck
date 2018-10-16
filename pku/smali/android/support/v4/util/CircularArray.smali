.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 49
    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 75
    iput v0, p0, Landroid/support/v4/util/CircularArray;->d:I

    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be <= 2^30"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 7

    .line 30
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v0, v0

    .line 31
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int v1, v0, v1

    shl-int/lit8 v2, v0, 0x1

    if-ltz v2, :cond_0

    .line 36
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v4, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/CircularArray;->b:I

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    .line 40
    iput v6, p0, Landroid/support/v4/util/CircularArray;->b:I

    .line 41
    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v2, v2, -0x1

    .line 42
    iput v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max array capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 84
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    .line 85
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aput-object p1, v0, v1

    .line 86
    iget p1, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne p1, v0, :cond_0

    .line 87
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->a()V

    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    aput-object p1, v0, v1

    .line 97
    iget p1, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/util/CircularArray;->c:I

    .line 98
    iget p1, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    if-ne p1, v0, :cond_0

    .line 99
    invoke-direct {p0}, Landroid/support/v4/util/CircularArray;->a()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v1, p1

    iget p1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 215
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aget-object v0, v0, v1

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 227
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 259
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 109
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    aget-object v0, v0, v1

    .line 113
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/CircularArray;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 114
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 124
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-eq v0, v1, :cond_0

    .line 127
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 129
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 130
    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    return-object v1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromEnd(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x0

    .line 189
    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ge p1, v1, :cond_1

    .line 190
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int/2addr v0, p1

    :cond_1
    move v1, v0

    .line 192
    :goto_0
    iget v2, p0, Landroid/support/v4/util/CircularArray;->c:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 193
    iget-object v2, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 197
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-lez p1, :cond_4

    .line 200
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    .line 201
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    sub-int/2addr v0, p1

    move p1, v0

    .line 202
    :goto_1
    iget v1, p0, Landroid/support/v4/util/CircularArray;->c:I

    if-ge p1, v1, :cond_3

    .line 203
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iput v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    :cond_4
    return-void

    .line 186
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public removeFromStart(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 155
    iget-object v0, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    array-length v0, v0

    .line 156
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_1

    .line 157
    iget v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v0, p1

    .line 159
    :cond_1
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 160
    iget-object v3, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 164
    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    add-int/2addr v1, v0

    iget v0, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularArray;->b:I

    if-lez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 168
    iget-object v1, p0, Landroid/support/v4/util/CircularArray;->a:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_3
    iput p1, p0, Landroid/support/v4/util/CircularArray;->b:I

    :cond_4
    return-void

    .line 153
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 251
    iget v0, p0, Landroid/support/v4/util/CircularArray;->c:I

    iget v1, p0, Landroid/support/v4/util/CircularArray;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularArray;->d:I

    and-int/2addr v0, v1

    return v0
.end method
