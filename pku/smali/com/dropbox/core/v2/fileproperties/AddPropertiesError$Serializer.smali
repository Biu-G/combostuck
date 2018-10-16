.class public Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 409
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 465
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 467
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 473
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_a

    const-string v2, "template_not_found"

    .line 478
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "template_not_found"

    .line 480
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 481
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 484
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "path"

    .line 492
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 493
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    .line 494
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 496
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    :cond_5
    const-string v2, "property_field_too_large"

    .line 499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 500
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    :cond_6
    const-string v2, "does_not_fit_template"

    .line 502
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 503
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    :cond_7
    const-string v2, "property_group_already_exists"

    .line 505
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 506
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    :goto_1
    if-nez v0, :cond_8

    .line 512
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 513
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 509
    :cond_9
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

    .line 476
    :cond_a
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

    .line 408
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 455
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "property_group_already_exists"

    .line 451
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "does_not_fit_template"

    .line 447
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "property_field_too_large"

    .line 443
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "unsupported_folder"

    .line 439
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 432
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 433
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 435
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_5
    const-string p1, "other"

    .line 427
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "restricted_content"

    .line 423
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 416
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "template_not_found"

    .line 417
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 419
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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

    .line 408
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
