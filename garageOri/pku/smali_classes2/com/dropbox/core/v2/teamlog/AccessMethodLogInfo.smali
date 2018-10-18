.class public final Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field private d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field private e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field private f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 179
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 180
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 181
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 129
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 131
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object p0
.end method

.method public static adminConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 376
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static api(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 425
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    .line 423
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method private c(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .line 163
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 164
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 165
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method public static contentManager(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 327
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object p0
.end method

.method public static endUser(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 231
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signInAs(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 279
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object p0

    return-object p0

    .line 277
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

    .line 477
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    if-eqz v2, :cond_d

    .line 478
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    .line 479
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 482
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 492
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 490
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 488
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    .line 486
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    return v0

    .line 484
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->equals(Ljava/lang/Object;)Z

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

.method public getAdminConsoleValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ADMIN_CONSOLE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApiValue()Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.API, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentManagerValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONTENT_MANAGER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEndUserValue()Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.END_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignInAsValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SIGN_IN_AS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

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

    .line 458
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->b:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->c:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->e:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAdminConsole()Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApi()Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContentManager()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndUser()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

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

    .line 453
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignInAs()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 506
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
