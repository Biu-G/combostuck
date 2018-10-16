.class Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    .line 178
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LogicalOperator;->OR_OPERATOR:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    move-object v2, v1

    move-object v1, v0

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_4

    .line 180
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "query"

    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v4, "mode"

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "logical_operator"

    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;->a:Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    move-result-object v2

    goto :goto_1

    .line 192
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 201
    new-instance v3, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/dropbox/core/v2/fileproperties/LogicalOperator;)V

    if-nez p2, :cond_5

    .line 207
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v3

    .line 199
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"mode\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 196
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"query\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 204
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

.method public a(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "query"

    .line 156
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "mode"

    .line 158
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->mode:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode$a;->a(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "logical_operator"

    .line 160
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;->a:Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;->logicalOperator:Lcom/dropbox/core/v2/fileproperties/LogicalOperator;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LogicalOperator$a;->a(Lcom/dropbox/core/v2/fileproperties/LogicalOperator;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
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

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

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

    .line 148
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery$a;->a(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
