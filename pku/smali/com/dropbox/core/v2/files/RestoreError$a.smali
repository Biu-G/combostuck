.class Lcom/dropbox/core/v2/files/RestoreError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RestoreError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/RestoreError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/RestoreError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RestoreError$a;->a:Lcom/dropbox/core/v2/files/RestoreError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "path_lookup"

    .line 371
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "path_lookup"

    .line 373
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 374
    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 375
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RestoreError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "path_write"

    .line 377
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "path_write"

    .line 379
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 380
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 381
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RestoreError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "invalid_revision"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError;

    goto :goto_1

    .line 387
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError;->OTHER:Lcom/dropbox/core/v2/files/RestoreError;

    :goto_1
    if-nez v0, :cond_4

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 369
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/RestoreError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RestoreError;->tag()Lcom/dropbox/core/v2/files/RestoreError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 348
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "invalid_revision"

    .line 344
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path_write"

    .line 337
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path_write"

    .line 338
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->b(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 340
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path_lookup"

    .line 329
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path_lookup"

    .line 330
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->a(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 332
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 321
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RestoreError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RestoreError;

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

    .line 321
    check-cast p1, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RestoreError$a;->a(Lcom/dropbox/core/v2/files/RestoreError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
