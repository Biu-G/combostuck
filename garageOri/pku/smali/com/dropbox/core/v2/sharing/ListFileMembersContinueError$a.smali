.class Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "user_error"

    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "user_error"

    .line 367
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 368
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    .line 369
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "access_error"

    .line 371
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "access_error"

    .line 373
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 374
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 375
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "invalid_cursor"

    .line 377
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    goto :goto_1

    .line 381
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    :goto_1
    if-nez v0, :cond_4

    .line 384
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 385
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 363
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->tag()Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 342
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "invalid_cursor"

    .line 338
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 331
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 332
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->b(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 334
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 323
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "user_error"

    .line 324
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a:Lcom/dropbox/core/v2/sharing/SharingUserError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->a(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$a;->a(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 326
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

    .line 315
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

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

    .line 315
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$a;->a(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
