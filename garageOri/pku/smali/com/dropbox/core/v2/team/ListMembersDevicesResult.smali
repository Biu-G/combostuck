.class public Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberDevices;",
            ">;"
        }
    .end annotation
.end field

.field protected final hasMore:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberDevices;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberDevices;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/team/MemberDevices;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'devices\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    .line 50
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->hasMore:Z

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'devices\' is null"

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

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;

    .line 123
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->hasMore:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->hasMore:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    .line 125
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

    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberDevices;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->hasMore:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->devices:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->hasMore:Z

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;->cursor:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;->a:Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;->a:Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
