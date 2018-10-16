.class public Lcom/dropbox/core/v2/users/GetAccountError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/GetAccountError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/users/GetAccountError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/GetAccountError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/users/GetAccountError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 59
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "no_account"

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountError;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountError;

    goto :goto_1

    .line 74
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountError;->OTHER:Lcom/dropbox/core/v2/users/GetAccountError;

    :goto_1
    if-nez v0, :cond_2

    .line 77
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 68
    :cond_3
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

    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/users/GetAccountError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/users/GetAccountError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/users/GetAccountError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "other"

    .line 47
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "no_account"

    .line 43
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 36
    check-cast p1, Lcom/dropbox/core/v2/users/GetAccountError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->serialize(Lcom/dropbox/core/v2/users/GetAccountError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
