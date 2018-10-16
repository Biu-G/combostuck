.class Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/LoginFailDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/LoginFailDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 171
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    move-object v1, v0

    move-object v2, v1

    .line 178
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_4

    .line 179
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "login_method"

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginMethod$a;->a:Lcom/dropbox/core/v2/teamlog/LoginMethod$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/LoginMethod$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/LoginMethod;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v4, "error_details"

    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    sget-object v1, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    goto :goto_1

    :cond_2
    const-string v4, "is_emm_managed"

    .line 187
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 200
    new-instance v3, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;-><init>(Lcom/dropbox/core/v2/teamlog/LoginMethod;Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;Ljava/lang/Boolean;)V

    if-nez p2, :cond_5

    .line 206
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v3

    .line 198
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"error_details\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 195
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"login_method\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 203
    :cond_8
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

.method public a(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 151
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "login_method"

    .line 153
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginMethod$a;->a:Lcom/dropbox/core/v2/teamlog/LoginMethod$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/LoginMethod$a;->a(Lcom/dropbox/core/v2/teamlog/LoginMethod;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "error_details"

    .line 155
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 157
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const-string v0, "is_emm_managed"

    .line 158
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    if-nez p3, :cond_2

    .line 162
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_2
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

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

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

    .line 145
    check-cast p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
