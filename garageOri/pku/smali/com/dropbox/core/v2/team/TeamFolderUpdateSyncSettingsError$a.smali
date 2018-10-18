.class Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 427
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 479
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 481
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 486
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 487
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "access_error"

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 494
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 495
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    .line 496
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 498
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "status_error"

    .line 500
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 501
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    .line 502
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "team_shared_dropbox_error"

    .line 506
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 507
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v1

    .line 508
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    goto :goto_1

    :cond_4
    const-string v2, "sync_settings_error"

    .line 513
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "sync_settings_error"

    .line 515
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 516
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v1

    .line 517
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->syncSettingsError(Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_5

    .line 523
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 524
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 520
    :cond_6
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

    .line 490
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->tag()Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 469
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->tag()Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 461
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sync_settings_error"

    .line 462
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "sync_settings_error"

    .line 463
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->d(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 465
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "other"

    .line 457
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 450
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "team_shared_dropbox_error"

    .line 451
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->c(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 453
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 441
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 442
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "status_error"

    .line 443
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->b(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 445
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 433
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 434
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 435
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;->a(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 437
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

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

    .line 426
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

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

    .line 426
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
