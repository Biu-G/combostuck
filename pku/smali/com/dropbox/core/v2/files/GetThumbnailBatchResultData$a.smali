.class Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    .line 136
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "metadata"

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$a;->a:Lcom/dropbox/core/v2/files/FileMetadata$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/FileMetadata$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    goto :goto_1

    :cond_1
    const-string v3, "thumbnail"

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 155
    new-instance v2, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;-><init>(Lcom/dropbox/core/v2/files/FileMetadata;Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 161
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v2

    .line 153
    :cond_5
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"thumbnail\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 150
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"metadata\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 158
    :cond_7
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

.method public a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "metadata"

    .line 116
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$a;->a:Lcom/dropbox/core/v2/files/FileMetadata$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->metadata:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/FileMetadata$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "thumbnail"

    .line 118
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 121
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

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

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

    .line 108
    check-cast p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData$a;->a(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
