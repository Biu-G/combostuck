.class public Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final hostName:Ljava/lang/String;

.field protected final isDeleteOnUnlinkSupported:Z

.field protected final platform:Ljava/lang/String;

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 96
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p5, p6, p7}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 62
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eqz p1, :cond_2

    .line 66
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 70
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 71
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 75
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'platform\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'clientType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'hostName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;
    .locals 1

    .line 201
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DesktopPlatform;Ljava/lang/String;Z)V

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

    .line 332
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 333
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;

    .line 334
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 335
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/DesktopPlatform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    .line 339
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    .line 340
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    .line 341
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_0
    return v0

    :cond_b
    return v1
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleteOnUnlinkSupported()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 311
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->hostName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/DesktopPlatform;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->platform:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo;->isDeleteOnUnlinkSupported:Z

    .line 317
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 311
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 319
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DesktopDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
