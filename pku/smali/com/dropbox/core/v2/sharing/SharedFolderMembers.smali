.class public Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    if-eqz p2, :cond_7

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'groups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    if-eqz p3, :cond_6

    .line 69
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'invitees\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    return-void

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'invitees\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'groups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 157
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    .line 158
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    .line 159
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    .line 160
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    .line 161
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 138
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 183
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
