.class Lcom/dropbox/core/v2/sharing/JobError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/JobError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/JobError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/JobError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError$a;->a:Lcom/dropbox/core/v2/sharing/JobError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 458
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 463
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "unshare_folder_error"

    .line 469
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "unshare_folder_error"

    .line 471
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 472
    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v1

    .line 473
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "remove_folder_member_error"

    .line 475
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "remove_folder_member_error"

    .line 477
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 478
    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "relinquish_folder_membership_error"

    .line 481
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "relinquish_folder_membership_error"

    .line 483
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v1

    .line 485
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    goto :goto_1

    .line 488
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

    :goto_1
    if-nez v0, :cond_4

    .line 491
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 492
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 467
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobError;->tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 446
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "relinquish_folder_membership_error"

    .line 439
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "relinquish_folder_membership_error"

    .line 440
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->c(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$a;->a(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "remove_folder_member_error"

    .line 431
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "remove_folder_member_error"

    .line 432
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->b(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 434
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "unshare_folder_error"

    .line 423
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "unshare_folder_error"

    .line 424
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->a(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

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

    .line 415
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;

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
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobError$a;->a(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
