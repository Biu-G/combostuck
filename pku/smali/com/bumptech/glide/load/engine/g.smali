.class Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f$a;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/g$b;,
        Lcom/bumptech/glide/load/engine/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f$a<",
        "TR;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/g$a;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private final e:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/g$a;

.field private final g:Lcom/bumptech/glide/load/engine/h;

.field private final h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final i:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final j:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final k:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private l:Lcom/bumptech/glide/load/Key;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private r:Lcom/bumptech/glide/load/DataSource;

.field private s:Z

.field private t:Lcom/bumptech/glide/load/engine/GlideException;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/bumptech/glide/load/engine/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;"
        }
    .end annotation
.end field

.field private x:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/engine/g$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/load/engine/g$a;

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/g$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/g$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/g;->b:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/h;Landroid/support/v4/util/Pools$Pool;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;)V"
        }
    .end annotation

    .line 72
    sget-object v7, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/load/engine/g$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/g;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/h;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/g$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/h;Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/load/engine/g$a;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/g$a;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 93
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g;->j:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 95
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/h;

    .line 96
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/g;->e:Landroid/support/v4/util/Pools$Pool;

    .line 97
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/g$a;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 238
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    .line 241
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    .line 242
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/Resource;

    .line 243
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    .line 247
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    .line 248
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    .line 249
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->x:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/f;->a(Z)V

    .line 250
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->x:Lcom/bumptech/glide/load/engine/f;

    .line 251
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 252
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->r:Lcom/bumptech/glide/load/DataSource;

    .line 253
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {p1, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->n:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->j:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->i:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    :goto_0
    return-object v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/g;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    .line 108
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/g;->m:Z

    .line 109
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/g;->n:Z

    .line 110
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/g;->o:Z

    .line 111
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/g;->p:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 266
    sget-object p1, Lcom/bumptech/glide/load/engine/g;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/Resource;

    .line 259
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->r:Lcom/bumptech/glide/load/DataSource;

    .line 260
    sget-object p1, Lcom/bumptech/glide/load/engine/g;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;)V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/g;->f()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 126
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->r:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->p:Z

    return v0
.end method

.method b()V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->x:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->b()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/h;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/Key;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "TR;>;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->x:Lcom/bumptech/glide/load/engine/f;

    .line 117
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/g;->f()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    .line 120
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method b(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 1

    .line 136
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->b()V

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/g;->c(Lcom/bumptech/glide/request/ResourceCallback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method c()V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 198
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/g$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->q:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/g;->m:Z

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/engine/g$a;->a(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->s:Z

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k;->c()V

    .line 211
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/h;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    invoke-interface {v0, p0, v2, v3}, Lcom/bumptech/glide/load/engine/h;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/k;)V

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 215
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/request/ResourceCallback;

    .line 216
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/g;->d(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/k;->c()V

    .line 218
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->r:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v3, v4, v5}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->w:Lcom/bumptech/glide/load/engine/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k;->d()V

    .line 224
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    return-void

    .line 203
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 230
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/h;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/Key;)V

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    return-void

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method e()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 279
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->u:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/engine/h;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/Key;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/bumptech/glide/load/engine/h;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/k;)V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/ResourceCallback;

    .line 292
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/g;->d(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    return-void

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->d:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method
