.class final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6f11cdf3dd210edfL


# instance fields
.field final a:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a<",
            "*>;)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 214
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;->a:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 233
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 229
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;->a:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;->a(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;->a:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a;->a(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapCompletable$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 219
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
