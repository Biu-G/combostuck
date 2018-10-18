.class Landroid/support/v4/media/i;
.super Landroid/support/v4/media/k;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/media/k;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Landroid/support/v4/media/i;->b:Landroid/content/Context;

    return-void
.end method

.method private c(Landroid/support/v4/media/MediaSessionManager$b;)Z
    .locals 3
    .param p1    # Landroid/support/v4/media/MediaSessionManager$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-virtual {p0}, Landroid/support/v4/media/i;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 46
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$b;->b()I

    move-result v2

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$b;->c()I

    move-result p1

    .line 44
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/support/v4/media/MediaSessionManager$b;)Z
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaSessionManager$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/media/i;->c(Landroid/support/v4/media/MediaSessionManager$b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/media/k;->a(Landroid/support/v4/media/MediaSessionManager$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
