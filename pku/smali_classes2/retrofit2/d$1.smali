.class Lretrofit2/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/d;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/Callback;

.field final synthetic b:Lretrofit2/d;


# direct methods
.method constructor <init>(Lretrofit2/d;Lretrofit2/Callback;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lretrofit2/d$1;->b:Lretrofit2/d;

    iput-object p2, p0, Lretrofit2/d$1;->a:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 135
    :try_start_0
    iget-object v0, p0, Lretrofit2/d$1;->a:Lretrofit2/Callback;

    iget-object v1, p0, Lretrofit2/d$1;->b:Lretrofit2/d;

    invoke-interface {v0, v1, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 130
    invoke-direct {p0, p2}, Lretrofit2/d$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 116
    :try_start_0
    iget-object p1, p0, Lretrofit2/d$1;->b:Lretrofit2/d;

    invoke-virtual {p1, p2}, Lretrofit2/d;->a(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :try_start_1
    iget-object p2, p0, Lretrofit2/d$1;->a:Lretrofit2/Callback;

    iget-object v0, p0, Lretrofit2/d$1;->b:Lretrofit2/d;

    invoke-interface {p2, v0, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 118
    invoke-direct {p0, p1}, Lretrofit2/d$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
