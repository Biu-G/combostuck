.class final Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/disposables/Disposable;

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->b:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->b:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->d:Z

    .line 85
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 86
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 79
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->c:Lio/reactivex/disposables/Disposable;

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeWhile$a;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method