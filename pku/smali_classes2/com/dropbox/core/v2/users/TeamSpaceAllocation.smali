.class public Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;
    }
.end annotation


# instance fields
.field protected final allocated:J

.field protected final used:J

.field protected final userWithinTeamSpaceAllocated:J

.field protected final userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;


# direct methods
.method public constructor <init>(JJJLcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 43
    iput-wide p3, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 44
    iput-wide p5, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceAllocated:J

    if-eqz p7, :cond_0

    .line 48
    iput-object p7, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'userWithinTeamSpaceLimitType\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    check-cast p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .line 112
    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceAllocated:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceAllocated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    .line 115
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;->equals(Ljava/lang/Object;)Z

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

.method public getAllocated()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    return-wide v0
.end method

.method public getUserWithinTeamSpaceAllocated()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceAllocated:J

    return-wide v0
.end method

.method public getUserWithinTeamSpaceLimitType()Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->used:J

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->allocated:J

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceAllocated:J

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->userWithinTeamSpaceLimitType:Lcom/dropbox/core/v2/teamcommon/MemberSpaceLimitType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;->a:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 137
    sget-object v0, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;->a:Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
