.class final Lcom/dropbox/core/DbxAuthInfo$2;
.super Lcom/dropbox/core/json/JsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter<",
        "Lcom/dropbox/core/DbxAuthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/core/DbxAuthInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_token"

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/DbxAuthInfo;->a(Lcom/dropbox/core/DbxAuthInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/dropbox/core/DbxAuthInfo;->b(Lcom/dropbox/core/DbxAuthInfo;)Lcom/dropbox/core/DbxHost;

    move-result-object v0

    sget-object v1, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/DbxHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "host"

    .line 101
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/dropbox/core/DbxHost;->Writer:Lcom/dropbox/core/json/JsonWriter;

    invoke-static {p1}, Lcom/dropbox/core/DbxAuthInfo;->b(Lcom/dropbox/core/DbxAuthInfo;)Lcom/dropbox/core/DbxHost;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 104
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public synthetic write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/dropbox/core/DbxAuthInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/DbxAuthInfo$2;->a(Lcom/dropbox/core/DbxAuthInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
