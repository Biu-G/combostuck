.class public Lcom/dropbox/core/v2/common/RootInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/common/RootInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/common/RootInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/common/RootInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/common/RootInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/RootInfo$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/common/RootInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 159
    invoke-static {p1}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    :cond_1
    if-nez v1, :cond_7

    move-object v1, v0

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_4

    .line 169
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "root_namespace_id"

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "home_namespace_id"

    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 187
    new-instance v2, Lcom/dropbox/core/v2/common/RootInfo;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/common/RootInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_5
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"home_namespace_id\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 182
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"root_namespace_id\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string v0, ""

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 190
    sget-object v0, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/RootInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/common/RootInfo;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v0, "team"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    sget-object v0, Lcom/dropbox/core/v2/common/TeamRootInfo$a;->a:Lcom/dropbox/core/v2/common/TeamRootInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/common/TeamRootInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/common/TeamRootInfo;

    move-result-object v2

    goto :goto_1

    :cond_9
    const-string v0, "user"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    sget-object v0, Lcom/dropbox/core/v2/common/UserRootInfo$a;->a:Lcom/dropbox/core/v2/common/UserRootInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/common/UserRootInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/common/UserRootInfo;

    move-result-object v2

    :goto_1
    if-nez p2, :cond_a

    .line 202
    invoke-static {p1}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_a
    return-object v2

    .line 199
    :cond_b
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

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/common/RootInfo;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/common/RootInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 134
    instance-of v0, p1, Lcom/dropbox/core/v2/common/TeamRootInfo;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/dropbox/core/v2/common/TeamRootInfo$a;->a:Lcom/dropbox/core/v2/common/TeamRootInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/common/TeamRootInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/common/TeamRootInfo$a;->a(Lcom/dropbox/core/v2/common/TeamRootInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 138
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/common/UserRootInfo;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/common/UserRootInfo$a;->a:Lcom/dropbox/core/v2/common/UserRootInfo$a;

    check-cast p1, Lcom/dropbox/core/v2/common/UserRootInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/common/UserRootInfo$a;->a(Lcom/dropbox/core/v2/common/UserRootInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_2
    const-string v0, "root_namespace_id"

    .line 145
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/common/RootInfo;->rootNamespaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "home_namespace_id"

    .line 147
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/common/RootInfo;->homeNamespaceId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_3

    .line 150
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_3
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 129
    check-cast p1, Lcom/dropbox/core/v2/common/RootInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->serialize(Lcom/dropbox/core/v2/common/RootInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
