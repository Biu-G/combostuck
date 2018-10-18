.class Lcom/dropbox/core/v2/team/MembersListArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersListArg$a;,
        Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:J

.field protected final b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 42
    iput-wide p1, p0, Lcom/dropbox/core/v2/team/MembersListArg;->a:J

    .line 43
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MembersListArg;->b:Z

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 1

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;-><init>()V

    return-object v0
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

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    check-cast p1, Lcom/dropbox/core/v2/team/MembersListArg;

    .line 180
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/MembersListArg;->a:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/MembersListArg;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersListArg;->b:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/team/MembersListArg;->b:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/team/MembersListArg;->a:J

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/MembersListArg;->b:Z

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 162
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListArg$a;->a:Lcom/dropbox/core/v2/team/MembersListArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
