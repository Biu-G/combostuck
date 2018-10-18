.class public Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
.super Lcom/dropbox/core/v2/team/DeviceSessionArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;
    }
.end annotation


# instance fields
.field protected final deleteOnUnlink:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/team/DeviceSessionArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    return-void
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

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .line 106
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getDeleteOnUnlink()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 91
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 130
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
