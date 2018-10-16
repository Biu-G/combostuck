.class Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AddFileMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/AddFileMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->a:Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 383
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 389
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "user_error"

    .line 394
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "user_error"

    .line 396
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 397
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    .line 398
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "access_error"

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "access_error"

    .line 402
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 403
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "rate_limit"

    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    goto :goto_1

    :cond_3
    const-string v2, "invalid_comment"

    .line 409
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    goto :goto_1

    .line 413
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    :goto_1
    if-nez v0, :cond_5

    .line 416
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 392
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->tag()Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 371
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "invalid_comment"

    .line 367
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "rate_limit"

    .line 363
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 356
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 357
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->b(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 348
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "user_error"

    .line 349
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->a(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 351
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

    .line 340
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

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

    .line 340
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$a;->a(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
