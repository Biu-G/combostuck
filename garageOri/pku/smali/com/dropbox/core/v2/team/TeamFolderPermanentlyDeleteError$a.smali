.class Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 353
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 399
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 405
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "access_error"

    .line 410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 412
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 413
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 416
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "status_error"

    .line 418
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 419
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    .line 420
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "team_shared_dropbox_error"

    .line 424
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 425
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v1

    .line 426
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 428
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 429
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    :goto_1
    if-nez v0, :cond_4

    .line 435
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 436
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 432
    :cond_5
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

    .line 408
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->tag()Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->tag()Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "other"

    .line 383
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 376
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "team_shared_dropbox_error"

    .line 377
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->c(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 368
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "status_error"

    .line 369
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->b(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 371
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 359
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 360
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 361
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;->a(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 363
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 352
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

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

    .line 352
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
