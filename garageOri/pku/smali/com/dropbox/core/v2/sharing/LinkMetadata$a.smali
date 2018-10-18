.class Lcom/dropbox/core/v2/sharing/LinkMetadata$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/sharing/LinkMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/LinkMetadata$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/LinkMetadata$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 183
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_8

    move-object v1, v0

    move-object v2, v1

    .line 193
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "url"

    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "visibility"

    .line 199
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    sget-object v1, Lcom/dropbox/core/v2/sharing/Visibility$a;->a:Lcom/dropbox/core/v2/sharing/Visibility$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/Visibility$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/Visibility;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v4, "expires"

    .line 202
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    goto :goto_0

    .line 206
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 215
    new-instance v3, Lcom/dropbox/core/v2/sharing/LinkMetadata;

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    goto :goto_1

    .line 213
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"visibility\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 210
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"url\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    :cond_8
    const-string v0, ""

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 218
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/LinkMetadata$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;

    move-result-object v3

    goto :goto_1

    :cond_9
    const-string v0, "path"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v3

    goto :goto_1

    :cond_a
    const-string v0, "collection"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    move-result-object v3

    :goto_1
    if-nez p2, :cond_b

    .line 230
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_b
    return-object v3

    .line 227
    :cond_c
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

.method public a(Lcom/dropbox/core/v2/sharing/LinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 154
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;

    check-cast p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a(Lcom/dropbox/core/v2/sharing/PathLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;

    check-cast p1, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata$a;->a(Lcom/dropbox/core/v2/sharing/CollectionLinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_2
    const-string v0, "url"

    .line 165
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "visibility"

    .line 167
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$a;->a:Lcom/dropbox/core/v2/sharing/Visibility$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/Visibility$a;->a(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 169
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3

    const-string v0, "expires"

    .line 170
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;->expires:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    if-nez p3, :cond_4

    .line 174
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_4
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

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkMetadata;

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

    .line 149
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkMetadata$a;->a(Lcom/dropbox/core/v2/sharing/LinkMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
