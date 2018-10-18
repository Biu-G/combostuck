.class public Lcn/edu/pku/pkurunner/Network/Model/Badge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private requirement:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirement()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->requirement:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 31
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->status:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->name:Ljava/lang/String;

    return-void
.end method

.method public setRequirement(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->requirement:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/edu/pku/pkurunner/Network/Model/Badge;->status:I

    return-void
.end method
