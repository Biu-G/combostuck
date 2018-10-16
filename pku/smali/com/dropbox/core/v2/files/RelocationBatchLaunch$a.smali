.class Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 320
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->a:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 358
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "async_job_id"

    .line 364
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "async_job_id"

    .line 366
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "complete"

    .line 370
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$a;->a:Lcom/dropbox/core/v2/files/RelocationBatchResult$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    goto :goto_1

    .line 376
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    :goto_1
    if-nez v1, :cond_3

    .line 379
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 380
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 362
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->tag()Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 341
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "complete"

    .line 335
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 336
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$a;->a:Lcom/dropbox/core/v2/files/RelocationBatchResult$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->b(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/RelocationBatchResult$a;->a(Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 337
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 326
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "async_job_id"

    .line 327
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "async_job_id"

    .line 328
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->a(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 330
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 319
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

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

    .line 319
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$a;->a(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
