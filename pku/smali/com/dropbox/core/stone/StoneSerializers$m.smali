.class final Lcom/dropbox/core/stone/StoneSerializers$m;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/stone/StoneSerializers$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$m;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$m;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$m;->a:Lcom/dropbox/core/stone/StoneSerializers$m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$m;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Void;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 216
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

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

    .line 211
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$m;->a(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Void;

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

    .line 211
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$m;->a(Ljava/lang/Void;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
