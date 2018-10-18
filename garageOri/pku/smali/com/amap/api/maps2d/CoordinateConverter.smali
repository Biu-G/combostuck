.class public Lcom/amap/api/maps2d/CoordinateConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/CoordinateConverter$CoordType;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

.field private b:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    .line 51
    iput-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 0

    .line 124
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/cl;->a(DD)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    return-object v1

    .line 89
    :cond_1
    :try_start_0
    sget-object v0, Lcom/amap/api/maps2d/CoordinateConverter$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/CoordinateConverter$CoordType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ci;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cg;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    iget-object v1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CoordinateConverter;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public from(Lcom/amap/api/maps2d/CoordinateConverter$CoordType;)Lcom/amap/api/maps2d/CoordinateConverter;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    return-object p0
.end method
