.class public Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersRemoveArg$a;->a:Lcom/dropbox/core/v2/team/MembersRemoveArg$a;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersRemoveError$a;->a:Lcom/dropbox/core/v2/team/MembersRemoveError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1948
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v3, "2/team/members/remove"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersRemoveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersRemoveError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsPollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsPollError$a;->a:Lcom/dropbox/core/v2/team/GroupsPollError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 472
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsPollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsPollError;

    const-string v3, "2/team/groups/job_status/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupsPollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsPollError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2434
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/properties/template/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2443
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    const-string v3, "2/team/properties/template/add"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2477
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/properties/template/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2486
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v3, "2/team/properties/template/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/properties/template/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2552
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    const-string v3, "2/team/properties/template/update"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/b;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/excluded_users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/b$a;->a:Lcom/dropbox/core/v2/team/b$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ExcludedUsersListError$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1353
    new-instance v0, Lcom/dropbox/core/v2/team/ExcludedUsersListErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersListError;

    const-string v3, "2/team/member_space_limits/excluded_users/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ExcludedUsersListErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ExcludedUsersListError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/c;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/excluded_users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/c$a;->a:Lcom/dropbox/core/v2/team/c$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ExcludedUsersListContinueError$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1414
    new-instance v0, Lcom/dropbox/core/v2/team/ExcludedUsersListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersListContinueError;

    const-string v3, "2/team/member_space_limits/excluded_users/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ExcludedUsersListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ExcludedUsersListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/excluded_users/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/d$a;->a:Lcom/dropbox/core/v2/team/d$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1294
    new-instance v0, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError;

    const-string v3, "2/team/member_space_limits/excluded_users/add"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/e;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/features/get_values"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/e$a;->a:Lcom/dropbox/core/v2/team/e$a;

    sget-object v6, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$a;->a:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError$a;->a:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 280
    new-instance v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError;

    const-string v3, "2/team/features/get_values"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2614
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/reports/get_activity"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$a;->a:Lcom/dropbox/core/v2/team/DateRange$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GetActivityReport$a;->a:Lcom/dropbox/core/v2/team/GetActivityReport$a;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$a;->a:Lcom/dropbox/core/v2/team/DateRangeError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GetActivityReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2623
    new-instance v0, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/DateRangeError;

    const-string v3, "2/team/reports/get_activity"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/GroupCreateArg;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupCreateArg$a;->a:Lcom/dropbox/core/v2/team/GroupCreateArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupFullInfo$a;->a:Lcom/dropbox/core/v2/team/GroupFullInfo$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupCreateError$a;->a:Lcom/dropbox/core/v2/team/GroupCreateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupFullInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 345
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupCreateError;

    const-string v3, "2/team/groups/create"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupCreateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupCreateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/GroupUpdateArgs;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;->a:Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupFullInfo$a;->a:Lcom/dropbox/core/v2/team/GroupFullInfo$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupUpdateError$a;->a:Lcom/dropbox/core/v2/team/GroupUpdateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupFullInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 970
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupUpdateError;

    const-string v3, "2/team/groups/update"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupUpdateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupUpdateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/g;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/members/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/g$a;->a:Lcom/dropbox/core/v2/team/g$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$a;->a:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMembersAddError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 623
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    const-string v3, "2/team/groups/members/add"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMembersAddError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/h;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/members/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/h$a;->a:Lcom/dropbox/core/v2/team/h$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$a;->a:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 813
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    const-string v3, "2/team/groups/members/remove"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/j;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/j$a;->a:Lcom/dropbox/core/v2/team/j$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsListResult$a;->a:Lcom/dropbox/core/v2/team/GroupsListResult$a;

    .line 517
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 511
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 520
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"groups/list\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/k;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/k$a;->a:Lcom/dropbox/core/v2/team/k$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsListResult$a;->a:Lcom/dropbox/core/v2/team/GroupsListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsListContinueError$a;->a:Lcom/dropbox/core/v2/team/GroupsListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 576
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsListContinueError;

    const-string v3, "2/team/groups/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/l;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/members/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/l$a;->a:Lcom/dropbox/core/v2/team/l$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsMembersListResult$a;->a:Lcom/dropbox/core/v2/team/GroupsMembersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupSelectorError$a;->a:Lcom/dropbox/core/v2/team/GroupSelectorError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 700
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelectorErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupSelectorError;

    const-string v3, "2/team/groups/members/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupSelectorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupSelectorError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/m;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/members/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/m$a;->a:Lcom/dropbox/core/v2/team/m$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsMembersListResult$a;->a:Lcom/dropbox/core/v2/team/GroupsMembersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsMembersListContinueError$a;->a:Lcom/dropbox/core/v2/team/GroupsMembersListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 764
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListContinueError;

    const-string v3, "2/team/groups/members/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsMembersListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/o;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1021
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/linked_apps/list_member_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/o$a;->a:Lcom/dropbox/core/v2/team/o$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMemberAppsResult$a;->a:Lcom/dropbox/core/v2/team/ListMemberAppsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMemberAppsError$a;->a:Lcom/dropbox/core/v2/team/ListMemberAppsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1030
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberAppsError;

    const-string v3, "2/team/linked_apps/list_member_linked_apps"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMemberAppsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ListMemberDevicesArg;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/devices/list_member_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;->a:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$a;->a:Lcom/dropbox/core/v2/team/ListMemberDevicesResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMemberDevicesError$a;->a:Lcom/dropbox/core/v2/team/ListMemberDevicesError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberDevicesError;

    const-string v3, "2/team/devices/list_member_devices"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMemberDevicesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/p;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/linked_apps/list_members_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/p$a;->a:Lcom/dropbox/core/v2/team/p$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMembersAppsResult$a;->a:Lcom/dropbox/core/v2/team/ListMembersAppsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMembersAppsError$a;->a:Lcom/dropbox/core/v2/team/ListMembersAppsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1073
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    const-string v3, "2/team/linked_apps/list_members_linked_apps"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMembersAppsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;)Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/devices/list_members_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$a;->a:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;->a:Lcom/dropbox/core/v2/team/ListMembersDevicesResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMembersDevicesError$a;->a:Lcom/dropbox/core/v2/team/ListMembersDevicesError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersDevicesError;

    const-string v3, "2/team/devices/list_members_devices"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMembersDevicesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/q;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/linked_apps/list_team_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/q$a;->a:Lcom/dropbox/core/v2/team/q$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListTeamAppsResult$a;->a:Lcom/dropbox/core/v2/team/ListTeamAppsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListTeamAppsError$a;->a:Lcom/dropbox/core/v2/team/ListTeamAppsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1132
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListTeamAppsError;

    const-string v3, "2/team/linked_apps/list_team_linked_apps"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListTeamAppsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ListTeamDevicesArg;)Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/devices/list_team_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$a;->a:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ListTeamDevicesResult$a;->a:Lcom/dropbox/core/v2/team/ListTeamDevicesResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ListTeamDevicesError$a;->a:Lcom/dropbox/core/v2/team/ListTeamDevicesError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    const-string v3, "2/team/devices/list_team_devices"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListTeamDevicesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/r;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/r$a;->a:Lcom/dropbox/core/v2/team/r$a;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersAddLaunch$a;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$a;

    .line 1638
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1632
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1641
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"members/add\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1794
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersListArg$a;->a:Lcom/dropbox/core/v2/team/MembersListArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersListResult$a;->a:Lcom/dropbox/core/v2/team/MembersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersListError$a;->a:Lcom/dropbox/core/v2/team/MembersListError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1803
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersListError;

    const-string v3, "2/team/members/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersListErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersListError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/u;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1841
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/u$a;->a:Lcom/dropbox/core/v2/team/u$a;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersListResult$a;->a:Lcom/dropbox/core/v2/team/MembersListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersListContinueError$a;->a:Lcom/dropbox/core/v2/team/MembersListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1850
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersListContinueError;

    const-string v3, "2/team/members/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/w;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/set_admin_permissions"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/w$a;->a:Lcom/dropbox/core/v2/team/w$a;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersSetPermissionsResult$a;->a:Lcom/dropbox/core/v2/team/MembersSetPermissionsResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$a;->a:Lcom/dropbox/core/v2/team/MembersSetPermissionsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2119
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    const-string v3, "2/team/members/set_admin_permissions"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSetPermissionsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/y;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/devices/revoke_device_session_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/y$a;->a:Lcom/dropbox/core/v2/team/y$a;

    sget-object v6, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 241
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    const-string v3, "2/team/devices/revoke_device_session_batch"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/z;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/linked_apps/revoke_linked_app_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/z$a;->a:Lcom/dropbox/core/v2/team/z$a;

    sget-object v6, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1252
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;

    const-string v3, "2/team/linked_apps/revoke_linked_app_batch"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ab;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2859
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/archive"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ab$a;->a:Lcom/dropbox/core/v2/team/ab$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2868
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    const-string v3, "2/team/team_folder/archive"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/af;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3061
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/af$a;->a:Lcom/dropbox/core/v2/team/af$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderListResult$a;->a:Lcom/dropbox/core/v2/team/TeamFolderListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderListError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderListError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3070
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderListErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderListError;

    const-string v3, "2/team/team_folder/list"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderListErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderListError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ag;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3126
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ag$a;->a:Lcom/dropbox/core/v2/team/ag$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderListResult$a;->a:Lcom/dropbox/core/v2/team/TeamFolderListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderListContinueError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3135
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderListContinueError;

    const-string v3, "2/team/team_folder/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3254
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/update_sync_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;->a:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3263
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    const-string v3, "2/team/team_folder/update_sync_settings"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ac;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2962
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ac$a;->a:Lcom/dropbox/core/v2/team/ac$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2971
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    const-string v3, "2/team/team_folder/create"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderCreateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ad;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2818
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/activate"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ad$a;->a:Lcom/dropbox/core/v2/team/ad$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderActivateError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderActivateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2827
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    const-string v3, "2/team/team_folder/activate"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderActivateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ah;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3210
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/rename"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ah$a;->a:Lcom/dropbox/core/v2/team/ah$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3219
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    const-string v3, "2/team/team_folder/rename"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderRenameError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2153
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/set_profile"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;->a:Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->a:Lcom/dropbox/core/v2/team/TeamMemberInfo$a;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSetProfileError$a;->a:Lcom/dropbox/core/v2/team/MembersSetProfileError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2162
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v3, "2/team/members/set_profile"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSetProfileError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ai;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/namespaces/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ai$a;->a:Lcom/dropbox/core/v2/team/ai$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamNamespacesListResult$a;->a:Lcom/dropbox/core/v2/team/TeamNamespacesListResult$a;

    .line 2328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 2322
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2331
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"namespaces/list\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/aj;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2394
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/namespaces/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/aj$a;->a:Lcom/dropbox/core/v2/team/aj$a;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamNamespacesListResult$a;->a:Lcom/dropbox/core/v2/team/TeamNamespacesListResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError$a;->a:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2403
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    const-string v3, "2/team/namespaces/list/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/a;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/get_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/a$a;->a:Lcom/dropbox/core/v2/team/a$a;

    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/CustomQuotaResult$a;

    .line 1511
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/CustomQuotaError$a;->a:Lcom/dropbox/core/v2/team/CustomQuotaError$a;

    move-object v3, p1

    .line 1506
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1515
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/CustomQuotaError;

    const-string v3, "2/team/member_space_limits/get_custom_quota"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/CustomQuotaError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/aa;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/aa;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/SetCustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1584
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/set_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/aa$a;->a:Lcom/dropbox/core/v2/team/aa$a;

    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/CustomQuotaResult$a;

    .line 1589
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/SetCustomQuotaError$a;->a:Lcom/dropbox/core/v2/team/SetCustomQuotaError$a;

    move-object v3, p1

    .line 1584
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1593
    new-instance v0, Lcom/dropbox/core/v2/team/SetCustomQuotaErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    const-string v3, "2/team/member_space_limits/set_custom_quota"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/SetCustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/SetCustomQuotaError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/ae;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/ae;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3020
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ae$a;->a:Lcom/dropbox/core/v2/team/ae$a;

    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$a;

    .line 3025
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    .line 3026
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 3020
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3029
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"team_folder/get_info\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/i;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/members/set_access_type"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/i$a;->a:Lcom/dropbox/core/v2/team/i$a;

    sget-object v3, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;

    .line 892
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$a;->a:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$a;

    move-object v3, p1

    .line 887
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 896
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string v3, "2/team/groups/members/set_access_type"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/t;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/t;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MembersGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/t$a;->a:Lcom/dropbox/core/v2/team/t$a;

    sget-object v3, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;

    .line 1759
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersGetInfoError$a;->a:Lcom/dropbox/core/v2/team/MembersGetInfoError$a;

    move-object v3, p1

    .line 1754
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1763
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersGetInfoError;

    const-string v3, "2/team/members/get_info"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersGetInfoError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/linked_apps/revoke_linked_app"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$a;

    .line 1189
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeLinkedAppError$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedAppError$a;

    move-object v3, p1

    .line 1184
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1193
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    const-string v3, "2/team/linked_apps/revoke_linked_app"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2213
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/suspend"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/s$a;->a:Lcom/dropbox/core/v2/team/s$a;

    .line 2218
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->a:Lcom/dropbox/core/v2/team/MembersSuspendError$a;

    move-object v3, p1

    .line 2213
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2222
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersSuspendError;

    const-string v3, "2/team/members/suspend"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersSuspendErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSuspendError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRecoverErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1884
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/recover"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/v$a;->a:Lcom/dropbox/core/v2/team/v$a;

    .line 1889
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersRecoverError$a;->a:Lcom/dropbox/core/v2/team/MembersRecoverError$a;

    move-object v3, p1

    .line 1884
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1893
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRecoverErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersRecoverError;

    const-string v3, "2/team/members/recover"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersRecoverErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersRecoverError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/team/x;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2277
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/unsuspend"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/x$a;->a:Lcom/dropbox/core/v2/team/x$a;

    .line 2282
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersUnsuspendError$a;->a:Lcom/dropbox/core/v2/team/MembersUnsuspendError$a;

    move-object v3, p1

    .line 2277
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2286
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v3, "2/team/members/unsuspend"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersUnsuspendError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/excluded_users/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/d$a;->a:Lcom/dropbox/core/v2/team/d$a;

    sget-object v6, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError$a;->a:Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1458
    new-instance v0, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError;

    const-string v3, "2/team/member_space_limits/excluded_users/remove"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ExcludedUsersUpdateError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetDevicesReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2666
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/reports/get_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$a;->a:Lcom/dropbox/core/v2/team/DateRange$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GetDevicesReport$a;->a:Lcom/dropbox/core/v2/team/GetDevicesReport$a;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$a;->a:Lcom/dropbox/core/v2/team/DateRangeError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GetDevicesReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2675
    new-instance v0, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/DateRangeError;

    const-string v3, "2/team/reports/get_devices"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1711
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/add/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersAddJobStatus$a;->a:Lcom/dropbox/core/v2/team/MembersAddJobStatus$a;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1720
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/team/members/add/job_status/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/team/a;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/member_space_limits/remove_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/a$a;->a:Lcom/dropbox/core/v2/team/a$a;

    sget-object v3, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;

    .line 1550
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/CustomQuotaError$a;->a:Lcom/dropbox/core/v2/team/CustomQuotaError$a;

    move-object v3, p1

    .line 1545
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1554
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/CustomQuotaError;

    const-string v3, "2/team/member_space_limits/remove_custom_quota"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/CustomQuotaError;)V

    throw v0
