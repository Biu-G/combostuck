.class Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 51
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 57
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 63
    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->OTHER:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    if-nez v0, :cond_1

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_1
    return-object v1

    .line 60
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string p1, "other"

    .line 39
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;->a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
