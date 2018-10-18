.class public Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;,
        Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    }
.end annotation


# instance fields
.field protected final invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

.field protected final user:Lcom/dropbox/core/v2/sharing/UserInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 52
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 53
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'invitee\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 1

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)V

    return-object v0
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

    .line 248
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 249
    check-cast p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    .line 250
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 251
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    .line 252
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 255
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitee()Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    return-object v0
.end method

.method public getIsInherited()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/sharing/UserInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/MembershipInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;->a:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;->a:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
