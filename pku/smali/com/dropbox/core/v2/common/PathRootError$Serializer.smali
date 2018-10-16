.class public Lcom/dropbox/core/v2/common/PathRootError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/common/PathRootError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/common/PathRootError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 257
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/common/PathRootError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "invalid_root"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "invalid_root"

    .line 300
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 301
    sget-object v1, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/RootInfo$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/common/RootInfo;

    .line 302
    invoke-static {v1}, Lcom/dropbox/core/v2/common/PathRootError;->invalidRoot(Lcom/dropbox/core/v2/common/RootInfo;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "no_permission"

    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError;->NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError;

    goto :goto_1

    .line 308
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError;->OTHER:Lcom/dropbox/core/v2/common/PathRootError;

    :goto_1
    if-nez v0, :cond_3

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 296
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/common/PathRootError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/common/PathRootError;->tag()Lcom/dropbox/core/v2/common/PathRootError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/common/PathRootError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 275
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "no_permission"

    .line 271
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_root"

    .line 264
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "invalid_root"

    .line 265
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/RootInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/common/PathRootError;->a(Lcom/dropbox/core/v2/common/PathRootError;)Lcom/dropbox/core/v2/common/RootInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/common/RootInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 267
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

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 256
    check-cast p1, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/common/PathRootError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
