.class Landroid/support/v4/media/MediaBrowserCompat$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$c;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/media/MediaBrowserCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .locals 0

    .line 1775
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$c$1;->c:Landroid/support/v4/media/MediaBrowserCompat$c;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$c$1;->a:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1778
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$1;->a:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$c$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
