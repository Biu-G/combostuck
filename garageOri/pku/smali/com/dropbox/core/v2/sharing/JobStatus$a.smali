.class Lcom/dropbox/core/v2/sharing/JobStatus$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/JobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/JobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/JobStatus$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$a;->a:Lcom/dropbox/core/v2/sharing/JobStatus$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 269
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 275
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "in_progress"

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;

    goto :goto_1

    :cond_1
    const-string v2, "complete"

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

    goto :goto_1

    :cond_2
    const-string v2, "failed"

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "failed"

    .line 288
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 289
    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$a;->a:Lcom/dropbox/core/v2/sharing/JobError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    .line 290
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->failed(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_3

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 297
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 293
    :cond_4
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

    .line 278
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/JobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 249
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "failed"

    .line 250
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "failed"

    .line 251
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$a;->a:Lcom/dropbox/core/v2/sharing/JobError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->a(Lcom/dropbox/core/v2/sharing/JobStatus;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobError$a;->a(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 253
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "complete"

    .line 245
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "in_progress"

    .line 241
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

    .line 234
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobStatus;

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

    .line 234
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobStatus$a;->a(Lcom/dropbox/core/v2/sharing/JobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
