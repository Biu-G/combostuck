.class final Lio/reactivex/internal/operators/maybe/MaybeUsing$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x95bf75d78cfb0efL


# instance fields
.field final a:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final c:Z

.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Ljava/lang/Object;Lio/reactivex/functions/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;TD;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    .line 116
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->b:Lio/reactivex/functions/Consumer;

    .line 117
    iput-boolean p4, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 129
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->b:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 123
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    .line 124
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 208
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->b:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 216
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    return-void

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 226
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 183
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    .line 184
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->b:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 191
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 200
    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-nez p1, :cond_2

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a()V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    .line 150
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->d:Lio/reactivex/disposables/Disposable;

    .line 158
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->b:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    return-void

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 175
    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->c:Z

    if-nez p1, :cond_2

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$a;->a()V

    :cond_2
    return-void
.end method