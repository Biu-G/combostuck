.class public Lcom/dropbox/core/v2/teamlog/FileRequestDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;
    }
.end annotation


# instance fields
.field protected final assetIndex:J

.field protected final deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;-><init>(JLcom/dropbox/core/v2/teamlog/FileRequestDeadline;)V

    return-void
.end method

.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/FileRequestDeadline;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->assetIndex:J

    .line 36
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    return-void
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

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    .line 88
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->assetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->assetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    .line 89
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public getAssetIndex()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->assetIndex:J

    return-wide v0
.end method

.method public getDeadline()Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->assetIndex:J

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->deadline:Lcom/dropbox/core/v2/teamlog/FileRequestDeadline;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
