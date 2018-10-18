.class public Lcom/amap/api/maps2d/MapView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/interfaces/IMapFragmentDelegate;

.field private b:Lcom/amap/api/maps2d/AMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setOptions(Lcom/amap/api/maps2d/AMapOptions;)V

    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    if-nez v1, :cond_2

    .line 128
    new-instance v1, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getMap"

    const-string v2, "MapView"

    .line 121
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;
    .locals 7

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v2

    const-string v3, "com.amap.api.wrapper.MapFragmentDelegateWrapper"

    const-class v4, Lcom/amap/api/mapcore2d/ar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/mapcore2d/eb;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/interfaces/IMapFragmentDelegate;

    iput-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/interfaces/IMapFragmentDelegate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ar;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onCreate"

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 146
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {p0, p1, v1}, Lcom/amap/api/maps2d/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MapView"

    .line 153
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "MapView"

    .line 151
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapView"

    .line 195
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    const-string v0, "onLowMemory"

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapView"

    .line 208
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    const-string v0, "onPause"

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapView"

    .line 181
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    const-string v0, "onResume"

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapView"

    .line 167
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onSaveInstanceState"

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MapView"

    .line 223
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
