.class public Lcom/dropbox/core/v2/team/MobileClientSession;
.super Lcom/dropbox/core/v2/team/DeviceSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MobileClientSession$a;,
        Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    }
.end annotation


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final deviceName:Ljava/lang/String;

.field protected final lastCarrier:Ljava/lang/String;

.field protected final osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 81
    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/MobileClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v6, p0

    move-object v7, p2

    move-object v8, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    if-eqz v7, :cond_1

    .line 58
    iput-object v7, v6, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 62
    iput-object v8, v6, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    move-object/from16 v0, p8

    .line 63
    iput-object v0, v6, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 64
    iput-object v0, v6, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 65
    iput-object v0, v6, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'clientType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'deviceName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 1

    .line 187
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V

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

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 336
    check-cast p1, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 337
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 339
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/MobileClientPlatform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    .line 343
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_0
    return v0

    :cond_d
    return v1
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCarrier()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 315
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 322
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSession;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$a;->a:Lcom/dropbox/core/v2/team/MobileClientSession$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MobileClientSession$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$a;->a:Lcom/dropbox/core/v2/team/MobileClientSession$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MobileClientSession$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
