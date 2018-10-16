.class Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 459
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 510
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 511
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string v3, "mobile_device_session"

    .line 516
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->mobileDeviceSession(Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "desktop_device_session"

    .line 521
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    move-result-object v0

    .line 524
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->desktopDeviceSession(Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "web_device_session"

    .line 526
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->webDeviceSession(Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "legacy_device_session"

    .line 531
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->legacyDeviceSession(Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object v0

    goto :goto_1

    .line 537
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    :goto_1
    if-nez v1, :cond_5

    .line 540
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 541
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v0

    .line 514
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 493
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "legacy_device_session"

    .line 487
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 488
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 489
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 479
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_device_session"

    .line 480
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 481
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 482
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "desktop_device_session"

    .line 473
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 474
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 475
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 465
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "mobile_device_session"

    .line 466
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 468
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

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

    .line 458
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

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

    .line 458
    check-cast p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
