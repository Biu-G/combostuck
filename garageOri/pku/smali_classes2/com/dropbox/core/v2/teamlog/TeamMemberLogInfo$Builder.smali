.class public Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected memberExternalId:Ljava/lang/String;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 7

    .line 224
    new-instance v6, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->email:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberExternalId\' is longer than 64"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    return-object p0
.end method
