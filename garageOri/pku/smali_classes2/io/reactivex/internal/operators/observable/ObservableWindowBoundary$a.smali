.class final Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 256
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->b:Z

    .line 283
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->b:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->b:Z

    .line 274
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 261
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$a;->a:Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$b;->a()V

    return-void
.end method
