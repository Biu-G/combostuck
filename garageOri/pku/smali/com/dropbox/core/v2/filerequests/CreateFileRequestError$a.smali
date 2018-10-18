.class Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->a:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 141
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_c

    const-string v2, "disabled_for_team"

    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_1
    const-string v2, "other"

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->OTHER:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_2
    const-string v2, "not_found"

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->NOT_FOUND:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_3
    const-string v2, "not_a_folder"

    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->NOT_A_FOLDER:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_4
    const-string v2, "app_lacks_access"

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->APP_LACKS_ACCESS:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->NO_PERMISSION:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_6
    const-string v2, "email_unverified"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_7
    const-string v2, "validation_error"

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->VALIDATION_ERROR:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_8
    const-string v2, "invalid_location"

    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->INVALID_LOCATION:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    goto :goto_1

    :cond_9
    const-string v2, "rate_limit"

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 174
    sget-object v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->RATE_LIMIT:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    :goto_1
    if-nez v0, :cond_a

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 181
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_a
    return-object v1

    .line 177
    :cond_b
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

    .line 144
    :cond_c
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
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
    const-string p1, "rate_limit"

    .line 119
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "invalid_location"

    .line 115
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "validation_error"

    .line 111
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "email_unverified"

    .line 107
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "no_permission"

    .line 103
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "app_lacks_access"

    .line 99
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "not_a_folder"

    .line 95
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "not_found"

    .line 91
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "other"

    .line 87
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string p1, "disabled_for_team"

    .line 83
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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

    .line 76
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

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

    .line 76
    check-cast p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$a;->a(Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
