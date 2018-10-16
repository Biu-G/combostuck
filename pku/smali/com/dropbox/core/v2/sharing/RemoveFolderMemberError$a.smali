.class Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 454
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 459
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 460
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 465
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 467
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 468
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 469
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "member_error"

    .line 471
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "member_error"

    .line 473
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 474
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v1

    .line 475
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "folder_owner"

    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 478
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    :cond_3
    const-string v2, "group_access"

    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    :cond_4
    const-string v2, "team_folder"

    .line 483
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 486
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 487
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    :cond_6
    const-string v2, "too_many_files"

    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 490
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    .line 493
    :cond_7
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    :goto_1
    if-nez v0, :cond_8

    .line 496
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 497
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 463
    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 442
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "too_many_files"

    .line 438
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "no_permission"

    .line 434
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "team_folder"

    .line 430
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "group_access"

    .line 426
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "folder_owner"

    .line 422
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 415
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "member_error"

    .line 416
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->b(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 418
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 406
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 407
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 408
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 410
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

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

    .line 399
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

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

    .line 399
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
