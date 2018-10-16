.class Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 410
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 415
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 416
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 421
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 423
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 425
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "folder_owner"

    .line 427
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    :cond_2
    const-string v2, "mounted"

    .line 430
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    :cond_3
    const-string v2, "group_access"

    .line 433
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    :cond_4
    const-string v2, "team_folder"

    .line 436
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 437
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    :cond_6
    const-string v2, "no_explicit_access"

    .line 442
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 443
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 446
    :cond_7
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    :goto_1
    if-nez v0, :cond_8

    .line 449
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 450
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 419
    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->tag()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 398
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "no_explicit_access"

    .line 394
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "no_permission"

    .line 390
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "team_folder"

    .line 386
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "group_access"

    .line 382
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "mounted"

    .line 378
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "folder_owner"

    .line 374
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 367
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 368
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->a(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 370
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

    .line 359
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

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

    .line 359
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
