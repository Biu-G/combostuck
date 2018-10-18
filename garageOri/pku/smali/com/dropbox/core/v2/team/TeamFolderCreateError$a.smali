.class Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderCreateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/TeamFolderCreateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "invalid_folder_name"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    goto :goto_1

    :cond_1
    const-string v2, "folder_name_already_used"

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    goto :goto_1

    :cond_2
    const-string v2, "folder_name_reserved"

    .line 349
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    goto :goto_1

    :cond_3
    const-string v2, "sync_settings_error"

    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sync_settings_error"

    .line 354
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 355
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->syncSettingsError(Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object v1

    goto :goto_1

    .line 359
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    :goto_1
    if-nez v0, :cond_5

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 363
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 341
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/TeamFolderCreateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->tag()Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 320
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sync_settings_error"

    .line 313
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "sync_settings_error"

    .line 314
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "folder_name_reserved"

    .line 308
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "folder_name_already_used"

    .line 304
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "invalid_folder_name"

    .line 300
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

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

    .line 293
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

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

    .line 293
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
