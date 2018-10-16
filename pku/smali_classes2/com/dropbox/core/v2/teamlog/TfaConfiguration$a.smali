.class Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/TfaConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "disabled"

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->DISABLED:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    goto :goto_1

    :cond_1
    const-string v2, "enabled"

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->ENABLED:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    goto :goto_1

    :cond_2
    const-string v2, "sms"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->SMS:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    goto :goto_1

    :cond_3
    const-string v2, "authenticator"

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->AUTHENTICATOR:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    goto :goto_1

    .line 99
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->OTHER:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    :goto_1
    if-nez v0, :cond_5

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 84
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "authenticator"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "sms"

    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "enabled"

    .line 51
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "disabled"

    .line 47
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

    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

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

    .line 40
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$a;->a(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
