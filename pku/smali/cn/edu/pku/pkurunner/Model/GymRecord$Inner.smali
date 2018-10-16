.class public Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/GymRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inner"
.end annotation


# instance fields
.field private duration:D

.field private place:I

.field private recordId:I

.field private startTime:Ljava/util/Date;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)I
    .locals 0

    .line 166
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->recordId:I

    return p0
.end method

.method static synthetic access$100(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)D
    .locals 2

    .line 166
    iget-wide v0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->duration:D

    return-wide v0
.end method

.method static synthetic access$200(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)I
    .locals 0

    .line 166
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->place:I

    return p0
.end method

.method static synthetic access$300(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Ljava/util/Date;
    .locals 0

    .line 166
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->startTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$400(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;->userId:Ljava/lang/String;

    return-object p0
.end method
