.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/FlowableSubscriber<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc75368d015d6d3dL


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e<",
            "TR;>;)V"
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 581
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 610
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 613
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    .line 614
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->produced(J)V

    .line 617
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 598
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 601
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    .line 602
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->produced(J)V

    .line 605
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 591
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->b:J

    .line 593
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->a:Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$d;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
