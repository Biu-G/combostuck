.class Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 306
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 346
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "success"

    .line 351
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "success"

    .line 353
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 354
    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    .line 355
    invoke-static {v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->success(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "invalid_user"

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "invalid_user"

    .line 359
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 360
    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    .line 361
    invoke-static {v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v1

    goto :goto_1

    .line 364
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    :goto_1
    if-nez v0, :cond_3

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 368
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 349
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->tag()Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 328
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_user"

    .line 321
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "invalid_user"

    .line 322
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 324
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "success"

    .line 313
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "success"

    .line 314
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 316
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

    .line 305
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

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

    .line 305
    check-cast p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
