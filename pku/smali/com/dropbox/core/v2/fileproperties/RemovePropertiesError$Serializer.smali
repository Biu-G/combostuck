.class public Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 410
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "template_not_found"

    .line 475
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "template_not_found"

    .line 477
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 478
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 479
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 481
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 484
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "path"

    .line 489
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 490
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    .line 491
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 493
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    :cond_5
    const-string v2, "property_group_lookup"

    .line 496
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "property_group_lookup"

    .line 498
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 499
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_6

    .line 506
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 507
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 503
    :cond_7
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

    .line 473
    :cond_8
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

    .line 409
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 444
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "property_group_lookup"

    .line 445
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "property_group_lookup"

    .line 446
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->c(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 448
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "unsupported_folder"

    .line 440
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 433
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 434
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->b(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 436
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_3
    const-string p1, "other"

    .line 428
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "restricted_content"

    .line 424
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 417
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "template_not_found"

    .line 418
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 420
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 409
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
