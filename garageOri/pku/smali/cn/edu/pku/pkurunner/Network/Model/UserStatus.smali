.class public Lcn/edu/pku/pkurunner/Network/Model/UserStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private beginDate:Ljava/util/Date;

.field private bonus:I

.field private current:I

.field private endDate:Ljava/util/Date;

.field private target:I

.field private validCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeginDate()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->beginDate:Ljava/util/Date;

    return-object v0
.end method

.method public getBonus()I
    .locals 1

    .line 20
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->bonus:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .line 12
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->current:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTarget()I
    .locals 1

    .line 16
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->target:I

    return v0
.end method

.method public getValidCount()I
    .locals 1

    .line 24
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->validCount:I

    return v0
.end method
