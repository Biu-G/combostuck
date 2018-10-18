.class public Landroid/support/v7/util/AsyncListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/AsyncListUtil$ViewCallback;,
        Landroid/support/v7/util/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Landroid/support/v7/util/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

.field final e:Landroid/support/v7/util/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final f:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:[I

.field final i:[I

.field final j:[I

.field k:Z

.field l:I

.field m:I

.field n:I

.field final o:Landroid/util/SparseIntArray;

.field private p:I

.field private final q:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final r:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroid/support/v7/util/AsyncListUtil$DataCallback;Landroid/support/v7/util/AsyncListUtil$ViewCallback;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/util/AsyncListUtil$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/util/AsyncListUtil$ViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroid/support/v7/util/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroid/support/v7/util/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 64
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    .line 71
    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    .line 73
    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->m:I

    .line 74
    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->m:I

    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->n:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->o:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Landroid/support/v7/util/AsyncListUtil$1;

    invoke-direct {v0, p0}, Landroid/support/v7/util/AsyncListUtil$1;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->q:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    .line 293
    new-instance v0, Landroid/support/v7/util/AsyncListUtil$2;

    invoke-direct {v0, p0}, Landroid/support/v7/util/AsyncListUtil$2;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->r:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    .line 92
    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->a:Ljava/lang/Class;

    .line 93
    iput p2, p0, Landroid/support/v7/util/AsyncListUtil;->b:I

    .line 94
    iput-object p3, p0, Landroid/support/v7/util/AsyncListUtil;->c:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    .line 95
    iput-object p4, p0, Landroid/support/v7/util/AsyncListUtil;->d:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    .line 97
    new-instance p1, Landroid/support/v7/util/TileList;

    iget p2, p0, Landroid/support/v7/util/AsyncListUtil;->b:I

    invoke-direct {p1, p2}, Landroid/support/v7/util/TileList;-><init>(I)V

    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->e:Landroid/support/v7/util/TileList;

    .line 99
    new-instance p1, Landroid/support/v7/util/a;

    invoke-direct {p1}, Landroid/support/v7/util/a;-><init>()V

    .line 100
    iget-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->q:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    invoke-interface {p1, p2}, Landroid/support/v7/util/ThreadUtil;->a(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->f:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    .line 101
    iget-object p2, p0, Landroid/support/v7/util/AsyncListUtil;->r:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, p2}, Landroid/support/v7/util/ThreadUtil;->a(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    .line 103
    invoke-virtual {p0}, Landroid/support/v7/util/AsyncListUtil;->refresh()V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 107
    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->n:I

    iget v1, p0, Landroid/support/v7/util/AsyncListUtil;->m:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 10

    .line 179
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->d:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v0, v2, :cond_7

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v0, v0, v1

    if-gez v0, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v0, v0, v3

    iget v2, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    if-lt v0, v2, :cond_1

    return-void

    .line 188
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/util/AsyncListUtil;->k:Z

    if-nez v0, :cond_2

    .line 189
    iput v1, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    aget v2, v2, v3

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v2, v2, v3

    if-le v0, v2, :cond_3

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_4

    .line 194
    iput v3, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    aget v2, v2, v1

    if-le v0, v2, :cond_6

    const/4 v0, 0x2

    .line 196
    iput v0, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    goto :goto_1

    .line 192
    :cond_5
    :goto_0
    iput v1, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    .line 199
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v2, v2, v1

    aput v2, v0, v1

    .line 200
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->i:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v2, v2, v3

    aput v2, v0, v3

    .line 202
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->d:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    iget v5, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 203
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v2, v2, v1

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    aget v4, v4, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v2, v2, v3

    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    aget v4, v4, v3

    iget v5, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    sub-int/2addr v5, v3

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v3

    .line 207
    iget-object v4, p0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v5, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->h:[I

    aget v6, v0, v3

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    aget v7, v0, v1

    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->j:[I

    aget v8, v0, v3

    iget v9, p0, Landroid/support/v7/util/AsyncListUtil;->p:I

    invoke-interface/range {v4 .. v9}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 155
    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    if-ge p1, v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->e:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/TileList;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil;->o:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within 0 and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/support/v7/util/AsyncListUtil;->l:I

    return v0
.end method

.method public onRangeChanged()V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/AsyncListUtil;->a()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroid/support/v7/util/AsyncListUtil;->k:Z

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget v1, p0, Landroid/support/v7/util/AsyncListUtil;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/util/AsyncListUtil;->n:I

    invoke-interface {v0, v1}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    return-void
.end method
