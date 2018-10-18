.class public Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;
    }
.end annotation


# instance fields
.field protected final memberCount:J

.field protected final members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/SharedFileMembers;J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    .line 38
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'members\' is null"

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

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .line 80
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public getMemberCount()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    return-wide v0
.end method

.method public getMembers()Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 103
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;->a:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
