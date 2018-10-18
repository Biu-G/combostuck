.class Lcom/dropbox/core/v2/files/ListRevisionsArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListRevisionsArg$a;,
        Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

.field protected final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    const-wide/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ListRevisionsMode;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ListRevisionsMode;J)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"

    .line 45
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 52
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    const-wide/16 p1, 0x1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_1

    const-wide/16 p1, 0x64

    cmp-long p1, p3, p1

    if-gtz p1, :cond_0

    .line 59
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->c:J

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 100L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'mode\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    .locals 1

    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    .line 234
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    .line 235
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ListRevisionsMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->c:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->b:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg;->c:J

    .line 218
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$a;->a:Lcom/dropbox/core/v2/files/ListRevisionsArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
