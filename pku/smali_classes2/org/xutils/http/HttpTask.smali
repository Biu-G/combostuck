.class public Lorg/xutils/http/HttpTask;
.super Lorg/xutils/common/task/AbsTask;
.source "SourceFile"

# interfaces
.implements Lorg/xutils/http/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask<",
        "TResultType;>;",
        "Lorg/xutils/http/ProgressHandler;"
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/xutils/http/HttpTask<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final s:Lorg/xutils/common/task/PriorityExecutor;

.field private static final t:Lorg/xutils/common/task/PriorityExecutor;


# instance fields
.field private b:Lorg/xutils/http/RequestParams;

.field private c:Lorg/xutils/http/request/UriRequest;

.field private d:Lorg/xutils/http/HttpTask$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/HttpTask<",
            "TResultType;>.a;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private volatile f:Z

.field private final g:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private volatile i:Ljava/lang/Boolean;

.field private final j:Ljava/lang/Object;

.field private k:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private l:Lorg/xutils/common/Callback$PrepareCallback;

.field private m:Lorg/xutils/common/Callback$ProgressCallback;

.field private n:Lorg/xutils/http/app/RequestInterceptListener;

.field private o:Lorg/xutils/http/app/RequestTracker;

.field private p:Ljava/lang/reflect/Type;

.field private u:J

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-class v0, Lorg/xutils/http/HttpTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lorg/xutils/http/HttpTask;->a:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    .line 69
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->s:Lorg/xutils/common/task/PriorityExecutor;

    .line 70
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v2, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->t:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$Cancelable;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p2}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lorg/xutils/http/HttpTask;->f:Z

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    .line 49
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    const-wide/16 v0, 0x12c

    .line 532
    iput-wide v0, p0, Lorg/xutils/http/HttpTask;->v:J

    .line 77
    sget-boolean p2, Lorg/xutils/http/HttpTask;->a:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_1
    :goto_0
    sget-boolean p2, Lorg/xutils/http/HttpTask;->a:Z

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    .line 82
    iput-object p3, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    .line 83
    instance-of p2, p3, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz p2, :cond_4

    .line 84
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->k:Lorg/xutils/common/Callback$CacheCallback;

    .line 86
    :cond_4
    instance-of p2, p3, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz p2, :cond_5

    .line 87
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->l:Lorg/xutils/common/Callback$PrepareCallback;

    .line 89
    :cond_5
    instance-of p2, p3, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz p2, :cond_6

    .line 90
    move-object p2, p3

    check-cast p2, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    .line 92
    :cond_6
    instance-of p2, p3, Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz p2, :cond_7

    .line 93
    move-object p2, p3

    check-cast p2, Lorg/xutils/http/app/RequestInterceptListener;

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->n:Lorg/xutils/http/app/RequestInterceptListener;

    .line 98
    :cond_7
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getRequestTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object p2

    if-nez p2, :cond_9

    .line 100
    instance-of p2, p3, Lorg/xutils/http/app/RequestTracker;

    if-eqz p2, :cond_8

    .line 101
    move-object p2, p3

    check-cast p2, Lorg/xutils/http/app/RequestTracker;

    goto :goto_2

    .line 103
    :cond_8
    invoke-static {}, Lorg/xutils/http/request/UriRequestFactory;->getDefaultTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object p2

    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    .line 107
    new-instance p3, Lorg/xutils/http/b;

    invoke-direct {p3, p2}, Lorg/xutils/http/b;-><init>(Lorg/xutils/http/app/RequestTracker;)V

    iput-object p3, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    .line 112
    :cond_a
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 113
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->e:Ljava/util/concurrent/Executor;

    goto :goto_3

    .line 115
    :cond_b
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->k:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz p1, :cond_c

    .line 116
    sget-object p1, Lorg/xutils/http/HttpTask;->t:Lorg/xutils/common/task/PriorityExecutor;

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->e:Ljava/util/concurrent/Executor;

    goto :goto_3

    .line 118
    :cond_c
    sget-object p1, Lorg/xutils/http/HttpTask;->s:Lorg/xutils/common/task/PriorityExecutor;

    iput-object p1, p0, Lorg/xutils/http/HttpTask;->e:Ljava/util/concurrent/Executor;

    :goto_3
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 36
    sget-object v0, Lorg/xutils/http/HttpTask;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->f()V

    return-void
.end method

