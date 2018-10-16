.class public Lcn/edu/pku/pkurunner/Model/Record$Inner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inner"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private detailed:Ljava/lang/Boolean;

.field private distance:I

.field private duration:I

.field private invalidReason:I

.field private photoRemotePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photoPath"
    .end annotation
.end field

.field private recordId:I

.field private step:I

.field private track:[[D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail"
    .end annotation
.end field

.field private uploaded:Ljava/lang/Boolean;

.field private userId:Ljava/lang/String;

.field private verified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I
    .locals 0

    .line 302
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->recordId:I

    return p0
.end method

.method static synthetic access$200(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I
    .locals 0

    .line 302
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->distance:I

    return p0
.end method

.method static synthetic access$300(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I
    .locals 0

    .line 302
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->duration:I

    return p0
.end method

.method static synthetic access$400(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/util/Date;
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$500(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I
    .locals 0

    .line 302
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->step:I

    return p0
.end method

.method static synthetic access$600(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/Boolean;
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->verified:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I
    .locals 0

    .line 302
    iget p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->invalidReason:I

    return p0
.end method

.method static synthetic access$800(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->photoRemotePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D
    .locals 0

    .line 302
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Record$Inner;->track:[[D

    return-object p0
.end method
