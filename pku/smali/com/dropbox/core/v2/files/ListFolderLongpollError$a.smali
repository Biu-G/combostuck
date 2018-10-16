.class Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ListFolderLongpollError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/ListFolderLongpollError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->a:Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ListFolderLongpollError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 66
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "reset"

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->RESET:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    goto :goto_1

    .line 75
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    :goto_1
    if-nez v0, :cond_2

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 79
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 69
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/ListFolderLongpollError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "other"

    .line 48
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "reset"

    .line 44
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

    .line 37
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ListFolderLongpollError;

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

    .line 37
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;->a(Lcom/dropbox/core/v2/files/ListFolderLongpollError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
