.class public Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;
    .locals 3

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;->displayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;->withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->withAppId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AppLogInfo$Builder;

    return-object p0
.end method
