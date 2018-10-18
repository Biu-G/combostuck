.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/ModernAsyncTask$a;,
        Landroid/support/v4/content/ModernAsyncTask$c;,
        Landroid/support/v4/content/ModernAsyncTask$b;,
        Landroid/support/v4/content/ModernAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/Executor;

.field private static f:Landroid/support/v4/content/ModernAsyncTask$b;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Landroid/support/v4/content/ModernAsyncTask$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/ModernAsyncTask$c<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Landroid/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$1;

    invoke-direct {v0}, Landroid/support/v4/content/ModernAsyncTask$1;-><init>()V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->j:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$2;

    invoke-direct {v0, p0}, Landroid/support/v4/content/ModernAsyncTask$2;-><init>(Landroid/support/v4/content/ModernAsyncTask;)V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$c;

    .line 153
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$3;

    iget-object v1, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$c;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/ModernAsyncTask$3;-><init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 2

    .line 115
    const-class v0, Landroid/support/v4/content/ModernAsyncTask;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$b;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$b;

    invoke-direct {v1}, Landroid/support/v4/content/ModernAsyncTask$b;-><init>()V

    sput-object v1, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$b;

    .line 119
    :cond_0
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask;->f:Landroid/support/v4/content/ModernAsyncTask$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/support/v4/content/ModernAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->j:Landroid/support/v4/content/ModernAsyncTask$Status;

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 434
    sget-object p1, Landroid/support/v4/content/ModernAsyncTask$4;->a:[I

    iget-object p2, p0, Landroid/support/v4/content/ModernAsyncTask;->j:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {p2}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 443
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_0
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->j:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 449
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->b()V

    .line 451
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->h:Landroid/support/v4/content/ModernAsyncTask$c;

    iput-object p2, v0, Landroid/support/v4/content/ModernAsyncTask$c;->b:[Ljava/lang/Object;

    .line 452
    iget-object p2, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .line 332
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->c()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroid/support/v4/content/ModernAsyncTask$a;-><init>(Landroid/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final d()Z
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->a(Ljava/lang/Object;)V

    .line 492
    :goto_0
    sget-object p1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask;->j:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void
.end method
