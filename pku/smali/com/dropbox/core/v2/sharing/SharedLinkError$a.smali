.class Lcom/dropbox/core/v2/sharing/SharedLinkError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/SharedLinkError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/SharedLinkError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkError;
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
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "shared_link_not_found"

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    goto :goto_1

    :cond_1
    const-string v2, "shared_link_access_denied"

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_link_type"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    goto :goto_1

    .line 96
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkError;

    :goto_1
    if-nez v0, :cond_4

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 100
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 84
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/SharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "unsupported_link_type"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "shared_link_access_denied"

    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "shared_link_not_found"

    .line 51
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

    .line 44
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedLinkError;

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

    .line 44
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkError$a;->a(Lcom/dropbox/core/v2/sharing/SharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
