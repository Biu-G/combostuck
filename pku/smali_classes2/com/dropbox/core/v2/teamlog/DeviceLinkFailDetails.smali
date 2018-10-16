.class public Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;
    }
.end annotation


# instance fields
.field protected final deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

.field protected final ipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceType;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'deviceType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    .line 99
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getDeviceType()Lcom/dropbox/core/v2/teamlog/DeviceType;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->ipAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 122
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
