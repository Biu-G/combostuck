.class public Lcom/amap/api/maps2d/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/maps2d/AMap;

.field private b:Lcom/amap/api/interfaces/IMapFragmentDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 1

    .line 39
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps2d/SupportMapFragment;->newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 4

    .line 50
    new-instance v0, Lcom/amap/api/maps2d/SupportMapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps2d/SupportMapFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/amap/api/maps2d/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "MapOptions"

    .line 55
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getMap"

    const-string v2, "SupportMapFragment"

    .line 87
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amap/api/mapcore2d/ar;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ar;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/interfaces/IMapFragmentDelegate;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "onCreateView"

    if-nez p3, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const-string p2, "SupportMapFragment"

    .line 142
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 186
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "onDestroyView"

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 175
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const-string p2, "onInflate"

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v1, p3}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onInflate(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SupportMapFragment"

    .line 117
    invoke-static {p1, p3, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    const-string v0, "onLowMemory"

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 198
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 160
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "onPause"

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 165
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 154
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onSaveInstanceState"

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/interfaces/IMapFragmentDelegate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SupportMapFragment"

    .line 208
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
