.class Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderRenameError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/TeamFolderRenameError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 472
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 474
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 479
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 480
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 485
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 487
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 488
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    .line 489
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 491
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "status_error"

    .line 493
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 494
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    .line 495
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "team_shared_dropbox_error"

    .line 499
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 500
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v1

    .line 501
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 503
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    :cond_4
    const-string v2, "invalid_folder_name"

    .line 506
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 507
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    :cond_5
    const-string v2, "folder_name_already_used"

    .line 509
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 510
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    :cond_6
    const-string v2, "folder_name_reserved"

    .line 512
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 513
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    :goto_1
    if-nez v0, :cond_7

    .line 519
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 520
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 516
    :cond_8
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

    .line 483
    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 462
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "folder_name_reserved"

    .line 458
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "folder_name_already_used"

    .line 454
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "invalid_folder_name"

    .line 450
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "other"

    .line 446
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 439
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "team_shared_dropbox_error"

    .line 440
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->c(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 430
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 431
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "status_error"

    .line 432
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->b(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 434
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 422
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 423
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 424
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->a(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
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

    .line 415
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

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

    .line 415
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
