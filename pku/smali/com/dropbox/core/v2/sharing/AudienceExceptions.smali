.class public Lcom/dropbox/core/v2/sharing/AudienceExceptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;
    }
.end annotation


# instance fields
.field protected final count:J

.field protected final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    if-eqz p3, :cond_2

    .line 48
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'exceptions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'exceptions\' is null"

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

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    check-cast p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 95
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    .line 96
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getCount()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    return-wide v0
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;->a:Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;->a:Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceExceptions$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
