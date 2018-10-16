.class Lcom/dropbox/core/v2/paper/ImportFormat$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ImportFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/paper/ImportFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/paper/ImportFormat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/paper/ImportFormat$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ImportFormat$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ImportFormat$a;->a:Lcom/dropbox/core/v2/paper/ImportFormat$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ImportFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "html"

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    sget-object v1, Lcom/dropbox/core/v2/paper/ImportFormat;->HTML:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1

    :cond_1
    const-string v2, "markdown"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    sget-object v1, Lcom/dropbox/core/v2/paper/ImportFormat;->MARKDOWN:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1

    :cond_2
    const-string v2, "plain_text"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    sget-object v1, Lcom/dropbox/core/v2/paper/ImportFormat;->PLAIN_TEXT:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1

    .line 101
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/paper/ImportFormat;->OTHER:Lcom/dropbox/core/v2/paper/ImportFormat;

    :goto_1
    if-nez v0, :cond_4

    .line 104
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 105
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 89
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/paper/ImportFormat;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ImportFormat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 68
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "plain_text"

    .line 64
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "markdown"

    .line 60
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "html"

    .line 56
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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

    .line 49
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ImportFormat;

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

    .line 49
    check-cast p1, Lcom/dropbox/core/v2/paper/ImportFormat;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ImportFormat$a;->a(Lcom/dropbox/core/v2/paper/ImportFormat;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
