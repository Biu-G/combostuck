.class public Lcn/edu/pku/pkurunner/Model/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Task$Status;
    }
.end annotation


# static fields
.field public static final ACQUIRED:I = 0x2

.field public static final HIDDEN:I = 0x0

.field public static final NOT_ACQUIRED:I = 0x1


# instance fields
.field private activityId:I

.field private description:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private requirement:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->activityId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirement()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->requirement:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 43
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Task;->status:I

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->activityId:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->name:Ljava/lang/String;

    return-void
.end method

.method public setRequirement(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->requirement:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Task;->status:I

    return-void
.end method
