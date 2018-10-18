.class Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/SharingFileAccessError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "no_permission"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    goto :goto_1

    :cond_1
    const-string v2, "invalid_file"

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    goto :goto_1

    :cond_2
    const-string v2, "is_folder"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    goto :goto_1

    :cond_3
    const-string v2, "inside_public_folder"

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    goto :goto_1

    :cond_4
    const-string v2, "inside_osx_package"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    goto :goto_1

    .line 124
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->OTHER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    :goto_1
    if-nez v0, :cond_6

    .line 127
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 128
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 106
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 85
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "inside_osx_package"

    .line 81
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "inside_public_folder"

    .line 77
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "is_folder"

    .line 73
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "invalid_file"

    .line 69
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "no_permission"

    .line 65
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

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

    .line 58
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

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

    .line 58
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
