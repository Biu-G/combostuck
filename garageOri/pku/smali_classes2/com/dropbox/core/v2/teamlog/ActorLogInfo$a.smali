.class Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/ActorLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 549
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 554
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 555
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_8

    const-string v3, "user"

    .line 560
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "user"

    .line 562
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 563
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 564
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "admin"

    .line 566
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "admin"

    .line 568
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 569
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 570
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->admin(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "app"

    .line 572
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "app"

    .line 574
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 575
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .line 576
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->app(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "reseller"

    .line 578
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    move-result-object v0

    .line 581
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->reseller(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "dropbox"

    .line 583
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 584
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    goto :goto_1

    :cond_5
    const-string v2, "anonymous"

    .line 586
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 587
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    goto :goto_1

    .line 590
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    :goto_1
    if-nez v1, :cond_7

    .line 593
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 594
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v0

    .line 558
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 537
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "anonymous"

    .line 533
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "dropbox"

    .line 529
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller"

    .line 523
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 524
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 525
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 514
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app"

    .line 515
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "app"

    .line 516
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 518
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 506
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "admin"

    .line 507
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "admin"

    .line 508
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 510
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 498
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user"

    .line 499
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "user"

    .line 500
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 502
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

    .line 491
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

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

    .line 491
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
