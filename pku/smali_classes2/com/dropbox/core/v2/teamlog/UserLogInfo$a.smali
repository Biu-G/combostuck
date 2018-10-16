.class Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/UserLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 295
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 297
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_6

    move-object v1, v0

    move-object v2, v1

    .line 305
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 306
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "account_id"

    .line 308
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "display_name"

    .line 311
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "email"

    .line 314
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 321
    :cond_5
    new-instance v3, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, ""

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v0, "team_member"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v3

    goto :goto_1

    :cond_8
    const-string v0, "non_team_member"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object v3

    :goto_1
    if-nez p2, :cond_9

    .line 336
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    return-object v3

    .line 333
    :cond_a
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subtype found that matches tag: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/UserLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 262
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 266
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 271
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 273
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "account_id"

    .line 274
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 277
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "display_name"

    .line 278
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 281
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "email"

    .line 282
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    if-nez p3, :cond_6

    .line 286
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_6
    return-void
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 257
    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/UserLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
