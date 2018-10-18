.class public Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final browser:Ljava/lang/String;

.field protected final os:Ljava/lang/String;

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 88
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p4, p5, p6}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 57
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eqz p1, :cond_2

    .line 61
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 65
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 69
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'browser\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'os\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'userAgent\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$Builder;
    .locals 1

    .line 173
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 287
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;

    .line 288
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    .line 292
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    .line 293
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    .line 294
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public getBrowser()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 267
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->userAgent:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->os:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo;->browser:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 273
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
