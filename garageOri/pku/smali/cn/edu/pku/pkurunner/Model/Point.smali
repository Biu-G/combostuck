.class public Lcn/edu/pku/pkurunner/Model/Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "track"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BEGIN:I = 0x1

.field public static final STATUS_END:I = 0x2

.field public static final STATUS_RUNNING:I


# instance fields
.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "longitude"
    .end annotation
.end field

.field private recordDbId:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordDbId"
    .end annotation
.end field

.field private sequence:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "sequence"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "status"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Point$1;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Model/Point$1;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIDDI)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    .line 125
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->sequence:I

    .line 126
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/Point;->recordDbId:I

    .line 127
    iput-wide p5, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    .line 128
    iput-wide p3, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    .line 129
    iput p7, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    .line 118
    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iput-wide v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    .line 119
    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iput-wide v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    .line 120
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    return-void
.end method

.method public static assignInfoToTrack(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    new-instance v10, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->getStatus()I

    move-result v9

    move-object v2, v10

    move v3, v1

    move v4, p0

    invoke-direct/range {v2 .. v9}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(IIDDI)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 31
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 87
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    return-wide v0
.end method

.method public getRecordDbId()I
    .locals 1

    .line 59
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->recordDbId:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 45
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->sequence:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 101
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    return-void
.end method

.method public setRecordDbId(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->recordDbId:I

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->sequence:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    return-void
.end method

.method public toJSONArray()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 135
    :try_start_0
    iget-wide v2, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    const/4 v1, 0x1

    .line 136
    iget-wide v2, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    const/4 v1, 0x2

    .line 137
    iget v2, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    throw v0
.end method

.method public toLatLng()Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .line 146
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    iget-wide v3, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->recordDbId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 188
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Point;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Point;->sequence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Point;->recordDbId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 192
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/Point;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 193
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Point;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
