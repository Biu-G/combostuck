.class public final Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$c;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$a;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/Scheduler;

.field final e:J

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "JIZ)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/ObservableSource;)V

    .line 46
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->a:J

    .line 47
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->b:J

    .line 48
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->c:Ljava/util/concurrent/TimeUnit;

    .line 49
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->d:Lio/reactivex/Scheduler;

    .line 50
    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->e:J

    .line 51
    iput p10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->f:I

    .line 52
    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->g:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 57
    new-instance v1, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v1, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    .line 59
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->a:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 60
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->e:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->a:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->d:Lio/reactivex/Scheduler;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->f:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$b;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)V

    invoke-interface {p1, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->a:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->d:Lio/reactivex/Scheduler;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->f:I

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->e:J

    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->g:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$a;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V

    invoke-interface {p1, v10}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 72
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->a:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->d:Lio/reactivex/Scheduler;

    .line 73
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed;->f:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$c;-><init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V

    .line 72
    invoke-interface {p1, v9}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
