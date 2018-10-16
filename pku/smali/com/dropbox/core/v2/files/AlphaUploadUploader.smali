.class public Lcom/dropbox/core/v2/files/AlphaUploadUploader;
.super Lcom/dropbox/core/DbxUploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxUploader<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        "Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$a;->a:Lcom/dropbox/core/v2/files/FileMetadata$a;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/dropbox/core/DbxUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaUploadUploader;->newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;

    move-result-object p1

    return-object p1
.end method

.method protected newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;
    .locals 4

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;

    const-string v1, "2/files/alpha/upload"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithPropertiesException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)V

    return-object v0
.end method
