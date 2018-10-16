.class Lcom/dropbox/core/v2/team/MembersSuspendError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSuspendError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/MembersSuspendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/MembersSuspendError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->a:Lcom/dropbox/core/v2/team/MembersSuspendError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSuspendError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "user_not_found"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    :cond_1
    const-string v2, "user_not_in_team"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    :cond_3
    const-string v2, "suspend_inactive_user"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    :cond_4
    const-string v2, "suspend_last_admin"

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    :cond_5
    const-string v2, "team_license_limit"

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    sget-object v1, Lcom/dropbox/core/v2/team/MembersSuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

    :goto_1
    if-nez v0, :cond_6

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 126
    :cond_7
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

    .line 105
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
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
    const-string p1, "team_license_limit"

    .line 80
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "suspend_last_admin"

    .line 76
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "suspend_inactive_user"

    .line 72
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "other"

    .line 68
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "user_not_in_team"

    .line 64
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "user_not_found"

    .line 60
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersSuspendError;

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

    .line 53
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSuspendError$a;->a(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
