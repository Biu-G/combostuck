.class public Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
.super Lcom/dropbox/core/v2/team/MemberProfile$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 276
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V

    if-eqz p7, :cond_4

    .line 280
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'groups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_1
    iput-object p7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    if-eqz p8, :cond_3

    const-string p1, "[-_0-9a-zA-Z:]+"

    .line 289
    invoke-static {p1, p8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 292
    iput-object p8, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->memberFolderId:Ljava/lang/String;

    return-void

    .line 290
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'memberFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'memberFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'groups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/team/MemberProfile;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->build()Lcom/dropbox/core/v2/team/TeamMemberProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 15

    .line 372
    new-instance v14, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->email:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->emailVerified:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->memberFolderId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->externalId:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->accountId:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->joinedOn:Ljava/util/Date;

    iget-object v12, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->persistentId:Ljava/lang/String;

    iget-object v13, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v14
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .line 321
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    return-object p0
.end method

.method public bridge synthetic withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .line 305
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    return-object p0
.end method

.method public bridge synthetic withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .line 361
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    return-object p0
.end method

.method public bridge synthetic withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    return-object p0
.end method

.method public bridge synthetic withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    return-object p0
.end method
