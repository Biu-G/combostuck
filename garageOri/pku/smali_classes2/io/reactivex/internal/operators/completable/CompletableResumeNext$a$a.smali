.class final Lio/reactivex/internal/operators/completable/CompletableResumeNext$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a$a;->a:Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a$a;->a:Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a$a;->a:Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a$a;->a:Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$a;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
