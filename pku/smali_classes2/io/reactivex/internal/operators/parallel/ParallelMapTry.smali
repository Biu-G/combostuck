.class public final Lio/reactivex/internal/operators/parallel/ParallelMapTry;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelMapTry$a;,
        Lio/reactivex/internal/operators/parallel/ParallelMapTry$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->a:Lio/reactivex/parallel/ParallelFlowable;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->b:Lio/reactivex/functions/Function;

    .line 46
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->c:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->a:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    array-length v0, p1

    .line 57
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 60
    aget-object v3, p1, v2

    .line 61
    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMapTry$a;

    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->b:Lio/reactivex/functions/Function;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->c:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$a;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 64
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMapTry$b;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->b:Lio/reactivex/functions/Function;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->c:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$b;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->a:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