.end method

.method b(Lcom/dropbox/core/v2/team/ad;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3169
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ad$a;->a:Lcom/dropbox/core/v2/team/ad$a;

    .line 3174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;

    move-object v3, p1

    .line 3169
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3178
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    const-string v3, "2/team/team_folder/permanently_delete"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)V

    throw v0
.end method

.method c(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2035
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/remove/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2044
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/team/members/remove/job_status/get"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method c(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetMembershipReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2718
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/reports/get_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$a;->a:Lcom/dropbox/core/v2/team/DateRange$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GetMembershipReport$a;->a:Lcom/dropbox/core/v2/team/GetMembershipReport$a;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$a;->a:Lcom/dropbox/core/v2/team/DateRangeError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GetMembershipReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2727
    new-instance v0, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/DateRangeError;

    const-string v3, "2/team/reports/get_membership"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v0
.end method

.method d(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetStorageReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2769
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/reports/get_storage"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$a;->a:Lcom/dropbox/core/v2/team/DateRange$a;

    sget-object v6, Lcom/dropbox/core/v2/team/GetStorageReport$a;->a:Lcom/dropbox/core/v2/team/GetStorageReport$a;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$a;->a:Lcom/dropbox/core/v2/team/DateRangeError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GetStorageReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2778
    new-instance v0, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/DateRangeError;

    const-string v3, "2/team/reports/get_storage"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v0
.end method

.method d(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2920
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/team_folder/archive/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;->a:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$a;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2929
    new-instance v0, Lcom/dropbox/core/v2/async/PollErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/PollError;

    const-string v3, "2/team/team_folder/archive/check"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v0
.end method

.method public devicesListMemberDevices(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ListMemberDevicesArg;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;

    move-result-object p1

    return-object p1
.end method

.method public devicesListMemberDevicesBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
    .locals 1

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;)V

    return-object v0
.end method

.method public devicesListMembersDevices()Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;-><init>()V

    .line 132
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;)Lcom/dropbox/core/v2/team/ListMembersDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method public devicesListMembersDevicesBuilder()Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 2

    .line 142
    invoke-static {}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->a()Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;)V

    return-object v1
.end method

.method public devicesListTeamDevices()Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;-><init>()V

    .line 181
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ListTeamDevicesArg;)Lcom/dropbox/core/v2/team/ListTeamDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method public devicesListTeamDevicesBuilder()Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    invoke-static {}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;->a()Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;)V

    return-object v1
