.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;
.super Lio/reactivex/internal/operators/flowable/FlowableConcatMap$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$a<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28e181349daae86aL


# instance fields
.field final m:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final n:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$a;-><init>(Lio/reactivex/functions/Function;I)V

    .line 396
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    .line 397
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->n:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 452
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    .line 455
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 459
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->k:Z

    if-nez v0, :cond_b

    .line 461
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->h:Z

    if-eqz v0, :cond_2

    .line 463
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->n:Z

    if-nez v1, :cond_2

    .line 464
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 466
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 474
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 486
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 488
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 490
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_b

    .line 499
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->b:Lio/reactivex/functions/Function;

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Publisher;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->l:I

    if-eq v1, v3, :cond_7

    .line 510
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->f:I

    add-int/2addr v1, v3

    .line 511
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->d:I

    if-ne v1, v4, :cond_6

    .line 512
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->f:I

    .line 513
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_3

    .line 515
    :cond_6
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->f:I

    .line 519
    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_a

    .line 521
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 526
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_8

    goto :goto_0

    .line 539
    :cond_8
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->isUnbounded()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 540
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 543
    :cond_9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->k:Z

    .line 544
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$f;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$f;-><init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->setSubscription(Lorg/reactivestreams/Subscription;)V

    goto :goto_4

    :catch_0
    move-exception v0

    .line 528
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 529
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 530
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 531
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 547
    :cond_a
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->k:Z

    .line 548
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 501
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 503
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 504
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 505
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 476
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 477
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 478
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 479
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 552
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->n:Z

    if-nez p1, :cond_0

    .line 425
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->h:Z

    :cond_0
    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->k:Z

    .line 429
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method b()V
    .locals 1

    .line 402
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->m:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 442
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->i:Z

    .line 445
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->cancel()V

    .line 446
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->e:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->j:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 408
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->h:Z

    .line 409
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a()V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 437
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$b;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->request(J)V

    return-void
.end method
