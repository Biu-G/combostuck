.class public Lcom/amap/api/mapcore2d/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/interfaces/IMapFragmentDelegate;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/interfaces/IAMap;

.field private c:Lcom/amap/api/maps2d/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 117
    sget-object v0, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 119
    sput v0, Lcom/amap/api/mapcore2d/q;->l:I

    const/16 v1, 0x1e0

    const/16 v2, 0x140

    if-le v0, v2, :cond_1

    if-gt v0, v1, :cond_0

    const/16 v3, 0x180

    .line 123
    sput v3, Lcom/amap/api/mapcore2d/q;->j:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x200

    .line 125
    sput v3, Lcom/amap/api/mapcore2d/q;->j:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x100

    .line 130
    sput v3, Lcom/amap/api/mapcore2d/q;->j:I

    :goto_0
    const/16 v3, 0x78

    const/16 v4, 0x12

    const v5, 0x3f19999a    # 0.6f

    if-gt v0, v3, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 134
    sput v0, Lcom/amap/api/mapcore2d/q;->a:F

    goto :goto_1

    :cond_2
    const/16 v3, 0xa0

    if-gt v0, v3, :cond_3

    .line 136
    sput v5, Lcom/amap/api/mapcore2d/q;->a:F

    .line 137
    invoke-static {v4}, Lcom/amap/api/mapcore2d/q;->a(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0xf0

    if-gt v0, v3, :cond_4

    const v0, 0x3f5eb852    # 0.87f

    .line 139
    sput v0, Lcom/amap/api/mapcore2d/q;->a:F

    goto :goto_1

    :cond_4
    if-gt v0, v2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    sput v0, Lcom/amap/api/mapcore2d/q;->a:F

    goto :goto_1

    :cond_5
    if-gt v0, v1, :cond_6

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 144
    sput v0, Lcom/amap/api/mapcore2d/q;->a:F

    goto :goto_1

    :cond_6
    const v0, 0x3fe66666    # 1.8f

    .line 153
    sput v0, Lcom/amap/api/mapcore2d/q;->a:F

    .line 156
    :goto_1
    sget v0, Lcom/amap/api/mapcore2d/q;->a:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_7

    .line 157
    sput v4, Lcom/amap/api/mapcore2d/q;->c:I

    :cond_7
    return-void
.end method

.method a(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCamera()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    new-instance v2, Lcom/amap/api/maps2d/CameraUpdate;

    iget-object v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v4, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget v5, v0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v3, v4, v5, v0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    invoke-interface {v1, v2}, Lcom/amap/api/interfaces/IAMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IAMap;->getAMapUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 172
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    .line 173
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 174
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setCompassEnabled(Z)V

    .line 175
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setScaleControlsEnabled(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setLogoPosition(I)V

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/interfaces/IAMap;->setMapType(I)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IAMap;->setZOrderOnTop(Z)V

    :cond_1
    return-void
.end method

.method public getMap()Lcom/amap/api/interfaces/IAMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->a()V

    .line 57
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    return-object v0
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "MapFragmentDelegateImp"

    const-string v0, "onCreate"

    const/16 v1, 0x71

    .line 73
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-nez p2, :cond_2

    .line 82
    sget-object p2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ar;->setContext(Landroid/content/Context;)V

    .line 85
    :cond_0
    sget-object p1, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->a()V

    .line 90
    new-instance p1, Lcom/amap/api/mapcore2d/b;

    sget-object p2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "MapOptions"

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 101
    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    sget-object p1, Lcom/amap/api/maps2d/AMapOptions;->CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/maps2d/AMapOptions;)V

    const-string p1, "MapFragmentDelegateImp"

    const-string p2, "onCreateView"

    const/16 p3, 0x71

    .line 108
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-interface {p1}, Lcom/amap/api/interfaces/IAMap;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/interfaces/IAMap;->clear()V

    .line 221
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/interfaces/IAMap;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ar;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ar;->setContext(Landroid/content/Context;)V

    .line 68
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    return-void
.end method

.method public onLowMemory()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onLowMemory"

    const-string v1, "onLowMemory run"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IAMap;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IAMap;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->b:Lcom/amap/api/interfaces/IAMap;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ar;->getMap()Lcom/amap/api/interfaces/IAMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-eqz p1, :cond_1

    .line 242
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/maps2d/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string v1, "MapOptions"

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setOptions(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ar;->c:Lcom/amap/api/maps2d/AMapOptions;

    return-void
.end method
