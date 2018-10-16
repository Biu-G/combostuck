.class Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->a:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "shared_link_not_found"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    sget-object v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    :cond_1
    const-string v2, "shared_link_access_denied"

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    sget-object v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_link_type"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    sget-object v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    sget-object v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    goto :goto_1

    :cond_4
    const-string v2, "shared_link_malformed"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    sget-object v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->SHARED_LINK_MALFORMED:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    :goto_1
    if-nez v0, :cond_5

    .line 117
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 118
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 114
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "shared_link_malformed"

    .line 71
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "other"

    .line 67
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "unsupported_link_type"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "shared_link_access_denied"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "shared_link_not_found"

    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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

    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

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

    .line 48
    check-cast p1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$a;->a(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
