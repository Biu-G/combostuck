.class Lio/reactivex/internal/operators/flowable/FlowableReplay$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/flowable/FlowableReplay$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$f;",
        ">;",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$g<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field a:Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

.field b:I

.field c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 738
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 739
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;-><init>(Ljava/lang/Object;J)V

    .line 740
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a:Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 741
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 757
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 758
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    if-eqz v0, :cond_0

    .line 762
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:I

    .line 765
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    return-void

    .line 760
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lio/reactivex/internal/operators/flowable/FlowableReplay$d;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableReplay$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 820
    monitor-enter p1

    .line 821
    :try_start_0
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 822
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->f:Z

    .line 823
    monitor-exit p1

    return-void

    .line 825
    :cond_0
    iput-boolean v1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->e:Z

    .line 826
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 828
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 832
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 836
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_3

    .line 838
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->f()Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    move-result-object v5

    .line 839
    iput-object v5, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->c:Ljava/lang/Object;

    .line 841
    iget-object v8, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v9, v5, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->b:J

    invoke-static {v8, v9, v10}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_3
    move-wide v8, v6

    :goto_2
    cmp-long v10, v2, v6

    if-eqz v10, :cond_7

    .line 845
    invoke-virtual {v5}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    if-eqz v10, :cond_7

    .line 847
    iget-object v5, v10, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v11, 0x0

    .line 849
    :try_start_1
    iget-object v12, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->b:Lorg/reactivestreams/Subscriber;

    invoke-static {v5, v12}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 850
    iput-object v11, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_4
    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    sub-long/2addr v2, v11

    .line 868
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    move-object v5, v10

    goto :goto_2

    :catch_0
    move-exception v0

    .line 854
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 855
    iput-object v11, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->c:Ljava/lang/Object;

    .line 856
    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->dispose()V

    .line 857
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 858
    iget-object p1, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->b:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    .line 874
    iput-object v5, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->c:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 876
    invoke-virtual {p1, v8, v9}, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->a(J)J

    .line 880
    :cond_8
    monitor-enter p1

    .line 881
    :try_start_2
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->f:Z

    if-nez v0, :cond_9

    .line 882
    iput-boolean v4, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->e:Z

    .line 883
    monitor-exit p1

    return-void

    .line 885
    :cond_9
    iput-boolean v4, p1, Lio/reactivex/internal/operators/flowable/FlowableReplay$d;->f:Z

    .line 886
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 826
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method final a(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a:Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->set(Ljava/lang/Object;)V

    .line 750
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a:Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 751
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 787
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 788
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;-><init>(Ljava/lang/Object;J)V

    .line 789
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    .line 790
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->d()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 795
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 796
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;-><init>(Ljava/lang/Object;J)V

    .line 797
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    .line 798
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->e()V

    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final b()V
    .locals 6

    .line 803
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c:J

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;-><init>(Ljava/lang/Object;J)V

    .line 805
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->a(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    .line 806
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->e()V

    return-void
.end method

.method final b(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V
    .locals 0

    .line 782
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->set(Ljava/lang/Object;)V

    return-void
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method final c()V
    .locals 5

    .line 810
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 811
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 812
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;-><init>(Ljava/lang/Object;J)V

    .line 813
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->lazySet(Ljava/lang/Object;)V

    .line 814
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 0

    return-void
.end method

.method e()V
    .locals 0

    .line 921
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->c()V

    return-void
.end method

.method f()Lio/reactivex/internal/operators/flowable/FlowableReplay$f;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    return-object v0
.end method
