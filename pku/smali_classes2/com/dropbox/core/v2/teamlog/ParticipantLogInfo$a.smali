.class Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 344
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "user"

    .line 349
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "user"

    .line 351
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 353
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "group"

    .line 355
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->group(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    :goto_1
    if-nez v1, :cond_3

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 347
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 326
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group"

    .line 320
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 322
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user"

    .line 312
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "user"

    .line 313
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 315
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

    .line 304
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

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

    .line 304
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
