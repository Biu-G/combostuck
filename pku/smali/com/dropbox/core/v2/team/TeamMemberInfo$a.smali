.class Lcom/dropbox/core/v2/team/TeamMemberInfo$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/TeamMemberInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->a:Lcom/dropbox/core/v2/team/TeamMemberInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 138
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    .line 143
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "profile"

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->a:Lcom/dropbox/core/v2/team/TeamMemberProfile$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    goto :goto_1

    :cond_1
    const-string v3, "role"

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    sget-object v1, Lcom/dropbox/core/v2/team/AdminTier$a;->a:Lcom/dropbox/core/v2/team/AdminTier$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/AdminTier$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/AdminTier;

    move-result-object v1

    goto :goto_1

    .line 153
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 162
    new-instance v2, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/dropbox/core/v2/team/AdminTier;)V

    if-nez p2, :cond_4

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v2

    .line 160
    :cond_5
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"role\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 157
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"profile\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 165
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subtype found that matches tag: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "profile"

    .line 123
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->a:Lcom/dropbox/core/v2/team/TeamMemberProfile$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMemberProfile$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "role"

    .line 125
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$a;->a:Lcom/dropbox/core/v2/team/AdminTier$a;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/AdminTier$a;->a(Lcom/dropbox/core/v2/team/AdminTier;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
    return-void
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 115
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamMemberInfo$a;->a(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method