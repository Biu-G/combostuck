.class Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/AssetLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 526
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 577
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 584
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 585
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const-string v3, "file"

    .line 590
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->file(Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "folder"

    .line 595
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object v0

    .line 598
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->folder(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "paper_document"

    .line 600
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 602
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    move-result-object v0

    .line 603
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperDocument(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "paper_folder"

    .line 605
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->paperFolder(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v3, "showcase_document"

    .line 610
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 612
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    move-result-object v0

    .line 613
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->showcaseDocument(Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    goto :goto_1

    .line 616
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    :goto_1
    if-nez v1, :cond_6

    .line 619
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 620
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v0

    .line 588
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 567
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_document"

    .line 561
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 562
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 563
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 553
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder"

    .line 554
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 556
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 546
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_document"

    .line 547
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 548
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 549
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 539
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "folder"

    .line 540
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 541
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 542
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 532
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file"

    .line 533
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 534
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/FileLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 535
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 525
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

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

    .line 525
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
