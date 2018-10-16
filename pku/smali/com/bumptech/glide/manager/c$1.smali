.class Lcom/bumptech/glide/manager/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/c;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    iget-object p2, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/c;->b:Z

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-object v1, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/c;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bumptech/glide/manager/c;->b:Z

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-boolean p1, p1, Lcom/bumptech/glide/manager/c;->b:Z

    if-eq p2, p1, :cond_1

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConnectivityMonitor"

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectivity changed, isConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/c;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-object p1, p1, Lcom/bumptech/glide/manager/c;->a:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    iget-object p2, p0, Lcom/bumptech/glide/manager/c$1;->a:Lcom/bumptech/glide/manager/c;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/c;->b:Z

    invoke-interface {p1, p2}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    :cond_1
    return-void
.end method
