.class public Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/paper/f;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/f;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/paper/f$a;->a:Lcom/dropbox/core/v2/paper/f$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/PaperDocExportResult$a;->a:Lcom/dropbox/core/v2/paper/PaperDocExportResult$a;

    sget-object v8, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    new-instance p2, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v2, "2/paper/docs/download"

    invoke-direct {p2, v2, v0, v1, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw p2
.end method

.method a(Lcom/dropbox/core/v2/paper/e;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/create"

    sget-object v5, Lcom/dropbox/core/v2/paper/e$a;->a:Lcom/dropbox/core/v2/paper/e$a;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/dropbox/core/v2/paper/DocsCreateUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/dropbox/core/v2/paper/h;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/update"

    sget-object v5, Lcom/dropbox/core/v2/paper/h$a;->a:Lcom/dropbox/core/v2/paper/h$a;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1

    .line 595
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsUpdateUploader;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/dropbox/core/v2/paper/DocsUpdateUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$a;

    .line 373
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 367
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 376
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"docs/list\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/a;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/a$a;->a:Lcom/dropbox/core/v2/paper/a$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->a:Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 427
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    const-string v3, "2/paper/docs/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListDocsCursorError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/b;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/folder_users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/b$a;->a:Lcom/dropbox/core/v2/paper/b$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/folder_users/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/c;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/folder_users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/c$a;->a:Lcom/dropbox/core/v2/paper/c$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$a;->a:Lcom/dropbox/core/v2/paper/ListUsersCursorError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 278
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    const-string v3, "2/paper/docs/folder_users/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 713
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/users/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/d;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/d$a;->a:Lcom/dropbox/core/v2/paper/d$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;->a:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$a;->a:Lcom/dropbox/core/v2/paper/ListUsersCursorError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 778
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    const-string v3, "2/paper/docs/users/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;->a:Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;

    sget-object v3, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$a;->a:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$a;

    .line 638
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    .line 633
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 642
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/users/add"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/sharing_policy/set"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/g$a;->a:Lcom/dropbox/core/v2/paper/g$a;

    .line 551
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    .line 546
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 555
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/sharing_policy/set"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/archive"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/i$a;->a:Lcom/dropbox/core/v2/paper/i$a;

    .line 49
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/archive"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/paper/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/j$a;->a:Lcom/dropbox/core/v2/paper/j$a;

    .line 819
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    .line 814
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 823
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/users/remove"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/paper/i;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/get_folder_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/i$a;->a:Lcom/dropbox/core/v2/paper/i$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$a;->a:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 329
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/get_folder_info"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method c(Lcom/dropbox/core/v2/paper/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/i$a;->a:Lcom/dropbox/core/v2/paper/i$a;

    .line 467
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    .line 462
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 471
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/permanently_delete"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method d(Lcom/dropbox/core/v2/paper/i;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/sharing_policy/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/i$a;->a:Lcom/dropbox/core/v2/paper/i$a;

    sget-object v6, Lcom/dropbox/core/v2/paper/SharingPolicy$a;->a:Lcom/dropbox/core/v2/paper/SharingPolicy$a;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$a;->a:Lcom/dropbox/core/v2/paper/DocLookupError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/SharingPolicy;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 512
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v3, "2/paper/docs/sharing_policy/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v0
.end method

.method public docsArchive(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/paper/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/i;)V

    return-void
.end method

.method public docsCreate(Lcom/dropbox/core/v2/paper/ImportFormat;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/paper/e;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/e;-><init>(Lcom/dropbox/core/v2/paper/ImportFormat;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/e;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    move-result-object p1

    return-object p1
.end method

.method public docsCreate(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/dropbox/core/v2/paper/e;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/e;-><init>(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/e;)Lcom/dropbox/core/v2/paper/DocsCreateUploader;

    move-result-object p1

    return-object p1
.end method

.method public docsDownload(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/paper/ExportFormat;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/dropbox/core/v2/paper/f;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/f;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/f;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1

    return-object p1
.end method

.method public docsDownloadBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;
    .locals 1

    .line 183
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    return-object v0
.end method

.method public docsFolderUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/dropbox/core/v2/paper/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/b;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/b;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object p1

    return-object p1
.end method

.method public docsFolderUsersList(Ljava/lang/String;I)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/16 v0, 0x3e8

    if-gt p2, v0, :cond_0

    .line 253
    new-instance v0, Lcom/dropbox/core/v2/paper/b;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/b;-><init>(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/b;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public docsFolderUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/dropbox/core/v2/paper/c;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/c;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object p1

    return-object p1
.end method

.method public docsGetFolderInfo(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 351
    new-instance v0, Lcom/dropbox/core/v2/paper/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->b(Lcom/dropbox/core/v2/paper/i;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    move-result-object p1

    return-object p1
.end method

.method public docsList()Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>()V

    .line 390
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v0

    return-object v0
.end method

.method public docsListBuilder()Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 2

    .line 402
    invoke-static {}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;)V

    return-object v1
.end method

.method public docsListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/dropbox/core/v2/paper/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/a;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/a;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object p1

    return-object p1
.end method

.method public docsPermanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/dropbox/core/v2/paper/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->c(Lcom/dropbox/core/v2/paper/i;)V

    return-void
.end method

.method public docsSharingPolicyGet(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 527
    new-instance v0, Lcom/dropbox/core/v2/paper/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->d(Lcom/dropbox/core/v2/paper/i;)Lcom/dropbox/core/v2/paper/SharingPolicy;

    move-result-object p1

    return-object p1
.end method

.method public docsSharingPolicySet(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 575
    new-instance v0, Lcom/dropbox/core/v2/paper/g;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V

    .line 576
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/g;)V

    return-void
.end method

.method public docsUpdate(Ljava/lang/String;Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;JLcom/dropbox/core/v2/paper/ImportFormat;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 616
    new-instance v6, Lcom/dropbox/core/v2/paper/h;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/paper/h;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;JLcom/dropbox/core/v2/paper/ImportFormat;)V

    .line 617
    invoke-virtual {p0, v6}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/h;)Lcom/dropbox/core/v2/paper/DocsUpdateUploader;

    move-result-object p1

    return-object p1
.end method

.method public docsUsersAdd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 665
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public docsUsersAddBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;"
        }
    .end annotation

    .line 686
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    move-result-object p1

    .line 687
    new-instance p2, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;)V

    return-object p2
.end method

.method public docsUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 733
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object p1

    return-object p1
.end method

.method public docsUsersListBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
    .locals 1

    .line 753
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    move-result-object p1

    .line 754
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;)V

    return-object v0
.end method

.method public docsUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 797
    new-instance v0, Lcom/dropbox/core/v2/paper/d;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/d;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object p1

    return-object p1
.end method

.method public docsUsersRemove(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 841
    new-instance v0, Lcom/dropbox/core/v2/paper/j;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/j;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 842
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/j;)V

    return-void
.end method
