.class Lcom/dropbox/core/v2/teamlog/TimeUnit$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/TimeUnit$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->a:Lcom/dropbox/core/v2/teamlog/TimeUnit$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 91
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_a

    const-string v2, "milliseconds"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MILLISECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_1
    const-string v2, "seconds"

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->SECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_2
    const-string v2, "minutes"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MINUTES:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_3
    const-string v2, "hours"

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->HOURS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_4
    const-string v2, "days"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->DAYS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_5
    const-string v2, "weeks"

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->WEEKS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_6
    const-string v2, "months"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 121
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MONTHS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    :cond_7
    const-string v2, "years"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->YEARS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 127
    :cond_8
    sget-object v1, Lcom/dropbox/core/v2/teamlog/TimeUnit;->OTHER:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    :goto_1
    if-nez v0, :cond_9

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    return-object v1

    .line 100
    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 79
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "years"

    .line 75
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "months"

    .line 71
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "weeks"

    .line 67
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "days"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "hours"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "minutes"

    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "seconds"

    .line 51
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "milliseconds"

    .line 47
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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

    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TimeUnit;

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
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TimeUnit$a;->a(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
