.class Landroid/support/v4/view/AsyncLayoutInflater$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/AsyncLayoutInflater$c;


# instance fields
.field private b:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<",
            "Landroid/support/v4/view/AsyncLayoutInflater$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->a:Landroid/support/v4/view/AsyncLayoutInflater$c;

    .line 164
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->a:Landroid/support/v4/view/AsyncLayoutInflater$c;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$c;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->c:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static a()Landroid/support/v4/view/AsyncLayoutInflater$c;
    .locals 1

    .line 168
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$c;->a:Landroid/support/v4/view/AsyncLayoutInflater$c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/AsyncLayoutInflater$b;)V
    .locals 2

    const/4 v0, 0x0

    .line 215
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->e:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 216
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 217
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 218
    iput v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->c:I

    .line 219
    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;

    .line 220
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->c:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 5

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 188
    :try_start_1
    iget-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v2, v2, Landroid/support/v4/view/AsyncLayoutInflater;->a:Landroid/view/LayoutInflater;

    iget v3, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->c:I

    iget-object v4, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->d:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AsyncLayoutInflater"

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    .line 192
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :goto_0
    iget-object v2, v0, Landroid/support/v4/view/AsyncLayoutInflater$b;->a:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v2, v2, Landroid/support/v4/view/AsyncLayoutInflater;->b:Landroid/os/Handler;

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "AsyncLayoutInflater"

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public b(Landroid/support/v4/view/AsyncLayoutInflater$b;)V
    .locals 2

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to enqueue async inflate request"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Landroid/support/v4/view/AsyncLayoutInflater$b;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$c;->c:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$b;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$b;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$b;-><init>()V

    :cond_0
    return-object v0
.end method

.method public run()V
    .locals 0

    .line 202
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/AsyncLayoutInflater$c;->b()V

    goto :goto_0
.end method
