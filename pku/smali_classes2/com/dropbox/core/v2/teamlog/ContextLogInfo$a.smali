.class Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/ContextLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 349
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 389
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 395
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string v3, "team_member"

    .line 400
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMember(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "non_team_member"

    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMember(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "anonymous"

    .line 410
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    goto :goto_1

    :cond_3
    const-string v2, "team"

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    goto :goto_1

    .line 417
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    :goto_1
    if-nez v1, :cond_5

    .line 420
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 421
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v0

    .line 398
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 377
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "team"

    .line 373
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "anonymous"

    .line 369
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "non_team_member"

    .line 363
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 365
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 355
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_member"

    .line 356
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 358
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

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

    .line 348
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

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

    .line 348
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
