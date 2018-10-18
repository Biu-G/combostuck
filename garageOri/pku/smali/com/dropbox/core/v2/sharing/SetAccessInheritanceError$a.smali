.class Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->a:Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 281
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "access_error"

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 294
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 295
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 296
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "no_permission"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    sget-object v1, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

    goto :goto_1

    .line 302
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;->OTHER:Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

    :goto_1
    if-nez v0, :cond_3

    .line 305
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 290
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;->tag()Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 269
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "no_permission"

    .line 265
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 259
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;->a(Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

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

    .line 250
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

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

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError$a;->a(Lcom/dropbox/core/v2/sharing/SetAccessInheritanceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
