.class public Lcom/dropbox/core/v2/team/UserCustomQuotaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;
    }
.end annotation


# instance fields
.field protected final quotaGb:Ljava/lang/Long;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/Long;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'quotaGb\' is smaller than 15L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'user\' is null"

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

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    check-cast p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;

    .line 102
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

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

.method public getQuotaGb()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult;->quotaGb:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 125
    sget-object v0, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserCustomQuotaResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
