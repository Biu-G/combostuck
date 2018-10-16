.class public Lcom/dropbox/core/v2/team/ActiveWebSession;
.super Lcom/dropbox/core/v2/team/DeviceSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ActiveWebSession$a;,
        Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    }
.end annotation


# instance fields
.field protected final browser:Ljava/lang/String;

.field protected final expires:Ljava/util/Date;

.field protected final os:Ljava/lang/String;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 88
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/team/ActiveWebSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    if-eqz p2, :cond_2

    .line 59
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 63
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 67
    iput-object p4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    .line 68
    invoke-static {p9}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'browser\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'os\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'userAgent\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 1

    .line 189
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 313
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 314
    check-cast p1, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 315
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    .line 321
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    .line 322
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    .line 323
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_0
    return v0

    :cond_c
    return v1
.end method

.method public getBrowser()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 294
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession;->expires:Ljava/util/Date;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 300
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSession;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$a;->a:Lcom/dropbox/core/v2/team/ActiveWebSession$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ActiveWebSession$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$a;->a:Lcom/dropbox/core/v2/team/ActiveWebSession$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ActiveWebSession$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
