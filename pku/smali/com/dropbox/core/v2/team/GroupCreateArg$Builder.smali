.class public Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupCreateArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected groupExternalId:Ljava/lang/String;

.field protected groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'groupName\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/GroupCreateArg;
    .locals 4

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupExternalId:Ljava/lang/String;

    return-object p0
.end method

.method public withGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object p0
.end method
