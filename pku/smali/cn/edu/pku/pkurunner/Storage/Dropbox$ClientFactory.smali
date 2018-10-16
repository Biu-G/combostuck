.class public abstract Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Storage/Dropbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClientFactory"
.end annotation


# static fields
.field private static a:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/dropbox/core/v2/DbxClientV2;
    .locals 2

    .line 89
    sget-object v0, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->a:Lcom/dropbox/core/v2/DbxClientV2;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->a:Lcom/dropbox/core/v2/DbxClientV2;

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3

    .line 79
    sget-object v0, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->a:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v0, :cond_0

    const-string v0, "PKU-Runner-Android-v1.2"

    .line 80
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestConfig;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor;

    .line 81
    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttp3Requestor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig$Builder;->build()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v1, v0, p0}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    sput-object v1, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->a:Lcom/dropbox/core/v2/DbxClientV2;

    :cond_0
    return-void
.end method
