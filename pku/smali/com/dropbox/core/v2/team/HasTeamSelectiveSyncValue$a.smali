.class Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "has_team_selective_sync"

    .line 264
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "has_team_selective_sync"

    .line 266
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->hasTeamSelectiveSync(Z)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    move-result-object v1

    goto :goto_1

    .line 271
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    :goto_1
    if-nez v0, :cond_2

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 275
    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 262
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->tag()Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 241
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "has_team_selective_sync"

    .line 234
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "has_team_selective_sync"

    .line 235
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->a(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 237
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

    .line 226
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

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

    .line 226
    check-cast p1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
