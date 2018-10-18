.class public Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected displayName:Ljava/lang/String;

.field protected final numFailures:J

.field protected sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->numFailures:J

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 107
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;
    .locals 5

    .line 143
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->numFailures:J

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->displayName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;-><init>(JLcom/dropbox/core/v2/teamlog/SessionLogInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public withSessionInfo(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Builder;->sessionInfo:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object p0
.end method
