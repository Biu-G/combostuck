.class final Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x783c01649d3b2729L


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 150
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$c;->a:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$c;->a:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$c;->a:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$c;->a:Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$b;->a()V

    return-void
.end method
