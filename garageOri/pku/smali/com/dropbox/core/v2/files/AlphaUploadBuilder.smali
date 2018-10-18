.class public Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
.super Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic start()Lcom/dropbox/core/DbxUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/AlphaUploadBuilder;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    return-object p0
.end method
