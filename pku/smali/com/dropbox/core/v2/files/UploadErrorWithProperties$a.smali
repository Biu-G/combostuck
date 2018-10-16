.class Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 343
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "path"

    .line 348
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a:Lcom/dropbox/core/v2/files/UploadWriteFailed$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "properties_error"

    .line 353
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "properties_error"

    .line 355
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 356
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 359
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    :goto_1
    if-nez v1, :cond_3

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 363
    :cond_4
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "other"

    .line 321
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 314
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "properties_error"

    .line 315
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 307
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a:Lcom/dropbox/core/v2/files/UploadWriteFailed$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 309
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
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

    .line 299
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

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

    .line 299
    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
