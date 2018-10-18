.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$b;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/Flowable;)V

    .line 45
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;-><init>(Lio/reactivex/Flowable;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$b;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$a;)V

    .line 53
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 56
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->a(Lio/reactivex/internal/operators/flowable/FlowableCache$b;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/FlowableCache$b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->b(Lio/reactivex/internal/operators/flowable/FlowableCache$b;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 64
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->b:Lio/reactivex/internal/operators/flowable/FlowableCache$a;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$a;->a()V

    :cond_1
    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$b;->a()V

    :cond_2
    return-void
.end method
