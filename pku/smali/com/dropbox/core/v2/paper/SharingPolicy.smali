.class public Lcom/dropbox/core/v2/paper/SharingPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/SharingPolicy$a;,
        Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    }
.end annotation


# instance fields
.field protected final publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field protected final teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/paper/SharingPolicy;-><init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;-><init>()V

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

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    check-cast p1, Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 149
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    iget-object p1, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 150
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->equals(Ljava/lang/Object;)Z

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

.method public getPublicSharingPolicy()Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    return-object v0
.end method

.method public getTeamSharingPolicy()Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$a;->a:Lcom/dropbox/core/v2/paper/SharingPolicy$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/SharingPolicy$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 172
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$a;->a:Lcom/dropbox/core/v2/paper/SharingPolicy$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/SharingPolicy$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method