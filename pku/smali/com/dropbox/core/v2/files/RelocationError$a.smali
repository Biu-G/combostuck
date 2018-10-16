.class Lcom/dropbox/core/v2/files/RelocationError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/files/RelocationError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/RelocationError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 511
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$a;->a:Lcom/dropbox/core/v2/files/RelocationError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 579
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 581
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 586
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 587
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_c

    const-string v2, "from_lookup"

    .line 592
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "from_lookup"

    .line 594
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 595
    sget-object v1, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 596
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const-string v2, "from_write"

    .line 598
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "from_write"

    .line 600
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 601
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 602
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-string v2, "to"

    .line 604
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "to"

    .line 606
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 607
    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 608
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "cant_copy_shared_folder"

    .line 610
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 611
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_4
    const-string v2, "cant_nest_shared_folder"

    .line 613
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 614
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_5
    const-string v2, "cant_move_folder_into_itself"

    .line 616
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 617
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_6
    const-string v2, "too_many_files"

    .line 619
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 620
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_7
    const-string v2, "duplicated_or_nested_paths"

    .line 622
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 623
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_8
    const-string v2, "cant_transfer_ownership"

    .line 625
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 626
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    :cond_9
    const-string v2, "insufficient_quota"

    .line 628
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 629
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 632
    :cond_a
    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    :goto_1
    if-nez v0, :cond_b

    .line 635
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 636
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_b
    return-object v1

    .line 590
    :cond_c
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/files/RelocationError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationError;->tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 569
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "insufficient_quota"

    .line 565
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "cant_transfer_ownership"

    .line 561
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "duplicated_or_nested_paths"

    .line 557
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "too_many_files"

    .line 553
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "cant_move_folder_into_itself"

    .line 549
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "cant_nest_shared_folder"

    .line 545
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "cant_copy_shared_folder"

    .line 541
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "to"

    .line 534
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "to"

    .line 535
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 536
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->c(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 537
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 525
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "from_write"

    .line 526
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "from_write"

    .line 527
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$a;->a:Lcom/dropbox/core/v2/files/WriteError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->b(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$a;->a(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 529
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 517
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "from_lookup"

    .line 518
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "from_lookup"

    .line 519
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 521
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 510
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationError;

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

    .line 510
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationError$a;->a(Lcom/dropbox/core/v2/files/RelocationError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
