.class Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;)V
    .locals 0

    .line 661
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 666
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;->a()V

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;->b()V

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->b:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$a;->c()V

    .line 685
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback$b;->a:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    return-void
.end method
