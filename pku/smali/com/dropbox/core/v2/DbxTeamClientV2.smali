.class public Lcom/dropbox/core/v2/DbxTeamClientV2;
.super Lcom/dropbox/core/v2/DbxTeamClientV2Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxTeamClientV2$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/DbxTeamClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 10

    .line 71
    new-instance v9, Lcom/dropbox/core/v2/DbxTeamClientV2$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    invoke-direct {p0, v9}, Lcom/dropbox/core/v2/DbxTeamClientV2Base;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    .line 72
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asAdmin(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxClientV2;
    .locals 10

    if-eqz p1, :cond_0

    .line 125
    new-instance v9, Lcom/dropbox/core/v2/DbxTeamClientV2$a;

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 126
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 127
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 129
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    .line 134
    new-instance p1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {p1, v9}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    return-object p1

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'adminId\' should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asMember(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxClientV2;
    .locals 10

    if-eqz p1, :cond_0

    .line 94
    new-instance v9, Lcom/dropbox/core/v2/DbxTeamClientV2$a;

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 95
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 96
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 98
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V

    .line 103
    new-instance p1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {p1, v9}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'memberId\' should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
