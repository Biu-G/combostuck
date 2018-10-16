.class public Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_link_file"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$a;->a:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;

    sget-object v8, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$a;->a:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$a;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 766
    new-instance p2, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v2, "2/sharing/get_shared_link_file"

    invoke-direct {p2, v2, v0, v1, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;)V

    throw p2
.end method

.method a(Lcom/dropbox/core/v2/sharing/o;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/relinquish_folder_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/o$a;->a:Lcom/dropbox/core/v2/sharing/o$a;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1847
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    const-string v3, "2/sharing/relinquish_folder_membership"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/w;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unshare_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/w$a;->a:Lcom/dropbox/core/v2/sharing/w$a;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2405
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    const-string v3, "2/sharing/unshare_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/q;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2015
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/q$a;->a:Lcom/dropbox/core/v2/sharing/q$a;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/LaunchResultBase;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2024
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    const-string v3, "2/sharing/remove_folder_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/p;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1923
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    const-string v3, "2/sharing/remove_file_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/a;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/change_file_member_access"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/a$a;->a:Lcom/dropbox/core/v2/sharing/a$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    const-string v3, "2/sharing/change_file_member_access"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/f;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/f$a;->a:Lcom/dropbox/core/v2/sharing/f$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$a;->a:Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$a;->a:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 883
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    const-string v3, "2/sharing/get_shared_links"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/JobStatus$a;->a:Lcom/dropbox/core/v2/sharing/JobStatus$a;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/JobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 262
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/sharing/check_job_status"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1495
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_received_files"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFilesArg$a;->a:Lcom/dropbox/core/v2/sharing/ListFilesArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFilesResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1504
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharingUserError;

    const-string v3, "2/sharing/list_received_files"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/i;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_received_files/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/i$a;->a:Lcom/dropbox/core/v2/sharing/i$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFilesResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1562
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    const-string v3, "2/sharing/list_received_files/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;

    .line 1270
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1264
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1273
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"list_folders\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/k$a;->a:Lcom/dropbox/core/v2/sharing/k$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1335
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    const-string v3, "2/sharing/list_folders/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$a;->a:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$a;->a:Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$a;->a:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1608
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    const-string v3, "2/sharing/list_shared_links"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/x;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2473
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/x$a;->a:Lcom/dropbox/core/v2/sharing/x$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2482
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    const-string v3, "2/sharing/update_file_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/y;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2523
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/y$a;->a:Lcom/dropbox/core/v2/sharing/y$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2532
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    const-string v3, "2/sharing/update_folder_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/create_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 395
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    const-string v3, "2/sharing/create_shared_link"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2190
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/share_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ShareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2199
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    const-string v3, "2/sharing/share_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ShareFolderError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/s;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SetAccessInheritanceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2116
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/set_access_inheritance"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/s$a;->a:Lcom/dropbox/core/v2/sharing/s$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->a:Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2125
    new-instance v0, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

    const-string v3, "2/sharing/set_access_inheritance"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFileMembers$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersError$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 952
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersError;

    const-string v3, "2/sharing/list_file_members"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/h;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/h$a;->a:Lcom/dropbox/core/v2/sharing/h$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFileMembers$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1105
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    const-string v3, "2/sharing/list_file_members/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/c;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_file_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/c$a;->a:Lcom/dropbox/core/v2/sharing/c$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$a;->a:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 552
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    const-string v3, "2/sharing/get_file_metadata"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folder_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$a;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1157
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v3, "2/sharing/list_folder_members"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/j;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folder_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/j$a;->a:Lcom/dropbox/core/v2/sharing/j$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1223
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    const-string v3, "2/sharing/list_folder_members/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2577
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_folder_policy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2586
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    const-string v3, "2/sharing/update_folder_policy"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_folder_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/e$a;->a:Lcom/dropbox/core/v2/sharing/e$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 690
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const-string v3, "2/sharing/get_folder_metadata"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/m;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/mount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/m$a;->a:Lcom/dropbox/core/v2/sharing/m$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1751
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    const-string v3, "2/sharing/mount_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/MountFolderError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_link_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$a;->a:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 823
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    const-string v3, "2/sharing/get_shared_link_metadata"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedLinkError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/b;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/create_shared_link_with_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 483
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    const-string v3, "2/sharing/create_shared_link_with_settings"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/l;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/modify_shared_link_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/l$a;->a:Lcom/dropbox/core/v2/sharing/l$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1668
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    const-string v3, "2/sharing/modify_shared_link_settings"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/add_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$a;->a:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$a;

    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$a;

    .line 53
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;

    move-object v3, p1

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    const-string v3, "2/sharing/add_file_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFileMemberError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/d;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_file_metadata/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/d$a;->a:Lcom/dropbox/core/v2/sharing/d$a;

    sget-object v3, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$a;->a:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$a;

    .line 619
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    move-object v3, p1

    .line 614
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 623
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharingUserError;

    const-string v3, "2/sharing/get_file_metadata/batch"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/g;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/g$a;->a:Lcom/dropbox/core/v2/sharing/g$a;

    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$a;

    .line 1023
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    move-object v3, p1

    .line 1018
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1027
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/SharingUserError;

    const-string v3, "2/sharing/list_file_members/batch"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/add_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$a;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$a;

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;

    move-object v3, p1

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    const-string v3, "2/sharing/add_folder_member"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/n;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1788
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/relinquish_file_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/n$a;->a:Lcom/dropbox/core/v2/sharing/n$a;

    .line 1793
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$a;->a:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$a;

    move-object v3, p1

    .line 1788
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1797
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    const-string v3, "2/sharing/relinquish_file_membership"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2071
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/revoke_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/r$a;->a:Lcom/dropbox/core/v2/sharing/r$a;

    .line 2076
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;

    move-object v3, p1

    .line 2071
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2080
    new-instance v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    const-string v3, "2/sharing/revoke_shared_link"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2264
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/transfer_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/t$a;->a:Lcom/dropbox/core/v2/sharing/t$a;

    .line 2269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/TransferFolderError$a;->a:Lcom/dropbox/core/v2/sharing/TransferFolderError$a;

    move-object v3, p1

    .line 2264
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2273
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    const-string v3, "2/sharing/transfer_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/TransferFolderError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2309
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unmount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/u$a;->a:Lcom/dropbox/core/v2/sharing/u$a;

    .line 2314
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnmountFolderError$a;

    move-object v3, p1

    .line 2309
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2318
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    const-string v3, "2/sharing/unmount_folder"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnmountFolderError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/sharing/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2351
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unshare_file"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/v$a;->a:Lcom/dropbox/core/v2/sharing/v$a;

    .line 2356
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFileError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFileError$a;

    move-object v3, p1

    .line 2351
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2360
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    const-string v3, "2/sharing/unshare_file"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFileError;)V

    throw v0
