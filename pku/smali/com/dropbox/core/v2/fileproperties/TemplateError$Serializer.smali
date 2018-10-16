.class public Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/TemplateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/TemplateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 260
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 295
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "template_not_found"

    .line 301
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "template_not_found"

    .line 303
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 304
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    goto :goto_1

    .line 311
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    :goto_1
    if-nez v0, :cond_3

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 299
    :cond_4
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

    .line 259
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/TemplateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->tag()Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 278
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "restricted_content"

    .line 274
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 267
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "template_not_found"

    .line 268
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a(Lcom/dropbox/core/v2/fileproperties/TemplateError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
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

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 259
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/TemplateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
