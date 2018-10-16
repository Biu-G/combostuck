.class public Lcom/dropbox/core/v2/filerequests/CreateBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field private final b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 32
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    if-eqz p2, :cond_0

    .line 36
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->build()Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->a:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateBuilder;->b:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    return-object p0
.end method
