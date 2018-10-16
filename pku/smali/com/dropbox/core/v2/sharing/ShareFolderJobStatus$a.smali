.class Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "in_progress"

    .line 329
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    goto :goto_1

    :cond_1
    const-string v3, "complete"

    .line 332
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "failed"

    .line 337
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "failed"

    .line 339
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderError$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failed(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_3

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 348
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 344
    :cond_4
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

    .line 327
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->tag()Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->tag()Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 298
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "failed"

    .line 299
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "failed"

    .line 300
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->b(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$a;->a(Lcom/dropbox/core/v2/sharing/ShareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 302
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "complete"

    .line 292
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 294
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_2
    const-string p1, "in_progress"

    .line 287
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 280
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

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

    .line 280
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$a;->a(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
