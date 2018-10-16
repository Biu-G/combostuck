.class public Lcn/edu/pku/pkurunner/Model/PartialPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "partial_track"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/edu/pku/pkurunner/Model/Point;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->id:I

    .line 102
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->sequence:I

    .line 103
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->recordDbId:I

    .line 104
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->latitude:D

    .line 105
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->longitude:D

    .line 106
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Point;->getStatus()I

    move-result p1

    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->status:I

    return-void
.end method

.method public static assignInfoToTrack(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/PartialPoint;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Point;

    .line 128
    new-instance v3, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    invoke-direct {v3, v2}, Lcn/edu/pku/pkurunner/Model/PartialPoint;-><init>(Lcn/edu/pku/pkurunner/Model/Point;)V

    .line 129
    invoke-virtual {v3, v1}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->setSequence(I)V

    .line 130
    invoke-virtual {v3, p0}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->setRecordDbId(I)V

    .line 131
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->longitude:D

    return-wide v0
.end method

.method public getRecordDbId()I
    .locals 1

    .line 51
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->recordDbId:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 37
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->sequence:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 93
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->status:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->id:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->longitude:D

    return-void
.end method

.method public setRecordDbId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->recordDbId:I

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->sequence:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->status:I

    return-void
.end method

.method public toPoint()Lcn/edu/pku/pkurunner/Model/Point;
    .locals 9

    .line 113
    new-instance v8, Lcn/edu/pku/pkurunner/Model/Point;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->sequence:I

    iget v2, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->recordDbId:I

    iget-wide v3, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->longitude:D

    iget-wide v5, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->latitude:D

    iget v7, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->status:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(IIDDI)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartialPoint{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->recordDbId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/PartialPoint;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