.method static synthetic b(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 125
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v1, Lorg/xutils/common/Callback$TypedCallback;

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v0, Lorg/xutils/common/Callback$TypedCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$TypedCallback;->getLoadType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v1, Lorg/xutils/common/Callback$PrepareCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 129
    const-class v1, Lorg/xutils/common/Callback$PrepareCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 131
    :cond_1
    const-class v1, Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    :goto_0
    return-void
.end method

.method static synthetic c(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->n:Lorg/xutils/http/app/RequestInterceptListener;

    return-object p0
.end method

.method private c()Lorg/xutils/http/request/UriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->a()V

    .line 139
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lorg/xutils/http/request/UriRequestFactory;->getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/http/request/UriRequest;->setCallingClassLoader(Ljava/lang/ClassLoader;)V

    .line 141
    invoke-virtual {v0, p0}, Lorg/xutils/http/request/UriRequest;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 142
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getLoadingUpdateMaxTimeSpan()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/xutils/http/HttpTask;->v:J

    const/4 v1, 0x1

    .line 143
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic d(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 149
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->p:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_6

    .line 150
    sget-object v0, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    sget-object v2, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/http/HttpTask;

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v2}, Lorg/xutils/http/HttpTask;->cancel()V

    .line 166
    invoke-direct {v2}, Lorg/xutils/http/HttpTask;->f()V

    .line 168
    :cond_0
    sget-object v2, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    sget-object v2, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    sget-object v1, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 175
    sget-object v1, Lorg/xutils/http/HttpTask;->r:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 180
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 184
    :cond_5
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic e(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    return-void
.end method

.method static synthetic f(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->c()Lorg/xutils/http/request/UriRequest;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    .line 510
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    invoke-virtual {v0}, Lorg/xutils/http/HttpTask$a;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method protected cancelWorks()V
    .locals 2

    .line 495
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$2;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$2;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doBackground()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 198
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->b()V

    .line 199
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->c()Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    .line 200
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->d()V

    .line 205
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lorg/xutils/http/app/HttpRetryHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/HttpRetryHandler;-><init>()V

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMaxRetryCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xutils/http/app/HttpRetryHandler;->setMaxRetryCount(I)V

    .line 211
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 217
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->k:Lorg/xutils/common/Callback$CacheCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load cache: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v5}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->loadResultFromCache()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "load disk cache error"

    .line 224
    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 232
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 233
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->l:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v1, :cond_1

    .line 235
    :try_start_1
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->l:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v5, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    invoke-interface {v1, v5}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v5, "prepare disk cache error"

    .line 238
    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    move-object v1, v4

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    throw v0

    .line 243
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    .line 246
    :goto_2
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_6

    const/4 v5, 0x2

    .line 252
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {p0, v5, v6}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 253
    :goto_3
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    if-nez v5, :cond_2

    .line 254
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    monitor-enter v5

    .line 256
    :try_start_3
    iget-object v6, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 261
    :catch_2
    :goto_4
    :try_start_4
    monitor-exit v5

    goto :goto_3

    .line 258
    :catch_3
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 265
    :cond_2
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v4

    .line 247
    :cond_3
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_4
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    .line 229
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v4

    .line 272
    :cond_6
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    if-nez v5, :cond_7

    .line 273
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    :cond_7
    if-nez v1, :cond_8

    .line 277
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->clearCacheHeader()V

    .line 281
    :cond_8
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v1, Lorg/xutils/common/Callback$ProxyCacheCallback;

    if-eqz v1, :cond_9

    .line 282
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v1, Lorg/xutils/common/Callback$ProxyCacheCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$ProxyCacheCallback;->onlyCache()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v4

    :cond_9
    move-object v5, v4

    move-object v6, v5

    const/4 v1, 0x1

    const/4 v7, 0x0

    :goto_6
    if-eqz v1, :cond_14

    .line 293
    :try_start_5
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 298
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->close()V
    :try_end_5
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    .line 301
    :try_start_6
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v8}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 304
    new-instance v1, Lorg/xutils/http/HttpTask$a;

    invoke-direct {v1, p0, v4}, Lorg/xutils/http/HttpTask$a;-><init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    .line 305
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 306
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    invoke-virtual {v1}, Lorg/xutils/http/HttpTask$a;->start()V

    .line 307
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    invoke-virtual {v1}, Lorg/xutils/http/HttpTask$a;->join()V

    goto :goto_7

    .line 309
    :cond_a
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    invoke-virtual {v1}, Lorg/xutils/http/HttpTask$a;->run()V

    .line 311
    :goto_7
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    iget-object v1, v1, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;

    if-nez v1, :cond_f

    .line 314
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    iget-object v1, v1, Lorg/xutils/http/HttpTask$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_6 .. :try_end_6} :catch_8

    .line 324
    :try_start_7
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->l:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v1, :cond_c

    .line 326
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1
    :try_end_7
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v1, :cond_b

    .line 331
    :try_start_8
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->l:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    invoke-interface {v1, v8}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 333
    :try_start_9
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V
    :try_end_9
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception v5

    move-object v6, v1

    goto :goto_9

    :catch_5
    move-object v6, v1

    goto/16 :goto_a

    :catchall_2
    move-exception v1

    :try_start_a
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    throw v1

    .line 327
    :cond_b
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled before request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_c
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->h:Ljava/lang/Object;

    :goto_8
    move-object v6, v1

    .line 340
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->k:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 341
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->save2Cache()V

    .line 344
    :cond_d
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_6

    .line 345
    :cond_e
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled after request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 312
    :cond_f
    :try_start_b
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->d:Lorg/xutils/http/HttpTask$a;

    iget-object v1, v1, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;

    throw v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_b .. :try_end_b} :catch_8

    :catch_6
    move-exception v1

    .line 316
    :try_start_c
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->e()V

    .line 317
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 318
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled during request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_10
    throw v1

    .line 294
    :cond_11
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v8, "cancelled before request"

    invoke-direct {v1, v8}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    move-exception v5

    .line 351
    :goto_9
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v1}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v1

    const/16 v8, 0x130

    if-eq v1, v8, :cond_13

    packed-switch v1, :pswitch_data_0

    .line 358
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_12

    instance-of v1, v5, Lorg/xutils/common/Callback$CancelledException;

    if-nez v1, :cond_12

    .line 359
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v5, "canceled by user"

    invoke-direct {v1, v5}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 361
    :cond_12
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v1, v5, v7}, Lorg/xutils/http/app/HttpRetryHandler;->canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z

    move-result v1

    goto/16 :goto_6

    :cond_13
    :pswitch_0
    return-object v4

    .line 349
    :catch_8
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http Redirect:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v8}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_14
    if-eqz v5, :cond_16

    if-nez v6, :cond_16

    .line 368
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_b

    .line 369
    :cond_15
    iput-boolean v3, p0, Lorg/xutils/http/HttpTask;->f:Z

    .line 370
    throw v5

    :cond_16
    :goto_b
    return-object v6

    .line 212
    :cond_17
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_18
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled before request"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v0

    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 457
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 474
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V

    .line 477
    :cond_0
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$1;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 483
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 438
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    :cond_1
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 448
    iget-boolean v0, p0, Lorg/xutils/http/HttpTask;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 408
    :pswitch_0
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz p1, :cond_1

    array-length p1, p2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 410
    :try_start_0
    iget-object v3, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Number;

    .line 411
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Number;

    .line 412
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/4 p1, 0x2

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/Boolean;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 410
    invoke-interface/range {v3 .. v8}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 415
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {p2, p1, v0}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_3

    .line 391
    :pswitch_1
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 393
    :try_start_1
    aget-object p2, p2, v1

    .line 394
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v2, v3, p2}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 397
    :cond_0
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->k:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v2, p2}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 399
    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->i:Ljava/lang/Boolean;

    .line 400
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->g:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1, p2, v0}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    :try_start_4
    iget-object p2, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    goto :goto_0

    .line 404
    :goto_1
    monitor-exit p1

    goto :goto_3

    .line 402
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    throw p2

    :catchall_1
    move-exception p2

    .line 404
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 385
    :pswitch_2
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz p1, :cond_1

    .line 386
    iget-object p1, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    aget-object p2, p2, v1

    check-cast p2, Lorg/xutils/http/request/UriRequest;

    invoke-interface {p1, p2}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V

    :cond_1
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onWaiting()V
    .locals 2

    .line 428
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->o:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->b:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress(JJZ)Z
    .locals 10

    .line 543
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->m:Lorg/xutils/common/Callback$ProgressCallback;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_3

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    move-wide p1, p3

    :cond_1
    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eqz p5, :cond_2

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xutils/http/HttpTask;->u:J

    .line 553
    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v2

    iget-object p1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p5, v0

    invoke-virtual {p0, v3, p5}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 556
    iget-wide v6, p0, Lorg/xutils/http/HttpTask;->u:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lorg/xutils/http/HttpTask;->v:J

    cmp-long p5, v6, v8

    if-ltz p5, :cond_3

    .line 557
    iput-wide v4, p0, Lorg/xutils/http/HttpTask;->u:J

    .line 558
    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v2

    iget-object p1, p0, Lorg/xutils/http/HttpTask;->c:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p5, v0

    invoke-virtual {p0, v3, p5}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 563
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method
