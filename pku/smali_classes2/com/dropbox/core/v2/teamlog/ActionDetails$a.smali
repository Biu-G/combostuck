.class Lcom/dropbox/core/v2/teamlog/ActionDetails$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ActionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/ActionDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/ActionDetails$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 351
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v3, "team_join_details"

    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->teamJoinDetails(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "remove_action"

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "remove_action"

    .line 363
    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    move-result-object v0

    .line 365
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->removeAction(Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

    move-result-object v0

    goto :goto_1

    .line 368
    :cond_2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    :goto_1
    if-nez v1, :cond_3

    .line 371
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 372
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 354
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/ActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->tag()Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 333
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "remove_action"

    .line 326
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "remove_action"

    .line 327
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_join_details"

    .line 319
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 321
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

    .line 311
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

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

    .line 311
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
