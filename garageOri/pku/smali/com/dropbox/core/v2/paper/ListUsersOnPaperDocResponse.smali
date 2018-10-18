.class public Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;
    }
.end annotation


# instance fields
.field protected final cursor:Lcom/dropbox/core/v2/paper/Cursor;

.field protected final docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

.field protected final hasMore:Z

.field protected final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/dropbox/core/v2/sharing/UserInfo;Lcom/dropbox/core/v2/paper/Cursor;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            "Lcom/dropbox/core/v2/paper/Cursor;",
            "Z)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'invitees\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    if-eqz p3, :cond_5

    .line 77
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eqz p4, :cond_4

    .line 81
    iput-object p4, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 82
    iput-boolean p5, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    return-void

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'cursor\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'docOwner\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'invitees\' is null"

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

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 161
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    .line 162
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    .line 163
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 164
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 165
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/Cursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getCursor()Lcom/dropbox/core/v2/paper/Cursor;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    return-object v0
.end method

.method public getDocOwner()Lcom/dropbox/core/v2/sharing/UserInfo;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    return v0
.end method

.method public getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 188
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
