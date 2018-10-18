.class Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 375
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "web_session"

    .line 386
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/DeviceSessionArg$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "desktop_client"

    .line 391
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "mobile_client"

    .line 396
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/DeviceSessionArg$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_3

    .line 405
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 406
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 402
    :cond_4
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 363
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 356
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "mobile_client"

    .line 357
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/DeviceSessionArg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "desktop_client"

    .line 350
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$a;->a(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_session"

    .line 343
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/DeviceSessionArg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/team/DeviceSessionArg$a;->a(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

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

    .line 335
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

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

    .line 335
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
