.class public Lcom/dropbox/core/v2/team/MemberProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected accountId:Ljava/lang/String;

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected externalId:Ljava/lang/String;

.field protected isDirectoryRestricted:Ljava/lang/Boolean;

.field protected joinedOn:Ljava/util/Date;

.field protected final membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected persistentId:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 283
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 287
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->email:Ljava/lang/String;

    .line 288
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->emailVerified:Z

    if-eqz p4, :cond_2

    .line 292
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eqz p5, :cond_1

    .line 296
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    if-eqz p6, :cond_0

    .line 300
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    .line 304
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-void

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'membershipType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'status\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'email\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'teamMemberId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberProfile;
    .locals 13

    .line 393
    new-instance v12, Lcom/dropbox/core/v2/team/MemberProfile;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->email:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->emailVerified:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v12
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'accountId\' is longer than 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'accountId\' is shorter than 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    return-object p0
.end method

.method public withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    return-object p0
.end method

.method public withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    return-object p0
.end method
