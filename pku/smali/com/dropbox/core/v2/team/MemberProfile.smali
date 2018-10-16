.class public Lcom/dropbox/core/v2/team/MemberProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberProfile$a;,
        Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    }
.end annotation


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final externalId:Ljava/lang/String;

.field protected final isDirectoryRestricted:Ljava/lang/Boolean;

.field protected final joinedOn:Ljava/util/Date;

.field protected final membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected final persistentId:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 131
    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 76
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eqz p8, :cond_2

    .line 79
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p7, 0x28

    if-lt p1, p7, :cond_1

    .line 82
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p7, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'accountId\' is longer than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'accountId\' is shorter than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2
    :goto_0
    iput-object p8, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 90
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    if-eqz p4, :cond_5

    .line 95
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eqz p5, :cond_4

    .line 99
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eqz p6, :cond_3

    .line 103
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 104
    invoke-static {p9}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    .line 105
    iput-object p10, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    .line 106
    iput-object p11, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-void

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'membershipType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'status\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'email\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'teamMemberId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 8

    .line 259
    new-instance v7, Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V

    return-object v7
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

    .line 424
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 425
    check-cast p1, Lcom/dropbox/core/v2/team/MemberProfile;

    .line 426
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 429
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 430
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 431
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMembershipType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    .line 434
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    .line 436
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_0
    return v0

    :cond_d
    return v1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDirectoryRestricted()Ljava/lang/Boolean;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJoinedOn()Ljava/util/Date;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMembershipType()Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getPersistentId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    .line 399
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    .line 404
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->isDirectoryRestricted:Ljava/lang/Boolean;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 399
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 446
    sget-object v0, Lcom/dropbox/core/v2/team/MemberProfile$a;->a:Lcom/dropbox/core/v2/team/MemberProfile$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberProfile$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 458
    sget-object v0, Lcom/dropbox/core/v2/team/MemberProfile$a;->a:Lcom/dropbox/core/v2/team/MemberProfile$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberProfile$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
