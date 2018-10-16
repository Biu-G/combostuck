.class Landroid/support/v4/media/MediaBrowserCompat$f$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$f$a;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserCompat$f$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$f$a;Landroid/content/ComponentName;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1555
    sget-boolean v0, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaServiceConnection.onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$f;->g:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$f;->b()V

    .line 1564
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1569
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/MediaBrowserCompat$h;

    .line 1570
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    iput-object v1, v0, Landroid/support/v4/media/MediaBrowserCompat$f;->i:Landroid/os/Messenger;

    .line 1571
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 1574
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:I

    .line 1575
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f$a$2;->b:Landroid/support/v4/media/MediaBrowserCompat$f$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f$a;->a:Landroid/support/v4/media/MediaBrowserCompat$f;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$f;->c:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method
