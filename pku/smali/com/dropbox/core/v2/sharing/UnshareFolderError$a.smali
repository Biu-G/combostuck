.class Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UnshareFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/UnshareFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a:Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 331
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "access_error"

    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 338
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 339
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "team_folder"

    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    goto :goto_1

    :cond_2
    const-string v2, "no_permission"

    .line 345
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    goto :goto_1

    :cond_3
    const-string v2, "too_many_files"

    .line 348
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    goto :goto_1

    .line 352
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    :goto_1
    if-nez v0, :cond_5

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 356
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 334
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->tag()Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 313
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "too_many_files"

    .line 309
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "no_permission"

    .line 305
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "team_folder"

    .line 301
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 294
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 295
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->a(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 297
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

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

    .line 286
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

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

    .line 286
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$a;->a(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
