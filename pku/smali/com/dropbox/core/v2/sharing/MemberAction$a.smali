.class Lcom/dropbox/core/v2/sharing/MemberAction$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MemberAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/MemberAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/MemberAction$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberAction$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$a;->a:Lcom/dropbox/core/v2/sharing/MemberAction$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "leave_a_copy"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    :cond_1
    const-string v2, "make_editor"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    :cond_2
    const-string v2, "make_owner"

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    :cond_3
    const-string v2, "make_viewer"

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    :cond_4
    const-string v2, "make_viewer_no_comment"

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    :cond_5
    const-string v2, "remove"

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    goto :goto_1

    .line 132
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    :goto_1
    if-nez v0, :cond_7

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 111
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/MemberAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MemberAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 90
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "remove"

    .line 86
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "make_viewer_no_comment"

    .line 82
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "make_viewer"

    .line 78
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "make_owner"

    .line 74
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "make_editor"

    .line 70
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "leave_a_copy"

    .line 66
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 59
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberAction;

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

    .line 59
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MemberAction$a;->a(Lcom/dropbox/core/v2/sharing/MemberAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
