.class public Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;,
        Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Builder;
    }
.end annotation


# instance fields
.field protected final isCompanyManaged:Ljava/lang/Boolean;

.field protected final joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;-><init>(Ljava/lang/Boolean;Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Builder;
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Builder;-><init>()V

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

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    check-cast p1, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    .line 147
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    .line 148
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;->equals(Ljava/lang/Object;)Z

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

.method public getIsCompanyManaged()Ljava/lang/Boolean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJoinPolicy()Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->isCompanyManaged:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;->joinPolicy:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 170
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
