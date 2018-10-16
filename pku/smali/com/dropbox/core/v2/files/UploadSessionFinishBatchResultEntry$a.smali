.class Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "success"

    .line 295
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$a;->a:Lcom/dropbox/core/v2/files/FileMetadata$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/FileMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->success(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "failure"

    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "failure"

    .line 302
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 303
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failure(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_2

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v0

    .line 307
    :cond_3
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

    .line 293
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 264
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "failure"

    .line 265
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "failure"

    .line 266
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->b(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "success"

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$a;->a:Lcom/dropbox/core/v2/files/FileMetadata$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/FileMetadata$a;->a(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 260
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

    .line 250
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

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

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$a;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
