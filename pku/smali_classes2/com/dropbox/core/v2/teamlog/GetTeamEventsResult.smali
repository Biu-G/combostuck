.class public Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/TeamEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final hasMore:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/TeamEvent;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/teamlog/TeamEvent;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'events\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 53
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->hasMore:Z

    return-void

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'cursor\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'events\' is null"

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

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    check-cast p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;

    .line 109
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->hasMore:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->hasMore:Z

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/TeamEvent;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->hasMore:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->events:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->cursor:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;->hasMore:Z

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;->a:Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;->a:Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
