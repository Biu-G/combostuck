.class final Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1191e1deb0e3c2ebL


# instance fields
.field final a:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a<",
            "*TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a<",
            "*TU;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 127
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a$a;->a:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a$a;->a:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a$a;->a:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a$a;->a:Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$a;->a()V

    return-void
.end method