.end method

.method public addFileMember(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public addFileMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;"
        }
    .end annotation

    .line 103
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    move-result-object p1

    .line 104
    new-instance p2, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;)V

    return-object p2
.end method

.method public addFolderMember(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V

    return-void
.end method

.method public addFolderMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;"
        }
    .end annotation

    .line 178
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;

    move-result-object p1

    .line 179
    new-instance p2, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;)V

    return-object p2
.end method

.method b(Lcom/dropbox/core/v2/sharing/p;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_file_member_2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1973
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    const-string v3, "2/sharing/remove_file_member_2"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_mountable_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;

    .line 1385
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1379
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1388
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"list_mountable_folders\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_mountable_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/k$a;->a:Lcom/dropbox/core/v2/sharing/k$a;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersResult$a;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1450
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    const-string v3, "2/sharing/list_mountable_folders/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_remove_member_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 304
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/sharing/check_remove_member_job_status"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method c(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_share_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 346
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/sharing/check_share_job_status"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method public changeFileMemberAccess(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    new-instance v0, Lcom/dropbox/core/v2/sharing/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/a;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/a;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;

    move-result-object p1

    return-object p1
.end method

.method public checkJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 278
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object p1

    return-object p1
.end method

.method public checkRemoveMemberJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->b(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object p1

    return-object p1
.end method

.method public checkShareJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->c(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object p1

    return-object p1
.end method

.method public createSharedLink(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public createSharedLinkBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    move-result-object p1

    .line 456
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;)V

    return-object v0
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/dropbox/core/v2/sharing/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/b;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/b;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/dropbox/core/v2/sharing/b;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/b;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/b;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getFileMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 569
    new-instance v0, Lcom/dropbox/core/v2/sharing/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/c;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/c;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getFileMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 592
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FileAction;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/c;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/c;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getFileMetadataBatch(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 637
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/d;-><init>(Ljava/util/List;)V

    .line 638
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/d;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFileMetadataBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 657
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FileAction;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/d;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/d;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFolderMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 708
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/e;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getFolderMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 732
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FolderAction;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/e;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 739
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/e;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getSharedLinkFile(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 782
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object p1

    return-object p1
.end method

.method public getSharedLinkFileBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;
    .locals 1

    .line 798
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object p1

    .line 799
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v0
.end method

.method public getSharedLinkMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 838
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getSharedLinkMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 1

    .line 854
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object p1

    .line 855
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v0
.end method

.method public getSharedLinks()Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/f;-><init>()V

    .line 901
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/f;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLinks(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    new-instance v0, Lcom/dropbox/core/v2/sharing/f;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/f;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/f;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object p1

    return-object p1
.end method

.method public listFileMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 978
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object p1

    return-object p1
.end method

.method public listFileMembersBatch(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1048
    new-instance v0, Lcom/dropbox/core/v2/sharing/g;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/g;-><init>(Ljava/util/List;)V

    .line 1049
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/g;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listFileMembersBatch(Ljava/util/List;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x14

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1071
    new-instance v0, Lcom/dropbox/core/v2/sharing/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/g;-><init>(Ljava/util/List;J)V

    .line 1072
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/g;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1069
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 20L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listFileMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 1

    .line 998
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    move-result-object p1

    .line 999
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;)V

    return-object v0
.end method

.method public listFileMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1131
    new-instance v0, Lcom/dropbox/core/v2/sharing/h;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/h;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/h;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object p1

    return-object p1
.end method

.method public listFolderMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1177
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;-><init>(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object p1

    return-object p1
.end method

.method public listFolderMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
    .locals 1

    .line 1195
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    move-result-object p1

    .line 1196
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;)V

    return-object v0
.end method

.method public listFolderMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1244
    new-instance v0, Lcom/dropbox/core/v2/sharing/j;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/j;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/j;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object p1

    return-object p1
.end method

.method public listFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1290
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1291
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method public listFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
    .locals 2

    .line 1302
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->a()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1303
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method public listFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1359
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/k;-><init>(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object p1

    return-object p1
.end method

.method public listMountableFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1405
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1406
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->b(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method public listMountableFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;
    .locals 2

    .line 1417
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->a()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1418
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method public listMountableFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1474
    new-instance v0, Lcom/dropbox/core/v2/sharing/k;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/k;-><init>(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->b(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object p1

    return-object p1
.end method

.method public listReceivedFiles()Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1520
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesArg;-><init>()V

    .line 1521
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object v0

    return-object v0
.end method

.method public listReceivedFilesBuilder()Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
    .locals 2

    .line 1533
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFilesArg;->a()Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    move-result-object v0

    .line 1534
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;)V

    return-object v1
.end method

.method public listReceivedFilesContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1580
    new-instance v0, Lcom/dropbox/core/v2/sharing/i;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/i;-><init>(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/i;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object p1

    return-object p1
.end method

.method public listSharedLinks()Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1621
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;-><init>()V

    .line 1622
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method public listSharedLinksBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 2

    .line 1637
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->a()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    move-result-object v0

    .line 1638
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;)V

    return-object v1
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1696
    new-instance v0, Lcom/dropbox/core/v2/sharing/l;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/l;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 1697
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/l;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1722
    new-instance v0, Lcom/dropbox/core/v2/sharing/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/l;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V

    .line 1723
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/l;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object p1

    return-object p1
.end method

.method public mountFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1771
    new-instance v0, Lcom/dropbox/core/v2/sharing/m;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/m;-><init>(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/m;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public relinquishFileMembership(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1815
    new-instance v0, Lcom/dropbox/core/v2/sharing/n;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/n;-><init>(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/n;)V

    return-void
.end method

.method public relinquishFolderMembership(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1873
    new-instance v0, Lcom/dropbox/core/v2/sharing/o;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/o;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public relinquishFolderMembership(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1898
    new-instance v0, Lcom/dropbox/core/v2/sharing/o;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;Z)V

    .line 1899
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/o;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public removeFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1948
    new-instance v0, Lcom/dropbox/core/v2/sharing/p;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/p;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1949
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/p;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object p1

    return-object p1
.end method

.method public removeFileMember2(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1993
    new-instance v0, Lcom/dropbox/core/v2/sharing/p;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/p;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1994
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->b(Lcom/dropbox/core/v2/sharing/p;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object p1

    return-object p1
.end method

.method public removeFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2052
    new-instance v0, Lcom/dropbox/core/v2/sharing/q;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/q;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)V

    .line 2053
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/q;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object p1

    return-object p1
.end method

.method public revokeSharedLink(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2098
    new-instance v0, Lcom/dropbox/core/v2/sharing/r;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/r;-><init>(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/r;)V

    return-void
.end method

.method public setAccessInheritance(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SetAccessInheritanceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2147
    new-instance v0, Lcom/dropbox/core/v2/sharing/s;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/s;-><init>(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/s;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p1

    return-object p1
.end method

.method public setAccessInheritance(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessInheritance;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SetAccessInheritanceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2170
    new-instance v0, Lcom/dropbox/core/v2/sharing/s;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/s;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V

    .line 2171
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/s;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p1

    return-object p1

    .line 2168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'accessInheritance\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2223
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object p1

    return-object p1
.end method

.method public shareFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1

    .line 2247
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object p1

    .line 2248
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;)V

    return-object v0
.end method

.method public transferFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2292
    new-instance v0, Lcom/dropbox/core/v2/sharing/t;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/t;)V

    return-void
.end method

.method public unmountFolder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2335
    new-instance v0, Lcom/dropbox/core/v2/sharing/u;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/u;-><init>(Ljava/lang/String;)V

    .line 2336
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/u;)V

    return-void
.end method

.method public unshareFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2375
    new-instance v0, Lcom/dropbox/core/v2/sharing/v;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/v;-><init>(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/v;)V

    return-void
.end method

.method public unshareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2429
    new-instance v0, Lcom/dropbox/core/v2/sharing/w;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/w;-><init>(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/w;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public unshareFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2454
    new-instance v0, Lcom/dropbox/core/v2/sharing/w;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/w;-><init>(Ljava/lang/String;Z)V

    .line 2455
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/w;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public updateFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2505
    new-instance v0, Lcom/dropbox/core/v2/sharing/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/x;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2506
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/x;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object p1

    return-object p1
.end method

.method public updateFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2556
    new-instance v0, Lcom/dropbox/core/v2/sharing/y;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/y;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2557
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/y;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object p1

    return-object p1
.end method

.method public updateFolderPolicy(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2605
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public updateFolderPolicyBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .line 2624
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    move-result-object p1

    .line 2625
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;)V

    return-object v0
.end method
