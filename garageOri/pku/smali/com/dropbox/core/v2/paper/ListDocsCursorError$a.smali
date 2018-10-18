.class Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListDocsCursorError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/paper/ListDocsCursorError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->a:Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 256
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "cursor_error"

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cursor_error"

    .line 263
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 264
    sget-object v1, Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;->a:Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v1

    .line 265
    invoke-static {v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    move-result-object v1

    goto :goto_1

    .line 268
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    :goto_1
    if-nez v0, :cond_2

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 259
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/paper/ListDocsCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->tag()Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 238
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "cursor_error"

    .line 231
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "cursor_error"

    .line 232
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;->a:Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->a(Lcom/dropbox/core/v2/paper/ListDocsCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$a;->a(Lcom/dropbox/core/v2/paper/PaperApiCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 234
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

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

    .line 223
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;

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

    .line 223
    check-cast p1, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$a;->a(Lcom/dropbox/core/v2/paper/ListDocsCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
