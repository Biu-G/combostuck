.class Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/AlphaGetMetadataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "path"

    .line 299
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "path"

    .line 301
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 302
    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "properties_error"

    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "properties_error"

    .line 307
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesError(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_2

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 312
    :cond_3
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

    .line 297
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 268
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 269
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "properties_error"

    .line 270
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 272
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 261
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 262
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 264
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

    .line 253
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

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

    .line 253
    check-cast p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method