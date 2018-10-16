.class Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 248
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    move-object v2, v1

    .line 255
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_4

    .line 256
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "new_value"

    .line 258
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v4, "previous_value"

    .line 261
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    goto :goto_1

    :cond_2
    const-string v4, "used_rescue_code"

    .line 264
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    .line 268
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    .line 274
    new-instance v3, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V

    if-nez p2, :cond_5

    .line 280
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v3

    .line 272
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"new_value\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 277
    :cond_7
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

.method public a(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "new_value"

    .line 228
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 230
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eqz v0, :cond_1

    const-string v0, "previous_value"

    .line 231
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 234
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "used_rescue_code"

    .line 235
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    if-nez p3, :cond_3

    .line 239
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_3
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

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

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

    .line 220
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
