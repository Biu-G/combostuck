.class public final Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

.field private d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

.field private e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

.field private f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 129
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 130
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 146
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 147
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 162
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 163
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 164
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 1

    .line 179
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    .line 180
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    .line 181
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object p0
.end method

.method public static file(Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 231
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static folder(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 279
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperDocument(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 327
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperFolder(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 376
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showcaseDocument(Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 425
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    .line 423
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 478
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    if-eqz v2, :cond_d

    .line 479
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    .line 480
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 483
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 493
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 491
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 489
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    .line 487
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    return v0

    .line 485
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/FileLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_4
    return v0

    :cond_d
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFileValue()Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FILE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolderValue()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperDocumentValue()Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_DOCUMENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperFolderValue()Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShowcaseDocumentValue()Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SHOWCASE_DOCUMENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 459
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolder()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaperDocument()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaperFolder()Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowcaseDocument()Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 507
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 519
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
