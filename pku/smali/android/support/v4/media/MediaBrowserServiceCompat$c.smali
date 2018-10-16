.class Landroid/support/v4/media/MediaBrowserServiceCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$b;
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;

.field c:Landroid/os/Messenger;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 296
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/support/v4/media/MediaBrowserServiceCompat$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 445
    iget-object v0, p1, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/Pair;

    .line 448
    iget-object v2, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p3, v2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, p2, p1, v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$a;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 316
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$c$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$c$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$c;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 2

    .line 457
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->c:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 461
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->e:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->e:Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v1

    .line 462
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 429
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$c$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$c$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$c;Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 412
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 470
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->d:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 416
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$c$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$c$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$c;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompatApi21$a;
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const-string v1, "extra_client_version"

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "extra_client_version"

    .line 352
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 353
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->c:Landroid/os/Messenger;

    .line 354
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_service_version"

    const/4 v3, 0x2

    .line 355
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extra_messenger"

    .line 356
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->c:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    move-result-object v2

    const-string v3, "extra_session_binder"

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 360
    :cond_0
    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 359
    :goto_0
    invoke-static {v1, v3, v2}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    .line 362
    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 367
    :goto_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    new-instance v10, Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v3, v10

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$i;)V

    iput-object v10, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    .line 369
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    .line 371
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    if-nez v1, :cond_4

    .line 376
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    .line 377
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 378
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 380
    :cond_5
    :goto_2
    new-instance p2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$a;

    .line 381
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c<",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .line 387
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$c$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$c$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$c;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$c;)V

    .line 408
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->d:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method
