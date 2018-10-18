.class public Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/templates/add_for_user"

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

    .line 364
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    const-string v3, "2/file_properties/templates/add_for_user"

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

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/templates/get_for_user"

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

    .line 410
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v3, "2/file_properties/templates/get_for_user"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/a;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/PropertiesSearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/search"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/a$a;->a:Lcom/dropbox/core/v2/fileproperties/a$a;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 203
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;

    const-string v3, "2/file_properties/properties/search"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/b;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/search/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/b$a;->a:Lcom/dropbox/core/v2/fileproperties/b$a;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult$a;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    const-string v3, "2/file_properties/properties/search/continue"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;)V

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

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/templates/update_for_user"

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

    .line 523
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    const-string v3, "2/file_properties/templates/update_for_user"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;

    .line 44
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    move-object v3, p1

    .line 39
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    const-string v3, "2/file_properties/properties/add"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/overwrite"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;

    .line 94
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    move-object v3, p1

    .line 89
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    const-string v3, "2/file_properties/properties/overwrite"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;

    .line 149
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    move-object v3, p1

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 153
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    const-string v3, "2/file_properties/properties/remove"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/properties/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    move-object v3, p1

    .line 305
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 314
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    const-string v3, "2/file_properties/properties/update"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)V

    throw v0
.end method

.method a(Lcom/dropbox/core/v2/fileproperties/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/templates/remove_for_user"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    .line 474
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    move-object v3, p1

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 478
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v3, "2/file_properties/templates/remove_for_user"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v0
.end method

.method public propertiesAdd(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V

    return-void
.end method

.method public propertiesOverwrite(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V

    return-void
.end method

.method public propertiesRemove(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V

    return-void
.end method

.method public propertiesSearch(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/PropertiesSearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/a;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/a;-><init>(Ljava/util/List;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/a;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesSearch(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;",
            ")",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/PropertiesSearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 240
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/a;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/a;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/a;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'templateFilter\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public propertiesSearchContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/b;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/b;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/b;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchResult;

    move-result-object p1

    return-object p1
.end method

.method public propertiesUpdate(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V

    return-void
.end method

.method public templatesAddForUser(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
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

    .line 386
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public templatesGetForUser(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 427
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public templatesListForUser()Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/file_properties/templates/list_for_user"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 447
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    .line 443
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const-string v4, "2/file_properties/templates/list_for_user"

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method public templatesRemoveForUser(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 497
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/c;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/c;)V

    return-void
.end method

.method public templatesUpdateForUser(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 542
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->a(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object p1

    return-object p1
.end method

.method public templatesUpdateForUserBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;
    .locals 1

    .line 564
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    move-result-object p1

    .line 565
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;-><init>(Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V

    return-object v0
.end method
