.class public Lcn/edu/pku/pkurunner/Model/PartialRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "partial_record"
.end annotation


# instance fields
.field private date:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "date"
    .end annotation
.end field

.field private distance:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "distance"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "duration"
    .end annotation
.end field

.field private geo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
        property = "UNIQUE"
    .end annotation
.end field

.field private step:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "step"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/util/Date;I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->duration:I

    .line 76
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->distance:I

    .line 77
    iput p4, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->step:I

    .line 78
    iput-object p3, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 48
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->distance:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 38
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->duration:I

    return v0
.end method

.method public getGeo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->geo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 19
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->id:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 58
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->step:I

    return v0
.end method

.method public toRecord(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Model/Record;
    .locals 7

    .line 82
    new-instance v6, Lcn/edu/pku/pkurunner/Model/Record;

    iget v2, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->distance:I

    iget v3, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->duration:I

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->date:Ljava/util/Date;

    iget v5, p0, Lcn/edu/pku/pkurunner/Model/PartialRecord;->step:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Ljava/lang/String;IILjava/util/Date;I)V

    return-object v6
.end method
