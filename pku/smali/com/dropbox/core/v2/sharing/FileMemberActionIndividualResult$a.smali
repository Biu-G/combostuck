.class Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "success"

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    const-string v1, "success"

    .line 322
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 323
    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/AccessLevel;

    :cond_1
    if-nez v1, :cond_2

    .line 326
    invoke-static {}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v1

    goto :goto_1

    .line 329
    :cond_2
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "member_error"

    .line 332
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "member_error"

    .line 334
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 335
    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    .line 336
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_4

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 343
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 339
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 288
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 289
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "member_error"

    .line 290
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$a;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 292
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "success"

    .line 281
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "success"

    .line 282
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 284
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

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

    .line 273
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

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

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
