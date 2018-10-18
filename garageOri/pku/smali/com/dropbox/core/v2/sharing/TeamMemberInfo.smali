.class public Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;
    }
.end annotation


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected final memberId:Ljava/lang/String;

.field protected final teamInfo:Lcom/dropbox/core/v2/users/Team;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 46
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz p2, :cond_0

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'displayName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'teamInfo\' is null"

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

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 120
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamInfo()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;->a:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;->a:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
