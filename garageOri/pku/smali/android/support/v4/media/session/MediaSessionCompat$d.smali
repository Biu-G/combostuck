.class Landroid/support/v4/media/session/MediaSessionCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$a;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$d$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/media/MediaMetadataCompat;

.field h:I

.field i:Z

.field j:I

.field k:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 3379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3367
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->c:Z

    .line 3368
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    .line 3380
    invoke-static {p1, p2}, Landroid/support/v4/media/session/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    .line 3381
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {p2}, Landroid/support/v4/media/session/a;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p2

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$d$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$d$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$d;)V

    invoke-direct {p1, p2, v0, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 3385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3367
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->c:Z

    .line 3368
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    .line 3386
    invoke-static {p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    .line 3387
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/a;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$d$a;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$d$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$d;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 3402
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 3483
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 3568
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 3476
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->g:Landroid/support/v4/media/MediaMetadataCompat;

    .line 3477
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3478
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object p1

    .line 3477
    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 1

    .line 3412
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    .line 3413
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object p1

    .line 3412
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 3393
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->b:Ljava/lang/Object;

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 3396
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .line 3455
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 3456
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3458
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3460
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3464
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3465
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 3466
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object p1

    .line 3465
    :goto_1
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3506
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 3428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 3429
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3431
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3433
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3437
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3439
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 3493
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3497
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 3498
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3501
    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3418
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3423
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/a;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 3444
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->c:Z

    .line 3445
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 3407
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .line 3488
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->b(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 3520
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->i:Z

    if-eq v0, p1, :cond_1

    .line 3521
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->i:Z

    .line 3522
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3524
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3526
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onCaptioningEnabledChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3530
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 3450
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 3511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 3512
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->h:I

    goto :goto_0

    .line 3514
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public d()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .line 3471
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 3536
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->j:I

    if-eq v0, p1, :cond_1

    .line 3537
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->j:I

    .line 3538
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3540
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3542
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onRepeatModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3546
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 3573
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public e(I)V
    .locals 2

    .line 3552
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->k:I

    if-eq v0, p1, :cond_1

    .line 3553
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->k:I

    .line 3554
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3556
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3558
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3562
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 3590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3593
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
