.class final Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d9aed7319193fc1L


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;->f:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;->a:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/util/HalfSerializer;->onError(Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->a:Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a;->f:Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipUntil$a$a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 117
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method
