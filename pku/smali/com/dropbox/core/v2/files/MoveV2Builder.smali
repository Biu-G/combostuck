.class public Lcom/dropbox/core/v2/files/MoveV2Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 31
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->build()Lcom/dropbox/core/v2/files/RelocationArg;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->d(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;

    move-result-object v0

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveV2Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    return-object p0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveV2Builder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    return-object p0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/MoveV2Builder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/files/MoveV2Builder;->b:Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    return-object p0
.end method
