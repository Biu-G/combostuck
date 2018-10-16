.class final Lorg/xutils/http/HttpTask$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Throwable;

.field final synthetic c:Lorg/xutils/http/HttpTask;


# direct methods
.method private constructor <init>(Lorg/xutils/http/HttpTask;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lorg/xutils/http/HttpTask$a;-><init>(Lorg/xutils/http/HttpTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 592
    :try_start_0
    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->b(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 593
    :goto_0
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    .line 594
    invoke-virtual {v1}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 597
    :try_start_1
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 603
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    .line 600
    monitor-exit v1

    goto :goto_3

    .line 603
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 605
    :cond_0
    :goto_3
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    if-nez v0, :cond_6

    .line 608
    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-virtual {v1}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_5

    .line 613
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->c(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->c(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->d(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 618
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->d(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/HttpTask$a;->a:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 620
    :try_start_5
    iput-object v0, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;

    .line 624
    :goto_4
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->c(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->c(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->d(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 628
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_5

    .line 657
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->b(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 658
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    monitor-enter v0

    .line 659
    :try_start_6
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 660
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit v0

    goto/16 :goto_8

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 629
    :cond_5
    :try_start_7
    iget-object v0, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;

    throw v0

    .line 609
    :cond_6
    :goto_5
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelled before request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v0, "(interrupted)"

    goto :goto_6

    :cond_7
    const-string v0, ""

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    .line 632
    :try_start_8
    iput-object v0, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;

    .line 633
    instance-of v1, v0, Lorg/xutils/ex/HttpException;

    if-eqz v1, :cond_a

    .line 634
    move-object v1, v0

    check-cast v1, Lorg/xutils/ex/HttpException;

    .line 635
    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_a

    .line 637
    :cond_8
    iget-object v3, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_a

    .line 640
    :try_start_9
    iget-object v4, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->d(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xutils/http/app/RedirectHandler;->getRedirectParams(Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/RequestParams;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 642
    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v4

    if-nez v4, :cond_9

    .line 643
    iget-object v4, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->e(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 646
    :cond_9
    iget-object v4, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4, v3}, Lorg/xutils/http/HttpTask;->a(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;

    .line 647
    iget-object v3, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    iget-object v4, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->f(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xutils/http/HttpTask;->a(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;

    .line 648
    new-instance v3, Lorg/xutils/ex/HttpRedirectException;

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/xutils/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    .line 651
    :catch_4
    :try_start_a
    iput-object v0, p0, Lorg/xutils/http/HttpTask$a;->b:Ljava/lang/Throwable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 657
    :cond_a
    :goto_7
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v1}, Lorg/xutils/http/HttpTask;->b(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 658
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    monitor-enter v0

    .line 659
    :try_start_b
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 660
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit v0

    goto :goto_8

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    :cond_b
    :goto_8
    return-void

    .line 657
    :goto_9
    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/HttpTask$a;->c:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->b(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 658
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 659
    :try_start_c
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 660
    invoke-static {}, Lorg/xutils/http/HttpTask;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit v1

    goto :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_c
    :goto_a
    throw v0
.end method
