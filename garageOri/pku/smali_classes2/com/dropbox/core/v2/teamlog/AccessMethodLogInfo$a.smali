.class Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 525
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 577
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 584
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 585
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const-string v3, "end_user"

    .line 590
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "end_user"

    .line 592
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 593
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 594
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUser(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "sign_in_as"

    .line 596
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 599
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAs(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "content_manager"

    .line 601
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 603
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 604
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManager(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "admin_console"

    .line 606
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 608
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v3, "api"

    .line 611
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    move-result-object v0

    .line 614
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->api(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    .line 617
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    :goto_1
    if-nez v1, :cond_6

    .line 620
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 621
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v0

    .line 588
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 567
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "api"

    .line 561
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 562
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 563
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 553
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "admin_console"

    .line 554
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 556
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 546
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "content_manager"

    .line 547
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 548
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 549
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 539
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as"

    .line 540
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 541
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 542
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 531
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "end_user"

    .line 532
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "end_user"

    .line 533
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 535
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

    .line 524
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

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

    .line 524
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
