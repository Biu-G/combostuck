.class Lcom/dropbox/core/v2/sharing/MountFolderError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MountFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/MountFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/MountFolderError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 389
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a:Lcom/dropbox/core/v2/sharing/MountFolderError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 438
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 444
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_8

    const-string v3, "access_error"

    .line 449
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "access_error"

    .line 451
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "inside_shared_folder"

    .line 455
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    :cond_2
    const-string v3, "insufficient_quota"

    .line 458
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 460
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;->a:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v2, "already_mounted"

    .line 463
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 464
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 466
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    :cond_5
    const-string v2, "not_mountable"

    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    .line 473
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    :goto_1
    if-nez v1, :cond_7

    .line 476
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 477
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v0

    .line 447
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 426
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "not_mountable"

    .line 422
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "no_permission"

    .line 418
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "already_mounted"

    .line 414
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "insufficient_quota"

    .line 408
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;->a:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->b(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$a;->a(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 410
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_4
    const-string p1, "inside_shared_folder"

    .line 403
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 396
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 397
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->a(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 399
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 388
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MountFolderError;

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

    .line 388
    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$a;->a(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
