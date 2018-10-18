.class public Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;,
        Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;
    }
.end annotation


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected final numFailures:J

.field protected final sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;-><init>(JLcom/dropbox/core/v2/teamlog/SessionLogInfo;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/SessionLogInfo;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 42
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    .line 43
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->numFailures:J

    return-void
.end method

.method public static newBuilder(J)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    .line 168
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->numFailures:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->numFailures:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 169
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    .line 170
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

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumFailures()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->numFailures:J

    return-wide v0
.end method

.method public getSessionInfo()Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;->numFailures:J

    .line 152
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 192
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
