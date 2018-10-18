.class Landroid/support/v4/media/MediaBrowserServiceCompat$e;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$d;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic f:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 514
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 518
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26;->a(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b:Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .line 553
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->e:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->e:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 557
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 563
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 566
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$b;Landroid/os/Bundle;)V
    .locals 1

    .line 526
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$b;)V

    .line 547
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->f:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    return-void
.end method
