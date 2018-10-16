.class public Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final deviceName:Ljava/lang/String;

.field protected final lastCarrier:Ljava/lang/String;

.field protected final osVersion:Ljava/lang/String;

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 85
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p3, p4, p5}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 59
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    if-eqz p1, :cond_1

    .line 63
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 67
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 68
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    .line 70
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'clientType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'deviceName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$Builder;
    .locals 1

    .line 184
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V

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

    .line 336
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;

    .line 338
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 339
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/MobileClientPlatform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    .line 341
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    .line 343
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_0
    return v0

    :cond_c
    return v1
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCarrier()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 315
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/MobileSessionLogInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->deviceName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo;->lastCarrier:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 323
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MobileDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
