.class public Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SyncSettingsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/SyncSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 267
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 301
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "path"

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "path"

    .line 314
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 315
    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "unsupported_combination"

    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError;->UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/SyncSettingsError;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_configuration"

    .line 321
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError;->UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/SyncSettingsError;

    goto :goto_1

    .line 325
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError;->OTHER:Lcom/dropbox/core/v2/files/SyncSettingsError;

    :goto_1
    if-nez v0, :cond_4

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 310
    :cond_5
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

    .line 266
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->tag()Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 289
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "unsupported_configuration"

    .line 285
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "unsupported_combination"

    .line 281
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 274
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "path"

    .line 275
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->a(Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 277
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
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

    .line 266
    check-cast p1, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SyncSettingsError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
