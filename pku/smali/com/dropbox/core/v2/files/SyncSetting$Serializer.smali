.class public Lcom/dropbox/core/v2/files/SyncSetting$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SyncSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/SyncSetting;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SyncSetting$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSetting$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSetting;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 85
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "default"

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSetting;->DEFAULT:Lcom/dropbox/core/v2/files/SyncSetting;

    goto :goto_1

    :cond_1
    const-string v2, "not_synced"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSetting;->NOT_SYNCED:Lcom/dropbox/core/v2/files/SyncSetting;

    goto :goto_1

    :cond_2
    const-string v2, "not_synced_inactive"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSetting;->NOT_SYNCED_INACTIVE:Lcom/dropbox/core/v2/files/SyncSetting;

    goto :goto_1

    .line 100
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/SyncSetting;->OTHER:Lcom/dropbox/core/v2/files/SyncSetting;

    :goto_1
    if-nez v0, :cond_4

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 104
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 88
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

    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SyncSetting;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SyncSetting;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSetting$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SyncSetting;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    .line 67
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "not_synced_inactive"

    .line 63
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "not_synced"

    .line 59
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "default"

    .line 55
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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

    .line 48
    check-cast p1, Lcom/dropbox/core/v2/files/SyncSetting;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SyncSetting$Serializer;->serialize(Lcom/dropbox/core/v2/files/SyncSetting;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
