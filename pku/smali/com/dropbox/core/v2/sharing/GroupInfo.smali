.class public Lcom/dropbox/core/v2/sharing/GroupInfo;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GroupInfo$a;,
        Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    }
.end annotation


# instance fields
.field protected final groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

.field protected final isMember:Z

.field protected final isOwner:Z

.field protected final sameTeam:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 85
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p8

    move-object v5, p9

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    .line 60
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 61
    iput-boolean p5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    .line 62
    iput-boolean p6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    .line 63
    iput-boolean p7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'groupType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/GroupInfo;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object p0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 9

    .line 186
    new-instance v8, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/sharing/GroupInfo;

    .line 268
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 270
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 271
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    .line 276
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_0
    return v0

    :cond_9
    return v1
.end method

.method public getGroupExternalId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcom/dropbox/core/v2/teamcommon/GroupType;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    return-object v0
.end method

.method public getIsMember()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    return v0
.end method

.method public getIsOwner()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    return v0
.end method

.method public getMemberCount()Ljava/lang/Long;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getSameTeam()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 247
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    .line 249
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    .line 250
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    invoke-super {p0}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$a;->a:Lcom/dropbox/core/v2/sharing/GroupInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$a;->a:Lcom/dropbox/core/v2/sharing/GroupInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
