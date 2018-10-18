.class public Lcom/dropbox/core/v2/team/TeamMemberProfile;
.super Lcom/dropbox/core/v2/team/MemberProfile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamMemberProfile$a;,
        Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    }
.end annotation


# instance fields
.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final memberFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
            "Lcom/dropbox/core/v2/users/Name;",
            "Lcom/dropbox/core/v2/team/TeamMembershipType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 115
    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
            "Lcom/dropbox/core/v2/users/Name;",
            "Lcom/dropbox/core/v2/team/TeamMembershipType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 70
    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v13, :cond_4

    .line 74
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An item in list \'groups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput-object v13, v12, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    if-eqz v14, :cond_3

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 83
    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iput-object v14, v12, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    return-void

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'groups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
            "Lcom/dropbox/core/v2/users/Name;",
            "Lcom/dropbox/core/v2/team/TeamMembershipType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;"
        }
    .end annotation

    .line 265
    new-instance v9, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V

    return-object v9
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

    .line 395
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 396
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    .line 397
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 400
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 401
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 402
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMembershipType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    .line 403
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    .line 407
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    .line 409
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_0
    return v0

    :cond_f
    return v1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getIsDirectoryRestricted()Ljava/lang/Boolean;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJoinedOn()Ljava/util/Date;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMemberFolderId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembershipType()Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getPersistentId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 378
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 382
    invoke-super {p0}, Lcom/dropbox/core/v2/team/MemberProfile;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->a:Lcom/dropbox/core/v2/team/TeamMemberProfile$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 431
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->a:Lcom/dropbox/core/v2/team/TeamMemberProfile$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
