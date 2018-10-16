.class public Lcom/amap/api/mapcore2d/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bc;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bc;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc$a;->a:Lcom/amap/api/mapcore2d/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 506
    check-cast p2, Lcom/amap/api/maps2d/model/LatLng;

    .line 507
    check-cast p3, Lcom/amap/api/maps2d/model/LatLng;

    .line 508
    iget-wide v0, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    float-to-double v2, p1

    iget-wide v4, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    .line 509
    iget-wide v4, p2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v6, p3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide p1, p2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v6, p1

    mul-double v2, v2, v6

    add-double/2addr v4, v2

    .line 510
    new-instance p1, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p1, v0, v1, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p1
.end method
