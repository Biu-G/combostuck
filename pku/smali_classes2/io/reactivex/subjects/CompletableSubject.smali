.class public final Lio/reactivex/subjects/CompletableSubject;
.super Lio/reactivex/Completable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/CompletableSubject$a;
    }
.end annotation


# static fields
.field static final b:[Lio/reactivex/subjects/CompletableSubject$a;

.field static final c:[Lio/reactivex/subjects/CompletableSubject$a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/CompletableSubject$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field e:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 93
    new-array v1, v0, [Lio/reactivex/subjects/CompletableSubject$a;

    sput-object v1, Lio/reactivex/subjects/CompletableSubject;->b:[Lio/reactivex/subjects/CompletableSubject$a;

    .line 95
    new-array v0, v0, [Lio/reactivex/subjects/CompletableSubject$a;

    sput-object v0, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->b:[Lio/reactivex/subjects/CompletableSubject$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/subjects/CompletableSubject;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 107
    new-instance v0, Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/CompletableSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Lio/reactivex/subjects/CompletableSubject$a;)Z
    .locals 4

    .line 164
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$a;

    .line 165
    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 169
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 171
    new-array v3, v3, [Lio/reactivex/subjects/CompletableSubject$a;

    .line 172
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    aput-object p1, v3, v1

    .line 174
    iget-object v1, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b(Lio/reactivex/subjects/CompletableSubject$a;)V
    .locals 6

    .line 182
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$a;

    .line 183
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 191
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 202
    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->b:[Lio/reactivex/subjects/CompletableSubject$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 204
    new-array v5, v5, [Lio/reactivex/subjects/CompletableSubject$a;

    .line 205
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 206
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 209
    :goto_2
    iget-object v2, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 221
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->e:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 137
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 139
    iget-object v3, v3, Lio/reactivex/subjects/CompletableSubject$a;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v3}, Lio/reactivex/CompletableObserver;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 124
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-object p1, p0, Lio/reactivex/subjects/CompletableSubject;->e:Ljava/lang/Throwable;

    .line 127
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 128
    iget-object v3, v3, Lio/reactivex/subjects/CompletableSubject$a;->a:Lio/reactivex/CompletableObserver;

    invoke-interface {v3, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->c:[Lio/reactivex/subjects/CompletableSubject$a;

    if-ne v0, v1, :cond_0

    .line 118
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 146
    new-instance v0, Lio/reactivex/subjects/CompletableSubject$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/CompletableSubject$a;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/subjects/CompletableSubject;)V

    .line 147
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 148
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/CompletableSubject;->a(Lio/reactivex/subjects/CompletableSubject$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lio/reactivex/subjects/CompletableSubject$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/CompletableSubject;->b(Lio/reactivex/subjects/CompletableSubject$a;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_2
    :goto_0
    return-void
.end method
