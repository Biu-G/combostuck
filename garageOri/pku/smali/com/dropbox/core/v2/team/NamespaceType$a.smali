.class Lcom/dropbox/core/v2/team/NamespaceType$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/NamespaceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/NamespaceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/NamespaceType$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/team/NamespaceType$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/NamespaceType$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/NamespaceType$a;->a:Lcom/dropbox/core/v2/team/NamespaceType$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/NamespaceType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "app_folder"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    sget-object v1, Lcom/dropbox/core/v2/team/NamespaceType;->APP_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    :cond_1
    const-string v2, "shared_folder"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    sget-object v1, Lcom/dropbox/core/v2/team/NamespaceType;->SHARED_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    :cond_2
    const-string v2, "team_folder"

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    sget-object v1, Lcom/dropbox/core/v2/team/NamespaceType;->TEAM_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    :cond_3
    const-string v2, "team_member_folder"

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    sget-object v1, Lcom/dropbox/core/v2/team/NamespaceType;->TEAM_MEMBER_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    .line 107
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/team/NamespaceType;->OTHER:Lcom/dropbox/core/v2/team/NamespaceType;

    :goto_1
    if-nez v0, :cond_5

    .line 110
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 111
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 92
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/NamespaceType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/NamespaceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 71
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "team_member_folder"

    .line 67
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "team_folder"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "shared_folder"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "app_folder"

    .line 55
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

    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/NamespaceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/NamespaceType;

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
    check-cast p1, Lcom/dropbox/core/v2/team/NamespaceType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/NamespaceType$a;->a(Lcom/dropbox/core/v2/team/NamespaceType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
