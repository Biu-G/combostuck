.class public final Lio/reactivex/internal/operators/observable/ObservableGroupJoin;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableGroupJoin$c;,
        Lio/reactivex/internal/operators/observable/ObservableGroupJoin$d;,
        Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;,
        Lio/reactivex/internal/operators/observable/ObservableGroupJoin$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TTRight;+",
            "Lio/reactivex/ObservableSource<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/Observable<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT",
            "Left;",
            ">;",
            "Lio/reactivex/ObservableSource<",
            "+TTRight;>;",
            "Lio/reactivex/functions/Function<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/functions/Function<",
            "-TTRight;+",
            "Lio/reactivex/ObservableSource<",
            "TTRightEnd;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/Observable<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/ObservableSource;)V

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->a:Lio/reactivex/ObservableSource;

    .line 53
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->b:Lio/reactivex/functions/Function;

    .line 54
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->c:Lio/reactivex/functions/Function;

    .line 55
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->d:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->b:Lio/reactivex/functions/Function;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->c:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->d:Lio/reactivex/functions/BiFunction;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    .line 64
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 66
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$d;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$b;Z)V

    .line 67
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 68
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$d;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$b;Z)V

    .line 69
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin;->a:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
