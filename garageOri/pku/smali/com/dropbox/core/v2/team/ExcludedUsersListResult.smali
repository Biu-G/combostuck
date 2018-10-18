.class public Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final hasMore:Z

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberProfile;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberProfile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/team/MemberProfile;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'users\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    .line 55
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->hasMore:Z

    return-void

    .line 47
    :cond_2
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

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;

    .line 130
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->hasMore:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->hasMore:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->hasMore:Z

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberProfile;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->users:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->cursor:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;->hasMore:Z

    .line 114
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 111
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 154
    sget-object v0, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
