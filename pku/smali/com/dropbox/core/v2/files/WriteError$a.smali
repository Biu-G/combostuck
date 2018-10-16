.class Lcom/dropbox/core/v2/files/WriteError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/WriteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/WriteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/WriteError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 410
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_b

    const-string v2, "malformed_path"

    .line 475
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    const-string v1, "malformed_path"

    .line 478
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 479
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    .line 482
    invoke-static {}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath()Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    goto :goto_1

    .line 485
    :cond_2
    invoke-static {v1}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "conflict"

    .line 488
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "conflict"

    .line 490
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 491
    sget-object v1, Lcom/dropbox/core/v2/files/WriteConflictError$a;->a:Lcom/dropbox/core/v2/files/WriteConflictError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteConflictError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object v1

    .line 492
    invoke-static {v1}, Lcom/dropbox/core/v2/files/WriteError;->conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "no_write_permission"

    .line 494
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    :cond_5
    const-string v2, "insufficient_space"

    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 498
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    :cond_6
    const-string v2, "disallowed_name"

    .line 500
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 501
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    :cond_7
    const-string v2, "team_folder"

    .line 503
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 504
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    :cond_8
    const-string v2, "too_many_write_operations"

    .line 506
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 507
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    .line 510
    :cond_9
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    :goto_1
    if-nez v0, :cond_a

    .line 513
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 514
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_a
    return-object v1

    .line 473
    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteError;->tag()Lcom/dropbox/core/v2/files/WriteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 452
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "too_many_write_operations"

    .line 448
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "team_folder"

    .line 444
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "disallowed_name"

    .line 440
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "insufficient_space"

    .line 436
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "no_write_permission"

    .line 432
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "conflict"

    .line 425
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "conflict"

    .line 426
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/dropbox/core/v2/files/WriteConflictError$a;->a:Lcom/dropbox/core/v2/files/WriteConflictError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->b(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteConflictError$a;->a(Lcom/dropbox/core/v2/files/WriteConflictError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 428
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 416
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "malformed_path"

    .line 417
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "malformed_path"

    .line 418
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->a(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 420
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

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

    .line 409
    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
