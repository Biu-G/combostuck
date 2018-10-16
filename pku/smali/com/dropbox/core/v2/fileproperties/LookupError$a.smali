.class Lcom/dropbox/core/v2/fileproperties/LookupError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/LookupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/LookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 315
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a:Lcom/dropbox/core/v2/fileproperties/LookupError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 363
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "malformed_path"

    .line 368
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "malformed_path"

    .line 370
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 371
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "not_found"

    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    :cond_2
    const-string v2, "not_file"

    .line 377
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FILE:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    :cond_3
    const-string v2, "not_folder"

    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 381
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FOLDER:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    :cond_4
    const-string v2, "restricted_content"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    .line 387
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/LookupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/LookupError;

    :goto_1
    if-nez v0, :cond_6

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 366
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->tag()Lcom/dropbox/core/v2/fileproperties/LookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 345
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "restricted_content"

    .line 341
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "not_folder"

    .line 337
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "not_file"

    .line 333
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "not_found"

    .line 329
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "malformed_path"

    .line 322
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "malformed_path"

    .line 323
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->a(Lcom/dropbox/core/v2/fileproperties/LookupError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 325
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
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

    .line 314
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/LookupError;

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

    .line 314
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$a;->a(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