.end method

.method public devicesRevokeDeviceSession(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/devices/revoke_device_session"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;

    .line 214
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeDeviceSessionError$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionError$a;

    move-object v3, p1

    .line 209
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionError;

    const-string v3, "2/team/devices/revoke_device_session"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeDeviceSessionError;)V

    throw v0
.end method

.method public devicesRevokeDeviceSessionBatch(Ljava/util/List;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/dropbox/core/v2/team/y;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/y;-><init>(Ljava/util/List;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/y;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;

    move-result-object p1

    return-object p1
.end method

.method public featuresGetValues(Ljava/util/List;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/Feature;",
            ">;)",
            "Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/dropbox/core/v2/team/e;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/e;-><init>(Ljava/util/List;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/e;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;

    move-result-object p1

    return-object p1
.end method

.method public getInfo()Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/get_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 314
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/team/TeamGetInfoResult$a;->a:Lcom/dropbox/core/v2/team/TeamGetInfoResult$a;

    .line 316
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    .line 310
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error response for \"get_info\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v1
.end method

.method public groupsCreate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/GroupCreateArg;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object p1

    return-object p1
.end method

.method public groupsCreateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsCreateBuilder;
    .locals 1

    .line 378
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupCreateArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    move-result-object p1

    .line 379
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;)V

    return-object v0
.end method

.method public groupsDelete(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupSelector$a;->a:Lcom/dropbox/core/v2/team/GroupSelector$a;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupDeleteError$a;->a:Lcom/dropbox/core/v2/team/GroupDeleteError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 410
    new-instance v0, Lcom/dropbox/core/v2/team/GroupDeleteErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupDeleteError;

    const-string v3, "2/team/groups/delete"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupDeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupDeleteError;)V

    throw v0
.end method

.method public groupsGetInfo(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupsSelector;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/groups/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsSelector$a;->a:Lcom/dropbox/core/v2/team/GroupsSelector$a;

    sget-object v3, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;

    .line 433
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsGetInfoError$a;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoError$a;

    move-object v3, p1

    .line 428
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 437
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/GroupsGetInfoError;

    const-string v3, "2/team/groups/get_info"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsGetInfoError;)V

    throw v0
.end method

.method public groupsJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsPollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 497
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsList()Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/dropbox/core/v2/team/j;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/j;-><init>()V

    .line 532
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/j;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsList(J)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 551
    new-instance v0, Lcom/dropbox/core/v2/team/j;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/j;-><init>(J)V

    .line 552
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/j;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object p1

    return-object p1

    .line 549
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public groupsListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 592
    new-instance v0, Lcom/dropbox/core/v2/team/k;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/k;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/k;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 650
    new-instance v0, Lcom/dropbox/core/v2/team/g;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/g;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V

    .line 651
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/g;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 677
    new-instance v0, Lcom/dropbox/core/v2/team/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/g;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 678
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/g;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersList(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 717
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/l;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    .line 718
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/l;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersList(Lcom/dropbox/core/v2/team/GroupSelector;J)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 739
    new-instance v0, Lcom/dropbox/core/v2/team/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/l;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V

    .line 740
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/l;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object p1

    return-object p1

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 734
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public groupsMembersListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 780
    new-instance v0, Lcom/dropbox/core/v2/team/m;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/m;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/m;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 843
    new-instance v0, Lcom/dropbox/core/v2/team/h;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/h;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V

    .line 844
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/h;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 872
    new-instance v0, Lcom/dropbox/core/v2/team/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/h;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 873
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/h;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            "Lcom/dropbox/core/v2/team/GroupAccessType;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 921
    new-instance v0, Lcom/dropbox/core/v2/team/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/i;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)V

    .line 922
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            "Lcom/dropbox/core/v2/team/GroupAccessType;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 944
    new-instance v0, Lcom/dropbox/core/v2/team/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/team/i;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V

    .line 945
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public groupsUpdate(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 989
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    .line 990
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/GroupUpdateArgs;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object p1

    return-object p1
.end method

.method public groupsUpdateBuilder(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 1

    .line 1006
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->a(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    move-result-object p1

    .line 1007
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;)V

    return-object v0
.end method

.method public linkedAppsListMemberLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1044
    new-instance v0, Lcom/dropbox/core/v2/team/o;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/o;-><init>(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/o;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;

    move-result-object p1

    return-object p1
.end method

.method public linkedAppsListMembersLinkedApps()Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1085
    new-instance v0, Lcom/dropbox/core/v2/team/p;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/p;-><init>()V

    .line 1086
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/p;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;

    move-result-object v0

    return-object v0
.end method

.method public linkedAppsListMembersLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1103
    new-instance v0, Lcom/dropbox/core/v2/team/p;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/p;-><init>(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/p;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;

    move-result-object p1

    return-object p1
.end method

.method public linkedAppsListTeamLinkedApps()Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    new-instance v0, Lcom/dropbox/core/v2/team/q;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/q;-><init>()V

    .line 1149
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/q;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;

    move-result-object v0

    return-object v0
.end method

.method public linkedAppsListTeamLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1170
    new-instance v0, Lcom/dropbox/core/v2/team/q;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/q;-><init>(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/q;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;

    move-result-object p1

    return-object p1
.end method

.method public linkedAppsRevokeLinkedApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1212
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V

    return-void
.end method

.method public linkedAppsRevokeLinkedApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1229
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1230
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V

    return-void
.end method

.method public linkedAppsRevokeLinkedAppBatch(Ljava/util/List;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1266
    new-instance v0, Lcom/dropbox/core/v2/team/z;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/z;-><init>(Ljava/util/List;)V

    .line 1267
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/z;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsExcludedUsersAdd()Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1304
    new-instance v0, Lcom/dropbox/core/v2/team/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/d;-><init>()V

    .line 1305
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public memberSpaceLimitsExcludedUsersAdd(Ljava/util/List;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'users\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1327
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/d;-><init>(Ljava/util/List;)V

    .line 1328
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsExcludedUsersList()Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1366
    new-instance v0, Lcom/dropbox/core/v2/team/b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/b;-><init>()V

    .line 1367
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/b;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;

    move-result-object v0

    return-object v0
.end method

.method public memberSpaceLimitsExcludedUsersList(J)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1388
    new-instance v0, Lcom/dropbox/core/v2/team/b;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/b;-><init>(J)V

    .line 1389
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/b;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;

    move-result-object p1

    return-object p1

    .line 1386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1383
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public memberSpaceLimitsExcludedUsersListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1430
    new-instance v0, Lcom/dropbox/core/v2/team/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/c;-><init>(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/c;)Lcom/dropbox/core/v2/team/ExcludedUsersListResult;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsExcludedUsersRemove()Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1468
    new-instance v0, Lcom/dropbox/core/v2/team/d;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/d;-><init>()V

    .line 1469
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public memberSpaceLimitsExcludedUsersRemove(Ljava/util/List;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ExcludedUsersUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1487
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'users\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1491
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/d;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/d;-><init>(Ljava/util/List;)V

    .line 1492
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/d;)Lcom/dropbox/core/v2/team/ExcludedUsersUpdateResult;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsGetCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1530
    new-instance v0, Lcom/dropbox/core/v2/team/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/a;-><init>(Ljava/util/List;)V

    .line 1531
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsRemoveCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1569
    new-instance v0, Lcom/dropbox/core/v2/team/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/a;-><init>(Ljava/util/List;)V

    .line 1570
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memberSpaceLimitsSetCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserCustomQuotaArg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/SetCustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1608
    new-instance v0, Lcom/dropbox/core/v2/team/aa;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/aa;-><init>(Ljava/util/List;)V

    .line 1609
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/aa;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public membersAdd(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1668
    new-instance v0, Lcom/dropbox/core/v2/team/r;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/r;-><init>(Ljava/util/List;)V

    .line 1669
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/r;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object p1

    return-object p1
.end method

.method public membersAdd(Ljava/util/List;Z)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1693
    new-instance v0, Lcom/dropbox/core/v2/team/r;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/r;-><init>(Ljava/util/List;Z)V

    .line 1694
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/r;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object p1

    return-object p1
.end method

.method public membersAddJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1737
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object p1

    return-object p1
.end method

.method public membersGetInfo(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MembersGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1780
    new-instance v0, Lcom/dropbox/core/v2/team/t;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/t;-><init>(Ljava/util/List;)V

    .line 1781
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/t;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public membersList()Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1814
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>()V

    .line 1815
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object v0

    return-object v0
.end method

.method public membersListBuilder()Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 2

    .line 1825
    invoke-static {}, Lcom/dropbox/core/v2/team/MembersListArg;->a()Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    move-result-object v0

    .line 1826
    new-instance v1, Lcom/dropbox/core/v2/team/MembersListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/MembersListBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersListArg$Builder;)V

    return-object v1
.end method

.method public membersListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1866
    new-instance v0, Lcom/dropbox/core/v2/team/u;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/u;-><init>(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/u;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object p1

    return-object p1
.end method

.method public membersRecover(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRecoverErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1908
    new-instance v0, Lcom/dropbox/core/v2/team/v;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/v;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 1909
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/v;)V

    return-void
.end method

.method public membersRemove(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1982
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 1983
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public membersRemoveBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    .line 2012
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg;->a(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    move-result-object p1

    .line 2013
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;)V

    return-object v0
.end method

.method public membersRemoveJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2066
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->c(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;

    move-result-object p1

    return-object p1
.end method

.method public membersSendWelcomeEmail(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/members/send_welcome_email"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    .line 2090
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$a;->a:Lcom/dropbox/core/v2/team/MembersSendWelcomeError$a;

    move-object v3, p1

    .line 2085
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2094
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    const-string v3, "2/team/members/send_welcome_email"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSendWelcomeError;)V

    throw v0
.end method

.method public membersSetAdminPermissions(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/AdminTier;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2134
    new-instance v0, Lcom/dropbox/core/v2/team/w;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/w;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/AdminTier;)V

    .line 2135
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/w;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;

    move-result-object p1

    return-object p1
.end method

.method public membersSetProfile(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2178
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 2179
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object p1

    return-object p1
.end method

.method public membersSetProfileBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .line 2195
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    move-result-object p1

    .line 2196
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;)V

    return-object v0
.end method

.method public membersSuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2241
    new-instance v0, Lcom/dropbox/core/v2/team/s;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/s;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 2242
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/s;)V

    return-void
.end method

.method public membersSuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2259
    new-instance v0, Lcom/dropbox/core/v2/team/s;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/s;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 2260
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/s;)V

    return-void
.end method

.method public membersUnsuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2301
    new-instance v0, Lcom/dropbox/core/v2/team/x;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/x;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 2302
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/x;)V

    return-void
.end method

.method public namespacesList()Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2349
    new-instance v0, Lcom/dropbox/core/v2/team/ai;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ai;-><init>()V

    .line 2350
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ai;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object v0

    return-object v0
.end method

.method public namespacesList(J)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2376
    new-instance v0, Lcom/dropbox/core/v2/team/ai;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/ai;-><init>(J)V

    .line 2377
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ai;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object p1

    return-object p1

    .line 2374
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2371
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public namespacesListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2421
    new-instance v0, Lcom/dropbox/core/v2/team/aj;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/aj;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesTemplateAdd(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2464
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2465
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesTemplateGet(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2506
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesTemplateList()Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2521
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/properties/template/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2525
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    .line 2521
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2530
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v4, "2/team/properties/template/list"

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method public propertiesTemplateUpdate(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2572
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesTemplateUpdateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2595
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    move-result-object p1

    .line 2596
    new-instance v0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V

    return-object v0
.end method

.method public reportsGetActivity()Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2635
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2636
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetActivityReport;

    move-result-object v0

    return-object v0
.end method

.method public reportsGetActivityBuilder()Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;
    .locals 2

    .line 2646
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->a()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2647
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetDevices()Lcom/dropbox/core/v2/team/GetDevicesReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2688
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2689
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetDevicesReport;

    move-result-object v0

    return-object v0
.end method

.method public reportsGetDevicesBuilder()Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;
    .locals 2

    .line 2699
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->a()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2700
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetMembership()Lcom/dropbox/core/v2/team/GetMembershipReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2739
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2740
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->c(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetMembershipReport;

    move-result-object v0

    return-object v0
.end method

.method public reportsGetMembershipBuilder()Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;
    .locals 2

    .line 2750
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->a()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2751
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetStorage()Lcom/dropbox/core/v2/team/GetStorageReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2790
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2791
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->d(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetStorageReport;

    move-result-object v0

    return-object v0
.end method

.method public reportsGetStorageBuilder()Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;
    .locals 2

    .line 2801
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->a()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2802
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public teamFolderActivate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2844
    new-instance v0, Lcom/dropbox/core/v2/team/ad;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ad;-><init>(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ad;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderArchive(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2886
    new-instance v0, Lcom/dropbox/core/v2/team/ab;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ab;-><init>(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ab;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderArchive(Ljava/lang/String;Z)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2903
    new-instance v0, Lcom/dropbox/core/v2/team/ab;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/ab;-><init>(Ljava/lang/String;Z)V

    .line 2904
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ab;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderArchiveCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2945
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2946
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->d(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderCreate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2987
    new-instance v0, Lcom/dropbox/core/v2/team/ac;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ac;-><init>(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ac;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderCreate(Ljava/lang/String;Lcom/dropbox/core/v2/files/SyncSettingArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3005
    new-instance v0, Lcom/dropbox/core/v2/team/ac;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/ac;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/SyncSettingArg;)V

    .line 3006
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ac;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderGetInfo(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3044
    new-instance v0, Lcom/dropbox/core/v2/team/ae;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ae;-><init>(Ljava/util/List;)V

    .line 3045
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ae;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderList()Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3084
    new-instance v0, Lcom/dropbox/core/v2/team/af;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/af;-><init>()V

    .line 3085
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/af;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object v0

    return-object v0
.end method

.method public teamFolderList(J)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3107
    new-instance v0, Lcom/dropbox/core/v2/team/af;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/af;-><init>(J)V

    .line 3108
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/af;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object p1

    return-object p1

    .line 3105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public teamFolderListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3154
    new-instance v0, Lcom/dropbox/core/v2/team/ag;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ag;-><init>(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ag;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderPermanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3193
    new-instance v0, Lcom/dropbox/core/v2/team/ad;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ad;-><init>(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->b(Lcom/dropbox/core/v2/team/ad;)V

    return-void
.end method

.method public teamFolderRename(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3237
    new-instance v0, Lcom/dropbox/core/v2/team/ah;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/ah;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/ah;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderUpdateSyncSettings(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3280
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;-><init>(Ljava/lang/String;)V

    .line 3281
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object p1

    return-object p1
.end method

.method public teamFolderUpdateSyncSettingsBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsBuilder;
    .locals 1

    .line 3298
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;

    move-result-object p1

    .line 3299
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;)V

    return-object v0
.end method

.method public tokenGetAuthenticatedAdmin()Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 3315
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/team/token/get_authenticated_admin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3319
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;->a:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;

    sget-object v7, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$a;->a:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$a;

    .line 3315
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3324
    new-instance v1, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    const-string v4, "2/team/token/get_authenticated_admin"

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;)V

    throw v1
.end method
