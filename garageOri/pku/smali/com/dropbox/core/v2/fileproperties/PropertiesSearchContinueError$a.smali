.class Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->a:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "reset"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->RESET:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    goto :goto_1

    .line 76
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    :goto_1
    if-nez v0, :cond_2

    .line 79
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 70
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "other"

    .line 49
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "reset"

    .line 45
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

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

    .line 38
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;->a(Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
