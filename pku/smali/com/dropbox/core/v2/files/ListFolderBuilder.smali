.class public Lcom/dropbox/core/v2/files/ListFolderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    .line 37
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->build()Lcom/dropbox/core/v2/files/ListFolderArg;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withIncludeMountedFolders(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludeMountedFolders(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withIncludePropertyGroups(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withIncludePropertyGroups(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method

.method public withSharedLink(Lcom/dropbox/core/v2/files/SharedLink;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderBuilder;->b:Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->withSharedLink(Lcom/dropbox/core/v2/files/SharedLink;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    return-object p0
.end method
