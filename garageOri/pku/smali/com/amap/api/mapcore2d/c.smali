.class public Lcom/amap/api/mapcore2d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps2d/LocationSource;
.implements Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/os/Bundle;

.field private d:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

.field private e:Lcom/amap/api/mapcore2d/cn;

.field private f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/c;->a:Z

    const-wide/16 v0, 0x7d0

    .line 138
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/c;->b:J

    .line 143
    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cn;->c()V

    .line 286
    new-instance v0, Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setOnceLocation(Z)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-wide v1, p0, Lcom/amap/api/mapcore2d/c;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    .line 297
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cn;->a()V

    .line 299
    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/c;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/c;->a(Z)V

    goto :goto_1

    .line 271
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/c;->a(Z)V

    :goto_1
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 257
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    .line 261
    :cond_0
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/c;->b:J

    return-void
.end method

.method public activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V
    .locals 2

    .line 152
    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->d:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 153
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    if-nez p1, :cond_0

    .line 154
    new-instance p1, Lcom/amap/api/mapcore2d/cn;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore2d/cn;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    .line 155
    new-instance p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 157
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V

    .line 159
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/c;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 160
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/c;->a:Z

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setOnceLocation(Z)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 163
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    sget-object v0, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Hight_Accuracy:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->setLocationMode(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;)Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    .line 165
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->f:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/cn;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V

    .line 171
    iget-object p1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cn;->a()V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->d:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 182
    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cn;->b()V

    .line 184
    iget-object v1, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cn;->c()V

    .line 186
    :cond_0
    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->e:Lcom/amap/api/mapcore2d/cn;

    return-void
.end method

.method public onLocationChanged(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;)V
    .locals 4

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->d:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "errorInfo"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "locationType"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLocationType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 215
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "AdCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Address"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "AoiName"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "City"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "CityCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Country"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "District"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Street"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "StreetNum"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getStreetNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "PoiName"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getPoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Province"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 229
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Floor"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Bearing"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 231
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "BuildingId"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    const-string v1, "Altitude"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setExtras(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lcom/amap/api/mapcore2d/c;->d:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
