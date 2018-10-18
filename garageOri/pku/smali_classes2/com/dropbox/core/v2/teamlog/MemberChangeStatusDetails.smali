.class public Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;,
        Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    }
.end annotation


# instance fields
.field protected final action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/MemberStatus;Lcom/dropbox/core/v2/teamlog/ActionDetails;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'newValue\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/MemberStatus;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;
    .locals 1

    .line 105
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/MemberStatus;)V

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

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    .line 184
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 185
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    .line 186
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getAction()Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-object v0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;->action:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 208
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
