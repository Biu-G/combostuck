.class final Lcom/dropbox/core/stone/StoneSerializers$b;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/stone/StoneSerializers$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$b;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$b;->a:Lcom/dropbox/core/stone/StoneSerializers$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 164
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    return-void
.end method

.method public a(Lcom/fasterxml/jackson/core/JsonParser;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue()[B

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$b;->a(Lcom/fasterxml/jackson/core/JsonParser;)[B

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

    .line 159
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$b;->a([BLcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
