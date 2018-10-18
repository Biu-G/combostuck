.class Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 415
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 465
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 471
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "access_error"

    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 478
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 479
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "member_error"

    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "member_error"

    .line 484
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 485
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v1

    .line 486
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "no_explicit_access"

    .line 488
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "no_explicit_access"

    .line 490
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 491
    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v1

    .line 492
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "insufficient_plan"

    .line 494
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 495
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 498
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    goto :goto_1

    .line 501
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    :goto_1
    if-nez v0, :cond_6

    .line 504
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 505
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 474
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 453
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "no_permission"

    .line 449
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "insufficient_plan"

    .line 445
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 438
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "no_explicit_access"

    .line 439
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->c(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 441
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 429
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 430
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "member_error"

    .line 431
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->b(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 433
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 421
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 422
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 423
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 425
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

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

    .line 414
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

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

    .line 414
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
