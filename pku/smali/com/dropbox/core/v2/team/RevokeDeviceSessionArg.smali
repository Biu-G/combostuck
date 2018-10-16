.class public final Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;,
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

.field private b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

.field private c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

.field private d:Lcom/dropbox/core/v2/team/DeviceSessionArg;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 78
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 109
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 110
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object p0
.end method

.method public static desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    .line 205
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    .line 254
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2

    if-eqz p0, :cond_0

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object p0

    return-object p0

    .line 155
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

    .line 294
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    if-eqz v2, :cond_9

    .line 295
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .line 296
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 299
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 305
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 303
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 301
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesktopClientValue()Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMobileClientValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MOBILE_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWebSessionValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.WEB_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->b:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->c:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->d:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDesktopClient()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileClient()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebSession()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 329
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->a:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
