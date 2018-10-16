.class Landroid/support/v4/media/MediaBrowserServiceCompat$f;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$e;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic g:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 572
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->g:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public c()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 576
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->g:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->g:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->d:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    return-object v0

    .line 579
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/media/MediaBrowserService;

    .line 580
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 581
    new-instance v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method
