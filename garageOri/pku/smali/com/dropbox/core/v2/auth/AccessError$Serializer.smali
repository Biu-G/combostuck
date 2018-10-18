.class public Lcom/dropbox/core/v2/auth/AccessError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/AccessError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/auth/AccessError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "invalid_account_type"

    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "invalid_account_type"

    .line 360
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 361
    sget-object v1, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object v1

    .line 362
    invoke-static {v1}, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountType(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "paper_access_denied"

    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "paper_access_denied"

    .line 366
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    sget-object v1, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/PaperAccessError;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDenied(Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v1

    goto :goto_1

    .line 371
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError;->OTHER:Lcom/dropbox/core/v2/auth/AccessError;

    :goto_1
    if-nez v0, :cond_3

    .line 374
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 375
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 356
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

    .line 312
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/AccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/auth/AccessError;->tag()Lcom/dropbox/core/v2/auth/AccessError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 335
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_access_denied"

    .line 328
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "paper_access_denied"

    .line 329
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError;->b(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/PaperAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/PaperAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 331
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_account_type"

    .line 320
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "invalid_account_type"

    .line 321
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError;->a(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
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

    .line 312
    check-cast p1, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/AccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
