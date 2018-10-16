.class Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadSessionLookupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/UploadSessionLookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 333
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 380
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const-string v3, "not_found"

    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    :cond_1
    const-string v3, "incorrect_offset"

    .line 388
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "closed"

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    :cond_3
    const-string v2, "not_closed"

    .line 396
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    :cond_4
    const-string v2, "too_large"

    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->TOO_LARGE:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    .line 403
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    :goto_1
    if-nez v1, :cond_6

    .line 406
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 407
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v0

    .line 383
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->tag()Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 362
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "too_large"

    .line 358
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "not_closed"

    .line 354
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "closed"

    .line 350
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "incorrect_offset"

    .line 344
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->a(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$a;->a(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 346
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_4
    const-string p1, "not_found"

    .line 339
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
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

    .line 332
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

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

    .line 332
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$a;->a(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
