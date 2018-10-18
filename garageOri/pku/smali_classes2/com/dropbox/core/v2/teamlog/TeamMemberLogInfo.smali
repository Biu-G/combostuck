.class public Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final memberExternalId:Ljava/lang/String;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 51
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'memberExternalId\' is longer than 64"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;-><init>()V

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

    .line 247
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 248
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    .line 249
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberExternalId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 230
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 234
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
