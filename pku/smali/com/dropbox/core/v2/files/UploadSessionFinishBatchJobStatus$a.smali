.class Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "in_progress"

    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    goto :goto_1

    :cond_1
    const-string v3, "complete"

    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_2

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v0

    .line 269
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

    .line 258
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 230
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "complete"

    .line 231
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$a;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "in_progress"

    .line 226
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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

    .line 219
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

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

    .line 219
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$a;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
