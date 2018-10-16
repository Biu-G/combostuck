.class public Lcom/dropbox/core/v2/users/FullAccount;
.super Lcom/dropbox/core/v2/users/Account;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/FullAccount$a;,
        Lcom/dropbox/core/v2/users/FullAccount$Builder;
    }
.end annotation


# instance fields
.field protected final accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

.field protected final country:Ljava/lang/String;

.field protected final isPaired:Z

.field protected final locale:Ljava/lang/String;

.field protected final referralLink:Ljava/lang/String;

.field protected final rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

.field protected final team:Lcom/dropbox/core/v2/users/FullTeam;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Lcom/dropbox/core/v2/common/RootInfo;)V
    .locals 15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 148
    invoke-direct/range {v0 .. v14}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Lcom/dropbox/core/v2/common/RootInfo;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Lcom/dropbox/core/v2/common/RootInfo;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p11

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    const/4 v0, 0x2

    if-eqz v12, :cond_2

    .line 82
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 85
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'country\' is longer than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'country\' is shorter than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    :goto_0
    iput-object v12, v7, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 93
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_6

    .line 96
    iput-object v8, v7, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 100
    iput-object v9, v7, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    move-object/from16 v0, p13

    .line 101
    iput-object v0, v7, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    move-object/from16 v0, p14

    .line 102
    iput-object v0, v7, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    move/from16 v0, p8

    .line 103
    iput-boolean v0, v7, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    if-eqz v10, :cond_4

    .line 107
    iput-object v10, v7, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    if-eqz v11, :cond_3

    .line 111
    iput-object v11, v7, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    return-void

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'rootInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accountType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'referralLink\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'locale\' is shorter than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'locale\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Lcom/dropbox/core/v2/common/RootInfo;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 12

    .line 320
    new-instance v11, Lcom/dropbox/core/v2/users/FullAccount$Builder;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/users/FullAccount$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Lcom/dropbox/core/v2/common/RootInfo;)V

    return-object v11
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

    .line 491
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 492
    check-cast p1, Lcom/dropbox/core/v2/users/FullAccount;

    .line 493
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    .line 494
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    if-ne v2, v3, :cond_c

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    .line 501
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/userscommon/AccountType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    .line 502
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/common/RootInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 505
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/FullTeam;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    .line 506
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_0
    return v0

    :cond_e
    return v1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Lcom/dropbox/core/v2/userscommon/AccountType;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    return v0
.end method

.method public getIsPaired()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralLink()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    return-object v0
.end method

.method public getRootInfo()Lcom/dropbox/core/v2/common/RootInfo;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    return-object v0
.end method

.method public getTeam()Lcom/dropbox/core/v2/users/FullTeam;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 468
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    .line 474
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount;->rootInfo:Lcom/dropbox/core/v2/common/RootInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 468
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 478
    invoke-super {p0}, Lcom/dropbox/core/v2/users/Account;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 516
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$a;->a:Lcom/dropbox/core/v2/users/FullAccount$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$a;->a:Lcom/dropbox/core/v2/users/FullAccount$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
