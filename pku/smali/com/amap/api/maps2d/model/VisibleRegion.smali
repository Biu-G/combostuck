.class public final Lcom/amap/api/maps2d/model/VisibleRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/l;


# instance fields
.field private final a:I

.field public final farLeft:Lcom/amap/api/maps2d/model/LatLng;

.field public final farRight:Lcom/amap/api/maps2d/model/LatLng;

.field public final latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

.field public final nearLeft:Lcom/amap/api/maps2d/model/LatLng;

.field public final nearRight:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amap/api/maps2d/model/l;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/l;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/VisibleRegion;->CREATOR:Lcom/amap/api/maps2d/model/l;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->a:I

    .line 56
    iput-object p2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    .line 57
    iput-object p3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 58
    iput-object p4, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    .line 59
    iput-object p5, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 60
    iput-object p6, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 124
    :cond_0
    instance-of v1, p1, Lcom/amap/api/maps2d/model/VisibleRegion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 126
    :cond_1
    check-cast p1, Lcom/amap/api/maps2d/model/VisibleRegion;

    .line 127
    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 128
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    .line 129
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 130
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 131
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "nearLeft"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    .line 139
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nearRight"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 140
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "farLeft"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    .line 141
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "farRight"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    .line 142
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "latLngBounds"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 143
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 138
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 86
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/model/l;->a(Lcom/amap/api/maps2d/model/VisibleRegion;Landroid/os/Parcel;I)V

    return-void
.end method
