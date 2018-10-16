.class public final Lcom/amap/api/mapcore2d/fi;
.super Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fi;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fi;->e:Ljava/lang/String;

    const-string v0, "new"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fi;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->g:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fi;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fi;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fi;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/fi;->j:J

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fi;->d:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fi;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/mapcore2d/fi;->d:I

    return-void

    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/amap/api/mapcore2d/fi;->d:I

    return-void

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/amap/api/mapcore2d/fi;->d:I

    return-void

    :cond_2
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fi;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->e:Ljava/lang/String;

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fi;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setFloor(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "F"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "AMapLocationModel"

    const-string v2, "setFloor"

    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/fi;->floor:Ljava/lang/String;

    return-void
.end method

.method public final toJson(I)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->toJson(I)Lorg/json/JSONObject;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "retype"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cens"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "poiid"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->buildingId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "floor"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->floor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "coord"

    iget v1, p0, Lcom/amap/api/mapcore2d/fi;->d:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mcell"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "desc"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->desc:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "address"

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fi;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fi;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p1, "offpct"

    invoke-static {v0, p1}, Lcom/amap/api/mapcore2d/gf;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "offpct"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->g:Lorg/json/JSONObject;

    const-string v2, "offpct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :pswitch_1
    const-string p1, "type"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fi;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isReversegeo"

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/fi;->a:Z

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "AMapLocationModel"

    const-string v2, "toStr"

    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final toStr(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->toJson(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "nb"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fi;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AMapLocationModel"

    const-string v2, "toStr part2"

    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
