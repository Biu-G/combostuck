.class public Lcn/edu/pku/pkurunner/Model/GymRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;
    }
.end annotation

.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "record2"
.end annotation


# static fields
.field private static final dateFormatter:Ljava/text/DateFormat;


# instance fields
.field private duration:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "duration"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
        property = "UNIQUE"
    .end annotation
.end field

.field private place:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "place"
    .end annotation
.end field

.field private recordId:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordId"
    .end annotation
.end field

.field private startTime:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "startTime"
    .end annotation
.end field

.field private uploaded:Ljava/lang/Boolean;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "uploaded"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "userId"
    .end annotation
.end field

.field private verified:Ljava/lang/Boolean;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "verified"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/Model/GymRecord;->dateFormatter:Ljava/text/DateFormat;

    .line 22
    sget-object v0, Lcn/edu/pku/pkurunner/Model/GymRecord;->dateFormatter:Ljava/text/DateFormat;

    const-string v1, "Asia/Shanghai"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->id:I

    const/4 v0, 0x1

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->verified:Ljava/lang/Boolean;

    .line 155
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->access$000(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)I

    move-result v1

    iput v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->recordId:I

    .line 156
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->access$100(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->duration:I

    .line 157
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->access$200(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)I

    move-result v1

    iput v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->place:I

    .line 158
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->access$300(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->startTime:Ljava/util/Date;

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->uploaded:Ljava/lang/Boolean;

    .line 160
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->access$400(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->place:I

    const/4 p2, 0x0

    .line 143
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->id:I

    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->recordId:I

    .line 145
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->userId:Ljava/lang/String;

    .line 146
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->duration:I

    .line 147
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->startTime:Ljava/util/Date;

    .line 148
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->uploaded:Ljava/lang/Boolean;

    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->verified:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 88
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->duration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 32
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->id:I

    return v0
.end method

.method public getPlace()I
    .locals 1

    .line 74
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->place:I

    return v0
.end method

.method public getRecordId()I
    .locals 1

    .line 46
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->recordId:I

    return v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isUploaded()Ljava/lang/Boolean;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->uploaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVerified()Ljava/lang/Boolean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->duration:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->id:I

    return-void
.end method

.method public setPlace(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->place:I

    return-void
.end method

.method public setRecordId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->recordId:I

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->startTime:Ljava/util/Date;

    return-void
.end method

.method public setUploaded(Ljava/lang/Boolean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->uploaded:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->verified:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GymRecord{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", place=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->place:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/edu/pku/pkurunner/Model/GymRecord;->dateFormatter:Ljava/text/DateFormat;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->startTime:Ljava/util/Date;

    .line 185
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/GymRecord;->uploaded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
