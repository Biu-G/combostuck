.class public Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;
    }
.end annotation


# instance fields
.field protected final resellerEmail:Ljava/lang/String;

.field protected final resellerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 41
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 48
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'resellerEmail\' is longer than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'resellerEmail\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'resellerName\' is null"

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

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    .line 89
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    .line 90
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

.method public getResellerEmail()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getResellerName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->resellerEmail:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
