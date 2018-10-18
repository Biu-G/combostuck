.class Landroid/support/v4/media/j;
.super Landroid/support/v4/media/i;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/j$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/media/i;-><init>(Landroid/content/Context;)V

    const-string v0, "media_session"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Landroid/support/v4/media/j;->a:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/MediaSessionManager$b;)Z
    .locals 1

    .line 36
    instance-of v0, p1, Landroid/support/v4/media/j$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Landroid/support/v4/media/j;->a:Landroid/media/session/MediaSessionManager;

    check-cast p1, Landroid/support/v4/media/j$a;

    iget-object p1, p1, Landroid/support/v4/media/j$a;->a:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
