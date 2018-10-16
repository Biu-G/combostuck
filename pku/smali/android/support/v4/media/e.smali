.class Landroid/support/v4/media/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/e$b;,
        Landroid/support/v4/media/e$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/e$a;)Ljava/lang/Object;
    .locals 1

    .line 29
    new-instance v0, Landroid/support/v4/media/e$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/e$b;-><init>(Landroid/support/v4/media/e$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ItemCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V

    return-void
.end method
