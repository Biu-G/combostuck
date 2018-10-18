.class public Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/sharing/GroupInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    if-eqz p2, :cond_0

    .line 146
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'group\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    .locals 7

    .line 201
    new-instance v6, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->isInherited:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;"
        }
    .end annotation

    .line 162
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object p1

    return-object p1
.end method
