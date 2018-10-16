.class public Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;
    }
.end annotation


# instance fields
.field protected final cursor:Lcom/dropbox/core/v2/paper/Cursor;

.field protected final hasMore:Z

.field protected final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/dropbox/core/v2/paper/Cursor;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;",
            "Lcom/dropbox/core/v2/paper/Cursor;",
            "Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'invitees\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    if-eqz p3, :cond_4

    .line 73
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 74
    iput-boolean p4, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    return-void

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'cursor\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_6
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

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    .line 143
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    .line 144
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 145
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/Cursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getCursor()Lcom/dropbox/core/v2/paper/Cursor;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    return v0
.end method

.method public getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    .line 127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 123
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 168
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
