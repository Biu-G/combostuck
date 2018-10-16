.class Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/AppLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/AppLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 215
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 216
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_5

    move-object v1, v0

    .line 224
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_4

    .line 225
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "app_id"

    .line 227
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "display_name"

    .line 230
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 237
    :cond_4
    new-instance v2, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, ""

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 240
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string v0, "user_or_team_linked_app"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string v0, "user_linked_app"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v0, "team_linked_app"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    move-result-object v2

    :goto_1
    if-nez p2, :cond_9

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    return-object v2

    .line 252
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

.method public a(Lcom/dropbox/core/v2/teamlog/AppLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 182
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 186
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/UserLinkedAppLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 190
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/TeamLinkedAppLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 195
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 197
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "app_id"

    .line 198
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 201
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "display_name"

    .line 202
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    if-nez p3, :cond_6

    .line 206
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

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

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

    .line 177
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/AppLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
