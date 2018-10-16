.class Lcom/dropbox/core/v2/files/SaveUrlError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SaveUrlError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/SaveUrlError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/SaveUrlError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 286
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$a;->a:Lcom/dropbox/core/v2/files/SaveUrlError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "path"

    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "path"

    .line 337
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "download_failed"

    .line 341
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    :cond_2
    const-string v2, "invalid_url"

    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    :cond_3
    const-string v2, "not_found"

    .line 347
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    .line 351
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;

    :goto_1
    if-nez v0, :cond_5

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 333
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->tag()Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 312
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "not_found"

    .line 308
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "invalid_url"

    .line 304
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "download_failed"

    .line 300
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 293
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 294
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlError;

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

    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->a(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
