.class Lcom/dropbox/core/v2/files/DeleteError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/DeleteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/DeleteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/DeleteError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError$a;->a:Lcom/dropbox/core/v2/files/DeleteError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 376
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 382
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "path_lookup"

    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "path_lookup"

    .line 389
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 390
    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 391
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "path_write"

    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "path_write"

    .line 395
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 396
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 397
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "too_many_write_operations"

    .line 399
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;

    goto :goto_1

    :cond_3
    const-string v2, "too_many_files"

    .line 402
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

    goto :goto_1

    .line 406
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError;->OTHER:Lcom/dropbox/core/v2/files/DeleteError;

    :goto_1
    if-nez v0, :cond_5

    .line 409
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 410
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 385
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/DeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteError;->tag()Lcom/dropbox/core/v2/files/DeleteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 364
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "too_many_files"

    .line 360
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "too_many_write_operations"

    .line 356
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path_write"

    .line 349
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path_write"

    .line 350
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->b(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 340
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path_lookup"

    .line 341
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path_lookup"

    .line 342
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 344
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

    .line 333
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteError;

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

    .line 333
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteError$a;->a(Lcom/dropbox/core/v2/files/DeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
