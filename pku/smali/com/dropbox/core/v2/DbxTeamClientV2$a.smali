.class final Lcom/dropbox/core/v2/DbxTeamClientV2$a;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxTeamClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2, p4, p7}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    if-eqz p3, :cond_0

    .line 158
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->a:Ljava/lang/String;

    .line 159
    iput-object p5, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->b:Ljava/lang/String;

    .line 160
    iput-object p6, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->c:Ljava/lang/String;

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "accessToken"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;Lcom/dropbox/core/v2/DbxTeamClientV2$1;)V
    .locals 0

    .line 142
    invoke-direct/range {p0 .. p7}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addSelectUserHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addSelectAdminHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    :cond_1
    return-void
.end method

.method protected withPathRoot(Lcom/dropbox/core/v2/common/PathRoot;)Lcom/dropbox/core/v2/DbxRawClientV2;
    .locals 9

    .line 176
    new-instance v8, Lcom/dropbox/core/v2/DbxTeamClientV2$a;

    .line 177
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->a:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/DbxTeamClientV2$a;->c:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxTeamClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    return-object v8
.end method
