.class Lcom/dropbox/core/v2/sharing/AccessInheritance$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AccessInheritance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/AccessInheritance;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/AccessInheritance$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessInheritance;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 70
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 76
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "inherit"

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    goto :goto_1

    :cond_1
    const-string v2, "no_inherit"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessInheritance;->NO_INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    goto :goto_1

    .line 88
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessInheritance;->OTHER:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    :goto_1
    if-nez v0, :cond_3

    .line 91
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 92
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 79
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/AccessInheritance;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessInheritance$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 58
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "no_inherit"

    .line 54
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "inherit"

    .line 50
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

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

    .line 43
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessInheritance;

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

    .line 43
    check-cast p1, Lcom/dropbox/core/v2/sharing/AccessInheritance;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AccessInheritance$a;->a(Lcom/dropbox/core/v2/sharing/AccessInheritance;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
