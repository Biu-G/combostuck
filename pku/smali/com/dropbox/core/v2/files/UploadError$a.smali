.class Lcom/dropbox/core/v2/files/UploadError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/UploadError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/UploadError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 306
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadError$a;->a:Lcom/dropbox/core/v2/files/UploadError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "path"

    .line 350
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a:Lcom/dropbox/core/v2/files/UploadWriteFailed$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadError;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "properties_error"

    .line 355
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "properties_error"

    .line 357
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadError;->propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    goto :goto_1

    .line 362
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError;->OTHER:Lcom/dropbox/core/v2/files/UploadError;

    :goto_1
    if-nez v1, :cond_3

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 348
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/UploadError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadError;->tag()Lcom/dropbox/core/v2/files/UploadError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 327
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 320
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "properties_error"

    .line 321
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError;->b(Lcom/dropbox/core/v2/files/UploadError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 313
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a:Lcom/dropbox/core/v2/files/UploadWriteFailed$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError;->a(Lcom/dropbox/core/v2/files/UploadError;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/UploadWriteFailed$a;->a(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

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

    .line 305
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadError;

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

    .line 305
    check-cast p1, Lcom/dropbox/core/v2/files/UploadError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadError$a;->a(Lcom/dropbox/core/v2/files/UploadError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
