.class Lcom/dropbox/core/v2/team/GroupAccessType$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupAccessType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/GroupAccessType;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/GroupAccessType$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/team/GroupAccessType$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupAccessType$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupAccessType$a;->a:Lcom/dropbox/core/v2/team/GroupAccessType$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupAccessType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 62
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 68
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "member"

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    sget-object v1, Lcom/dropbox/core/v2/team/GroupAccessType;->MEMBER:Lcom/dropbox/core/v2/team/GroupAccessType;

    goto :goto_1

    :cond_1
    const-string v2, "owner"

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sget-object v1, Lcom/dropbox/core/v2/team/GroupAccessType;->OWNER:Lcom/dropbox/core/v2/team/GroupAccessType;

    :goto_1
    if-nez v0, :cond_2

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 80
    :cond_3
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

    .line 71
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/GroupAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/dropbox/core/v2/team/GroupAccessType$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupAccessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
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
    const-string p1, "owner"

    .line 46
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "member"

    .line 42
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 35
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupAccessType;

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

    .line 35
    check-cast p1, Lcom/dropbox/core/v2/team/GroupAccessType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupAccessType$a;->a(Lcom/dropbox/core/v2/team/GroupAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
