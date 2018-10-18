.class public Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;->a:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->a:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->a:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    const-string v3, "2/file_requests/create"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->a:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$a;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;

    const-string v3, "2/file_requests/update"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/filerequests/a;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/a$a;->a:Lcom/dropbox/core/v2/filerequests/a$a;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->a:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/GetFileRequestError$a;->a:Lcom/dropbox/core/v2/filerequests/GetFileRequestError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v3, "2/file_requests/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/GetFileRequestError;)V

    throw v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p1

    return-object p1
.end method

.method public createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 0

    .line 95
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/dropbox/core/v2/filerequests/CreateBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/filerequests/CreateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V

    return-object p2
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/filerequests/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/a;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/a;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p1

    return-object p1
.end method

.method public list()Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_requests/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$a;->a:Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$a;->a:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$a;

    .line 158
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const-string v4, "2/file_requests/list"

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;)V

    throw v1
.end method

.method public update(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object p1

    return-object p1
.end method

.method public updateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 1

    .line 234
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    move-result-object p1

    .line 235
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;)V

    return-object v0
.end method
