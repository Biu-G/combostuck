.class public Lcom/amap/api/maps2d/MapFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/maps2d/AMap;

.field private b:Lcom/amap/api/interfaces/IMapFragmentDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps2d/MapFragment;
    .locals 1

    .line 35
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps2d/MapFragment;->newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/MapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/MapFragment;
    .locals 4

    .line 46
    new-instance v0, Lcom/amap/api/maps2d/MapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps2d/MapFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/amap/api/maps2d/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "MapOptions"

    .line 51
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/MapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getMap"

    const-string v2, "MapFragment"

    .line 92
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ar;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MapFragment"

    .line 142
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "onCreateView"

    if-nez p3, :cond_0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const-string p2, "MapFragment"

    .line 160
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 216
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "onDestroyView"

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 202
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const-string p2, "onInflate"

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v1, p3}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onInflate(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "MapFragment"

    .line 128
    invoke-static {p1, p3, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    const-string v0, "onLowMemory"

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 231
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "onPause"

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 189
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "onResume"

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 175
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onSaveInstanceState"

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapFragment"

    .line 244
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
