.class public final Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

.field private d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

.field private e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 1

    .line 125
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 1

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    .line 160
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    .line 161
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 1

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    .line 109
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    .line 110
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 1

    .line 142
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    .line 143
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    .line 144
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;)Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    return-object p0
.end method

.method public static desktopDeviceSession(Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 261
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->DESKTOP_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static legacyDeviceSession(Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 360
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->LEGACY_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object p0

    return-object p0

    .line 358
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mobileDeviceSession(Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->MOBILE_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static webDeviceSession(Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 311
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->WEB_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a(Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    move-result-object p0

    return-object p0

    .line 309
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

    .line 413
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    if-eqz v2, :cond_b

    .line 414
    check-cast p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;

    .line 415
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 418
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 426
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 424
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 422
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    .line 420
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->equals(Ljava/lang/Object;)Z

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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesktopDeviceSessionValue()Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->DESKTOP_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    return-object v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DESKTOP_DEVICE_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLegacyDeviceSessionValue()Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->LEGACY_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LEGACY_DEVICE_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMobileDeviceSessionValue()Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->MOBILE_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MOBILE_DEVICE_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWebDeviceSessionValue()Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->WEB_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    return-object v0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.WEB_DEVICE_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->name()Ljava/lang/String;

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

    .line 395
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->b:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->c:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->d:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->e:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDesktopDeviceSession()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->DESKTOP_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLegacyDeviceSession()Z
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->LEGACY_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileDeviceSession()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->MOBILE_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

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

    .line 390
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebDeviceSession()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;->WEB_DEVICE_SESSION:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 440
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LinkedDeviceLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
