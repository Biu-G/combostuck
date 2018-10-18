.class public Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;
.super Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final clientVersion:Ljava/lang/String;

.field protected final deviceType:Ljava/lang/String;

.field protected final displayName:Ljava/lang/String;

.field protected final isEmmManaged:Ljava/lang/Boolean;

.field protected final legacyUniqId:Ljava/lang/String;

.field protected final macAddress:Ljava/lang/String;

.field protected final osVersion:Ljava/lang/String;

.field protected final platform:Ljava/lang/String;

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 69
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 70
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    .line 72
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    .line 74
    iput-object p9, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    .line 75
    iput-object p10, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    .line 76
    iput-object p11, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    .line 77
    iput-object p12, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$Builder;
    .locals 1

    .line 210
    new-instance v0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$Builder;-><init>()V

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

    .line 433
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 434
    check-cast p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;

    .line 435
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    .line 436
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    .line 437
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 438
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    .line 443
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    .line 446
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_0
    return v0

    :cond_f
    return v1
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEmmManaged()Ljava/lang/Boolean;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLegacyUniqId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 409
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->isEmmManaged:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->platform:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->macAddress:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->osVersion:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->deviceType:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->clientVersion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo;->legacyUniqId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 420
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/DeviceSessionLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 456
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 468
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LegacyDeviceSessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
