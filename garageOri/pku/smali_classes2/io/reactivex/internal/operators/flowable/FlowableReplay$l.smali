.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$l;
.super Lio/reactivex/internal/operators/flowable/FlowableReplay$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final d:Lio/reactivex/Scheduler;

.field final e:J

.field final f:Ljava/util/concurrent/TimeUnit;

.field final g:I


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 989
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$a;-><init>()V

    .line 990
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->d:Lio/reactivex/Scheduler;

    .line 991
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->g:I

    .line 992
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->e:J

    .line 993
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 998
    new-instance v0, Lio/reactivex/schedulers/Timed;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->d:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1003
    check-cast p1, Lio/reactivex/schedulers/Timed;

    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 8

    .line 1008
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->d:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->e:J

    sub-long/2addr v0, v2

    .line 1010
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 1011
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    const/4 v4, 0x0

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-eqz v2, :cond_1

    .line 1016
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->g:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1018
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    .line 1020
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 1023
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1025
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    .line 1027
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 1037
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 10

    .line 1042
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->d:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->e:J

    sub-long/2addr v0, v2

    .line 1044
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 1045
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 1049
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1050
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 1051
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1053
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b:I

    .line 1055
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 1064
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->b(Lio/reactivex/internal/operators/flowable/FlowableReplay$f;)V

    :cond_1
    return-void
.end method

.method f()Lio/reactivex/internal/operators/flowable/FlowableReplay$f;
    .locals 7

    .line 1070
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->d:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->e:J

    sub-long/2addr v0, v2

    .line 1071
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$l;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    .line 1072
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    :goto_0
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    if-nez v2, :cond_0

    goto :goto_1

    .line 1077
    :cond_0
    iget-object v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->a:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/schedulers/Timed;

    .line 1078
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1081
    :cond_1
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    .line 1083
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$f;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method