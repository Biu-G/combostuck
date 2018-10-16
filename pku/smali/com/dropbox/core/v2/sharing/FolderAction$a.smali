.class Lcom/dropbox/core/v2/sharing/FolderAction$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/FolderAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/FolderAction$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderAction$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction$a;->a:Lcom/dropbox/core/v2/sharing/FolderAction$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FolderAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_10

    const-string v2, "change_options"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto/16 :goto_1

    :cond_1
    const-string v2, "disable_viewer_info"

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto/16 :goto_1

    :cond_2
    const-string v2, "edit_contents"

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto/16 :goto_1

    :cond_3
    const-string v2, "enable_viewer_info"

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto/16 :goto_1

    :cond_4
    const-string v2, "invite_editor"

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto/16 :goto_1

    :cond_5
    const-string v2, "invite_viewer"

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_6
    const-string v2, "invite_viewer_no_comment"

    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_7
    const-string v2, "relinquish_membership"

    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_8
    const-string v2, "unmount"

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->UNMOUNT:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_9
    const-string v2, "unshare"

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 206
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_a
    const-string v2, "leave_a_copy"

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_b
    const-string v2, "share_link"

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 212
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_c
    const-string v2, "create_link"

    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 215
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    :cond_d
    const-string v2, "set_access_inheritance"

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 218
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/FolderAction;

    goto :goto_1

    .line 221
    :cond_e
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->OTHER:Lcom/dropbox/core/v2/sharing/FolderAction;

    :goto_1
    if-nez v0, :cond_f

    .line 224
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 225
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_f
    return-object v1

    .line 176
    :cond_10
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/FolderAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderAction$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FolderAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 155
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "set_access_inheritance"

    .line 151
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "create_link"

    .line 147
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "share_link"

    .line 143
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "leave_a_copy"

    .line 139
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "unshare"

    .line 135
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "unmount"

    .line 131
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "relinquish_membership"

    .line 127
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "invite_viewer_no_comment"

    .line 123
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "invite_viewer"

    .line 119
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string p1, "invite_editor"

    .line 115
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string p1, "enable_viewer_info"

    .line 111
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string p1, "edit_contents"

    .line 107
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    const-string p1, "disable_viewer_info"

    .line 103
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_d
    const-string p1, "change_options"

    .line 99
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    .line 92
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FolderAction;

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

    .line 92
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderAction$a;->a(Lcom/dropbox/core/v2/sharing/FolderAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
