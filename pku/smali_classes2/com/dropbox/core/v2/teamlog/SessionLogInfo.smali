.class public Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;
    }
.end annotation


# instance fields
.field protected final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    return-void
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

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 73
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->sessionId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
