.class Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "success"

    .line 346
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->success(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "member_error"

    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "member_error"

    .line 353
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 354
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v0

    goto :goto_1

    .line 358
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    :goto_1
    if-nez v1, :cond_3

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 344
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 323
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 316
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "member_error"

    .line 317
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 319
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "success"

    .line 309
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 311
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

    .line 301
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

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

    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
