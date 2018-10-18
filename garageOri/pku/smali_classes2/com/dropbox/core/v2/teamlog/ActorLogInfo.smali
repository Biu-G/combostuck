.class public final Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field public static final DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field private d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

.field private e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 109
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .line 173
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 174
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 175
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 124
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 125
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public static admin(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 273
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    .line 271
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static app(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 321
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .line 140
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 141
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 142
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object p0
.end method

.method public static reseller(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 369
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 225
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object p0

    return-object p0

    .line 223
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

    .line 442
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    if-eqz v2, :cond_b

    .line 443
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 444
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 447
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    .line 455
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 453
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 451
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    .line 449
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    return v0

    :cond_b
    return v1

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

.method public getAdminValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ADMIN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppValue()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.APP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResellerValue()Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object v0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RESELLER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 424
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->c:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->d:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->e:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAdmin()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnonymous()Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApp()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDropbox()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

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

    .line 419
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReseller()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUser()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 473
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 485
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
