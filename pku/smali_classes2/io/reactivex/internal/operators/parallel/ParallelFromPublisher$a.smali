.class final Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e0ae1f3a0d08e59L


# instance fields
.field final a:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLongArray;

.field final c:[J

.field final d:I

.field final e:I

.field f:Lorg/reactivestreams/Subscription;

.field g:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Throwable;

.field volatile i:Z

.field j:I

.field volatile k:Z

.field final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field m:I

.field n:I


# direct methods
.method constructor <init>([Lorg/reactivestreams/Subscriber;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a:[Lorg/reactivestreams/Subscriber;

    .line 102
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d:I

    shr-int/lit8 v0, p2, 0x2

    sub-int/2addr p2, v0

    .line 103
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->e:I

    .line 104
    array-length p1, p1

    .line 105
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    add-int v0, p1, p1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 106
    iget-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 107
    new-array p1, p1, [J

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->c:[J

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a:[Lorg/reactivestreams/Subscriber;

    .line 151
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 154
    iget-boolean v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->k:Z

    if-eqz v3, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 160
    aget-object v3, v0, v2

    new-instance v5, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a$a;

    invoke-direct {v5, p0, v2, v1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a$a;-><init>(Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;II)V

    invoke-interface {v3, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 4

    .line 229
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->decrementAndGet(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 230
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->k:Z

    .line 231
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 233
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 18

    move-object/from16 v1, p0

    .line 242
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 243
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a:[Lorg/reactivestreams/Subscriber;

    .line 244
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 245
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->c:[J

    .line 246
    array-length v5, v4

    .line 247
    iget v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->j:I

    .line 248
    iget v7, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->m:I

    const/4 v8, 0x1

    move v9, v7

    const/4 v7, 0x1

    :cond_0
    :goto_0
    const/4 v10, 0x0

    move v11, v9

    const/4 v9, 0x0

    .line 255
    :cond_1
    iget-boolean v12, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->k:Z

    if-eqz v12, :cond_2

    .line 256
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 260
    :cond_2
    iget-boolean v12, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->i:Z

    if-eqz v12, :cond_4

    .line 262
    iget-object v13, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->h:Ljava/lang/Throwable;

    if-eqz v13, :cond_4

    .line 264
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 265
    array-length v0, v2

    :goto_1
    if-ge v10, v0, :cond_3

    aget-object v3, v2, v10

    .line 266
    invoke-interface {v3, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 272
    :cond_4
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v13

    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    .line 275
    array-length v0, v2

    :goto_2
    if-ge v10, v0, :cond_5

    aget-object v3, v2, v10

    .line 276
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    if-eqz v13, :cond_7

    goto :goto_3

    .line 285
    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v12

    .line 286
    aget-wide v14, v4, v6

    cmp-long v12, v12, v14

    if-eqz v12, :cond_b

    add-int v12, v5, v6

    .line 287
    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-nez v12, :cond_b

    .line 292
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_8

    :goto_3
    move v9, v11

    goto :goto_6

    .line 306
    :cond_8
    aget-object v12, v2, v6

    invoke-interface {v12, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    .line 308
    aput-wide v14, v4, v6

    add-int/lit8 v9, v11, 0x1

    .line 311
    iget v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->e:I

    if-ne v9, v11, :cond_9

    .line 313
    iget-object v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    int-to-long v12, v9

    invoke-interface {v11, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v9, 0x0

    :cond_9
    move v11, v9

    const/4 v9, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 294
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 295
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 296
    array-length v0, v2

    :goto_4
    if-ge v10, v0, :cond_a

    aget-object v4, v2, v10

    .line 297
    invoke-interface {v4, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    add-int/2addr v9, v8

    :goto_5
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_c

    const/4 v6, 0x0

    :cond_c
    if-ne v9, v5, :cond_1

    goto :goto_3

    .line 330
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->get()I

    move-result v10

    if-ne v10, v7, :cond_d

    .line 332
    iput v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->j:I

    .line 333
    iput v9, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->m:I

    neg-int v7, v7

    .line 334
    invoke-virtual {v1, v7}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_d
    move v7, v10

    goto/16 :goto_0
.end method

.method c()V
    .locals 17

    move-object/from16 v1, p0

    .line 347
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 348
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a:[Lorg/reactivestreams/Subscriber;

    .line 349
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 350
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->c:[J

    .line 351
    array-length v5, v4

    .line 352
    iget v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->j:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    :cond_0
    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 359
    :cond_1
    iget-boolean v11, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->k:Z

    if-eqz v11, :cond_2

    .line 360
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 364
    :cond_2
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 367
    array-length v0, v2

    :goto_1
    if-ge v9, v0, :cond_3

    aget-object v3, v2, v9

    .line 368
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 373
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v11

    .line 374
    aget-wide v13, v4, v6

    cmp-long v11, v11, v13

    if-eqz v11, :cond_8

    add-int v11, v5, v6

    .line 375
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    if-nez v11, :cond_8

    .line 380
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_6

    .line 391
    array-length v0, v2

    :goto_2
    if-ge v9, v0, :cond_5

    aget-object v3, v2, v9

    .line 392
    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    return-void

    .line 397
    :cond_6
    aget-object v11, v2, v6

    invoke-interface {v11, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    .line 399
    aput-wide v13, v4, v6

    const/4 v10, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 382
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 383
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 384
    array-length v0, v2

    :goto_3
    if-ge v9, v0, :cond_7

    aget-object v4, v2, v9

    .line 385
    invoke-interface {v4, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    add-int/2addr v10, v7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_9

    const/4 v6, 0x0

    :cond_9
    if-ne v10, v5, :cond_1

    .line 416
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->get()I

    move-result v9

    if-ne v9, v8, :cond_a

    .line 418
    iput v6, v1, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->j:I

    neg-int v8, v8

    .line 419
    invoke-virtual {v1, v8}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->addAndGet(I)I

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_a
    move v8, v9

    goto :goto_0
.end method

.method d()V
    .locals 2

    .line 430
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->c()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->b()V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->i:Z

    .line 225
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->i:Z

    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 205
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->n:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 207
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 208
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->f:Lorg/reactivestreams/Subscription;

    .line 115
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 117
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x7

    .line 119
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 122
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->n:I

    .line 123
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 124
    iput-boolean v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->i:Z

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a()V

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    iput v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->n:I

    .line 131
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a()V

    .line 135
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 141
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->g:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->a()V

    .line 145
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method
