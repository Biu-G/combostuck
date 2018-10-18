.class Lcom/dropbox/core/v2/files/ThumbnailArg$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ThumbnailArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/ThumbnailArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ThumbnailArg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 307
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->a:Lcom/dropbox/core/v2/files/ThumbnailArg$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    .line 337
    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 338
    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 339
    sget-object v3, Lcom/dropbox/core/v2/files/ThumbnailMode;->STRICT:Lcom/dropbox/core/v2/files/ThumbnailMode;

    .line 340
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_5

    .line 341
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "path"

    .line 343
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v5, "format"

    .line 346
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 347
    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailFormat$a;->a:Lcom/dropbox/core/v2/files/ThumbnailFormat$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/ThumbnailFormat$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailFormat;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v5, "size"

    .line 349
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailSize$a;->a:Lcom/dropbox/core/v2/files/ThumbnailSize$a;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailSize;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v5, "mode"

    .line 352
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 353
    sget-object v3, Lcom/dropbox/core/v2/files/ThumbnailMode$a;->a:Lcom/dropbox/core/v2/files/ThumbnailMode$a;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/v2/files/ThumbnailMode$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ThumbnailMode;

    move-result-object v3

    goto :goto_1

    .line 356
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    .line 362
    new-instance v4, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V

    if-nez p2, :cond_6

    .line 368
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v4

    .line 360
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"path\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 365
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

.method public a(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 312
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "path"

    .line 314
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "format"

    .line 316
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat$a;->a:Lcom/dropbox/core/v2/files/ThumbnailFormat$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailFormat$a;->a(Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "size"

    .line 318
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$a;->a:Lcom/dropbox/core/v2/files/ThumbnailSize$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailSize$a;->a(Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "mode"

    .line 320
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailMode$a;->a:Lcom/dropbox/core/v2/files/ThumbnailMode$a;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailMode$a;->a(Lcom/dropbox/core/v2/files/ThumbnailMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 323
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

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;

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

    .line 306
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->a(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
