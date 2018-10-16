.class public Lcn/edu/pku/pkurunner/Map/MapPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/MapPresenter$a;,
        Lcn/edu/pku/pkurunner/Map/MapPresenter$b;,
        Lcn/edu/pku/pkurunner/Map/MapPresenter$c;
    }
.end annotation


# instance fields
.field private a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

.field private b:D

.field private c:D

.field private d:I

.field private e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

.field private h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lio/reactivex/disposables/Disposable;

.field private n:Lcn/edu/pku/pkurunner/Model/Point;

.field private o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

.field private p:Z


# direct methods
.method public constructor <init>(Lcn/edu/pku/pkurunner/Map/MapContract$View;)V
    .locals 2
    .param p1    # Lcn/edu/pku/pkurunner/Map/MapContract$View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 71
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->i:I

    .line 99
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->j:Z

    .line 101
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->k:Z

    .line 103
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    .line 237
    new-instance v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;Lcn/edu/pku/pkurunner/Map/MapPresenter$1;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    .line 108
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    .line 109
    new-instance p1, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D
    .locals 0

    .line 46
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    return-wide p1
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Lcn/edu/pku/pkurunner/Map/MapContract$View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    return-object p0
.end method

.method private a()V
    .locals 7

    .line 309
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->i:I

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 310
    new-instance v1, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    iget-wide v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    double-to-int v3, v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget v5, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/edu/pku/pkurunner/Model/PartialRecord;-><init>(IILjava/util/Date;I)V

    .line 312
    :try_start_0
    invoke-static {v1}, Lcn/edu/pku/pkurunner/Data;->savePartialRecordToDatabase(Lcn/edu/pku/pkurunner/Model/PartialRecord;)I

    move-result v1

    .line 313
    invoke-static {v1, v0}, Lcn/edu/pku/pkurunner/Data;->provideTrackForPartialRecord(ILjava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 314
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$gVr3nMKFSZqbV-wEva13GScpWj0;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$gVr3nMKFSZqbV-wEva13GScpWj0;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    new-instance v2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$wOtD1Kgu_Kot7keNKNwnzli970c;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$wOtD1Kgu_Kot7keNKNwnzli970c;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 315
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Lcn/edu/pku/pkurunner/Exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/DataException;->printStackTrace()V

    .line 324
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v2, 0x7f0f00e0

    const/4 v3, -0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/DataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/DataException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private a(Landroid/location/GpsStatus;)V
    .locals 12

    .line 335
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    .line 338
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 339
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 340
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v5, 0x7f0f00e8

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    div-double v6, v1, v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v8, v3

    const/4 v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-interface {p1, v5, v6, v7, v8}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->setAssistantText(ID[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Current location (%f, %f)."

    const/4 v3, 0x2

    .line 246
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(IIDDI)V

    .line 250
    sget-object v4, Lcn/edu/pku/pkurunner/Map/MapPresenter$1;->a:[I

    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 294
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 295
    iget-boolean v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    if-nez v3, :cond_5

    .line 296
    iget-object v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getAMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v3

    invoke-static {v2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto/16 :goto_1

    .line 271
    :pswitch_0
    iget-boolean v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    if-nez v4, :cond_0

    .line 272
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v4}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getAMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v4

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/maps2d/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 274
    :cond_0
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v4}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getLocationListener()Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 277
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v4}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getAMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v3, v3, [Lcom/amap/api/maps2d/model/LatLng;

    iget-object v8, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {v5, v3}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    const/high16 v5, -0x10000

    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    .line 280
    iget-object v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v3, v2, v4, v8, v9}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b(Lcn/edu/pku/pkurunner/Model/Point;FJ)V

    .line 282
    iget-object v10, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    iget-wide v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v11, v3, v8

    iget-wide v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    iget-wide v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    iget-wide v8, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    div-double/2addr v3, v8

    .line 284
    invoke-static {v1, v3, v4}, Lcn/edu/pku/pkurunner/Map/SpeedHelper;->toUnitOf(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;D)D

    move-result-wide v15

    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    sget-object v3, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->C:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    if-ne v1, v3, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    .line 282
    :goto_0
    invoke-interface/range {v10 .. v17}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->updateTextView(DDDZ)V

    .line 290
    :cond_2
    iput-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    goto :goto_2

    .line 253
    :pswitch_1
    iget-boolean v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    if-nez v3, :cond_3

    .line 254
    iget-object v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getAMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v3

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/maps2d/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 256
    :cond_3
    iget-object v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getLocationListener()Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 259
    iget-object v3, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v3, v2, v4, v7, v8}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a(Lcn/edu/pku/pkurunner/Model/Point;FJ)Z

    move-result v1

    iput-boolean v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->p:Z

    .line 261
    iget-boolean v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->p:Z

    if-nez v1, :cond_4

    .line 262
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b()V

    .line 263
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v3, 0x7f0f00e2

    const/4 v4, -0x1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 266
    :cond_4
    iput-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    goto :goto_2

    .line 298
    :cond_5
    :goto_1
    iget-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getLocationListener()Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 302
    :goto_2
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->i:I

    sub-int/2addr v1, v2

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_6

    .line 303
    invoke-direct/range {p0 .. p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a()V

    .line 304
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->i:I

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    iget-boolean v0, p1, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v2, 0x7f0f00f6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;->c:Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-interface {v0, v2, v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->updateWaitingDialog(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->dismissWaitingDialog()V

    .line 128
    iget-boolean p1, p1, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;->a:Z

    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00eb

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f00e5

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapPresenter;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->p:Z

    return p1
.end method

.method static synthetic b(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D
    .locals 0

    .line 46
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    return-wide p1
.end method

.method static synthetic b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 367
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->showNotification()V

    .line 368
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->switchToRunning()V

    .line 369
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f0f00f4

    invoke-interface {v0, v3, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->toggleRunningIndication(Z)V

    .line 371
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->indicatorShowUpAnimation()V

    .line 373
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->requireWakeLock()V

    .line 374
    iput-boolean v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    .line 375
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->registerMapCenterHelper()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$-Mq7qGM0f7UlJY-jjsXo3pnxHtM;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$-Mq7qGM0f7UlJY-jjsXo3pnxHtM;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 376
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 377
    invoke-virtual {v0, v3, v4, v2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$2fZQSx7x9KflVNf4easxxfVga00;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$2fZQSx7x9KflVNf4easxxfVga00;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 378
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->m:Lio/reactivex/disposables/Disposable;

    .line 380
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e()V

    .line 382
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const-wide/16 v2, 0x0

    .line 383
    iput-wide v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    .line 384
    iput-wide v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    .line 385
    iput v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d:I

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    .line 387
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 389
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->o:Lcn/edu/pku/pkurunner/Map/MapPresenter$a;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a()V

    .line 391
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->stopAndSwitchToIdle()V

    .line 163
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->syncData()V

    return-void
.end method

.method private b(Landroid/location/GpsStatus;)V
    .locals 9

    .line 352
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 355
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    .line 358
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->notifyGPSInfo()V

    .line 359
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v4, 0x7f0f00e9

    div-double/2addr v0, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v4, v0, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->setAssistantText(ID[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 376
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->l:Z

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f00e5

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    return-wide v0
.end method

.method private c()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->switchToRunning()V

    .line 400
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f0f00f3

    invoke-interface {v0, v3, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 402
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 404
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->p:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V

    .line 406
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->n:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f0f00ef

    invoke-interface {p1, v2, v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->dismissWaitingDialog()V

    .line 136
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$1;->b:[I

    move-object v3, p1

    check-cast v3, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;

    iget-object v3, v3, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;->a:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 147
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v3, 0x7f0f00e4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00e3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->openDevelopSettings()V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00e1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->openGPSSettings()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v3, 0x7f0f00e7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    return-wide v0
.end method

.method private d()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->switchToPaused()V

    .line 415
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f0f00f1

    invoke-interface {v0, v3, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 417
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 419
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Point;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private e()V
    .locals 2

    .line 491
    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$9cnUfgx5J6BFNHk1KjCJNmdCOko;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$9cnUfgx5J6BFNHk1KjCJNmdCOko;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    const-string v1, "presenter-location"

    invoke-static {v0, v1}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSLocationListener;Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$IsgPUkzGE6ZUlTHI18uZa6_N5Io;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$IsgPUkzGE6ZUlTHI18uZa6_N5Io;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    const-string v1, "presenter-location"

    invoke-static {v0, v1}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->setLocatingPointEnabled(Z)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->clearPartialData()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "presenter-location"

    .line 500
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Ljava/lang/String;)V

    const-string v0, "presenter-location"

    .line 501
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/GPSManager;->b(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->setLocatingPointEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$-Mq7qGM0f7UlJY-jjsXo3pnxHtM(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$2JY7UOhu_yxTuXkti9snIQt5vcM(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$2fZQSx7x9KflVNf4easxxfVga00(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$8KvpTCl0sbcxdVRarYo_hXKZDmM(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$9cnUfgx5J6BFNHk1KjCJNmdCOko(Lcn/edu/pku/pkurunner/Map/MapPresenter;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic lambda$EIntyysjfiNuKBbc_XAvRHVu5XQ(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$G_dX9SreQDKb_7T3vlcx_us0WKk(Lcn/edu/pku/pkurunner/Map/MapPresenter;Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;)V

    return-void
.end method

.method public static synthetic lambda$IsgPUkzGE6ZUlTHI18uZa6_N5Io(Lcn/edu/pku/pkurunner/Map/MapPresenter;Landroid/location/GpsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Landroid/location/GpsStatus;)V

    return-void
.end method

.method public static synthetic lambda$JMtasezV3-re50CKHky8KtNyLiI(Lcn/edu/pku/pkurunner/Map/MapPresenter;Landroid/location/GpsStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Landroid/location/GpsStatus;)V

    return-void
.end method

.method public static synthetic lambda$T1Htb4xPQxOQpyOmOoJcr-goN_g(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$exS7hqVGY1QmKtBss_pa2e0dNAc(Lcn/edu/pku/pkurunner/Map/MapPresenter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$gVr3nMKFSZqbV-wEva13GScpWj0(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$iLWNwYB0m12Nmkwu4PlMi3Y7zyM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$wOtD1Kgu_Kot7keNKNwnzli970c(Lcn/edu/pku/pkurunner/Map/MapPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunningPaused()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFabPauseClick(Z)Z
    .locals 4

    .line 173
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$1;->a:[I

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "Unexpected branch when pause button pressed."

    .line 185
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00ed

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    return v1

    .line 182
    :cond_0
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d()V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFabRunClick(Z)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00f5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeWaitingDialog(I[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->b()Lio/reactivex/Observable;

    move-result-object p1

    .line 121
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$G_dX9SreQDKb_7T3vlcx_us0WKk;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$G_dX9SreQDKb_7T3vlcx_us0WKk;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$2JY7UOhu_yxTuXkti9snIQt5vcM;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$2JY7UOhu_yxTuXkti9snIQt5vcM;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 123
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v0, 0x7f0f00ec

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f00df

    .line 159
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00dc

    .line 160
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00de

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$exS7hqVGY1QmKtBss_pa2e0dNAc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$exS7hqVGY1QmKtBss_pa2e0dNAc;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00dd

    sget-object v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$iLWNwYB0m12Nmkwu4PlMi3Y7zyM;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$iLWNwYB0m12Nmkwu4PlMi3Y7zyM;

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStep()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-ne v0, v1, :cond_0

    .line 231
    iget v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d:I

    :cond_0
    return-void
.end method

.method public pauseAutoLocating()V
    .locals 2

    const/4 v0, 0x0

    .line 467
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->j:Z

    .line 468
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseGPSAssistant()V
    .locals 2

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->k:Z

    const-string v1, "presenter-status"

    .line 454
    invoke-static {v1}, Lcn/edu/pku/pkurunner/Map/GPSManager;->b(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->toggleGPSAssistantIndication(Z)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startAutoLocating()V
    .locals 2

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->j:Z

    .line 461
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public startGPSAssistant()V
    .locals 3

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->k:Z

    .line 447
    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$JMtasezV3-re50CKHky8KtNyLiI;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$JMtasezV3-re50CKHky8KtNyLiI;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    const-string v2, "presenter-status"

    invoke-static {v1, v2}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->toggleGPSAssistantIndication(Z)V

    return-void
.end method

.method public stopAndSwitchToIdle()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->dismissNotification()V

    .line 428
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->toggleRunningIndication(Z)V

    .line 429
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->switchToReset()V

    .line 431
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->releaseWakeLock()V

    .line 432
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->m:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 433
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->unregisterMapCenterHelper()V

    .line 435
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f()V

    .line 437
    :cond_0
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->pauseGPSAssistant()V

    .line 439
    :cond_1
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 440
    iput v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->i:I

    .line 441
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->h:Lcn/edu/pku/pkurunner/Map/MapPresenter$b;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->c(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)V

    return-void
.end method

.method public syncData()V
    .locals 8

    const/4 v0, 0x1

    .line 204
    :try_start_0
    new-instance v7, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b:D

    double-to-int v3, v3

    iget-wide v4, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c:D

    double-to-int v4, v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget v6, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Ljava/lang/String;IILjava/util/Date;I)V

    .line 205
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v7, v0}, Lcn/edu/pku/pkurunner/Model/Record;->setUploaded(Z)V

    .line 207
    invoke-virtual {v7, v0}, Lcn/edu/pku/pkurunner/Model/Record;->setVerified(Z)V

    .line 209
    :cond_0
    invoke-static {v7}, Lcn/edu/pku/pkurunner/Data;->saveRecordToDatabase(Lcn/edu/pku/pkurunner/Model/Record;)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->f:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcn/edu/pku/pkurunner/Data;->provideTrackForRecord(ILjava/util/ArrayList;)Lio/reactivex/Observable;

    move-result-object v1

    .line 211
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$T1Htb4xPQxOQpyOmOoJcr-goN_g;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$T1Htb4xPQxOQpyOmOoJcr-goN_g;

    .line 212
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$EIntyysjfiNuKBbc_XAvRHVu5XQ;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$EIntyysjfiNuKBbc_XAvRHVu5XQ;

    new-instance v3, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$8KvpTCl0sbcxdVRarYo_hXKZDmM;

    invoke-direct {v3, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$8KvpTCl0sbcxdVRarYo_hXKZDmM;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    .line 213
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Lcn/edu/pku/pkurunner/Exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 222
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Exception/DataException;->printStackTrace()V

    .line 223
    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    const v3, 0x7f0f00e6

    const/4 v4, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Exception/DataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-interface {v2, v3, v4, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Exception/DataException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public syncOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f09005e

    .line 474
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09005d

    .line 475
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 476
    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->j:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 477
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->k:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public updateUnitPreference()V
    .locals 2

    .line 482
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getSpeedUnitPreference()Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 483
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Data;->setSpeedUnitPreference(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V

    .line 484
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->g:Lcn/edu/pku/pkurunner/Map/MapContract$View;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter;->e:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->updateTextSci(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V

    return-void
.end method
