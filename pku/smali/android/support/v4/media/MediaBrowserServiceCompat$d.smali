.class Landroid/support/v4/media/MediaBrowserServiceCompat$d;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$c;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 479
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 483
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23;->a(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->b:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .line 491
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c;)V

    .line 509
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->e:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method
