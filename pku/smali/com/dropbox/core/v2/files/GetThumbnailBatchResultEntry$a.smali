.class Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "success"

    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->success(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "failure"

    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "failure"

    .line 346
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$a;->a:Lcom/dropbox/core/v2/files/ThumbnailError$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failure(Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    goto :goto_1

    .line 351
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    :goto_1
    if-nez v1, :cond_3

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 337
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 316
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "failure"

    .line 309
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "failure"

    .line 310
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$a;->a:Lcom/dropbox/core/v2/files/ThumbnailError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->b(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailError$a;->a(Lcom/dropbox/core/v2/files/ThumbnailError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 312
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "success"

    .line 302
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 303
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 304
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

    .line 294
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

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

    .line 294
    check-cast p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$a;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
