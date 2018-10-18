.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 123
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'newValue\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
    .locals 4

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;)V

    return-object v0
.end method

.method public withAction(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object p0
.end method
