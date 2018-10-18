.class Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/SessionLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 134
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_4

    .line 142
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "session_id"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 152
    :cond_3
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v0, "web"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v0, "desktop"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string v0, "mobile"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    move-result-object v1

    :goto_1
    if-nez p2, :cond_8

    .line 170
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 167
    :cond_9
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

.method public a(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 105
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 109
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 113
    :cond_1
    instance-of v0, p1, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    if-eqz v0, :cond_2

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 120
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "session_id"

    .line 121
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_4
    if-nez p3, :cond_5

    .line 125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_5
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

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

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

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
