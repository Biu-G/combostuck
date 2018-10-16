.class public Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 387
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 441
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 446
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 447
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "template_not_found"

    .line 452
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "template_not_found"

    .line 454
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 455
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 458
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 464
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "path"

    .line 466
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 467
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 470
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    :cond_5
    const-string v2, "property_field_too_large"

    .line 473
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 474
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    :cond_6
    const-string v2, "does_not_fit_template"

    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 477
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    :goto_1
    if-nez v0, :cond_7

    .line 483
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 480
    :cond_8
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

    .line 450
    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "does_not_fit_template"

    .line 425
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "property_field_too_large"

    .line 421
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "unsupported_folder"

    .line 417
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 410
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 411
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 413
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_4
    const-string p1, "other"

    .line 405
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "restricted_content"

    .line 401
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 394
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "template_not_found"

    .line 395
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 397
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 386
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
