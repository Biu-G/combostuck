.class Lcom/dropbox/core/v2/files/SearchArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SearchArg$a;,
        Lcom/dropbox/core/v2/files/SearchArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:J

.field protected final d:J

.field protected final e:Lcom/dropbox/core/v2/files/SearchMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 93
    sget-object v7, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    .line 54
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 61
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/dropbox/core/v2/files/SearchArg;->c:J

    const-wide/16 p1, 0x1

    cmp-long p1, p5, p1

    if-ltz p1, :cond_2

    const-wide/16 p1, 0x3e8

    cmp-long p1, p5, p1

    if-gtz p1, :cond_1

    .line 69
    iput-wide p5, p0, Lcom/dropbox/core/v2/files/SearchArg;->d:J

    if-eqz p7, :cond_0

    .line 73
    iput-object p7, p0, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'mode\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'maxResults\' is larger than 1000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'maxResults\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'query\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchArg$Builder;
    .locals 1

    .line 165
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/SearchArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 308
    check-cast p1, Lcom/dropbox/core/v2/files/SearchArg;

    .line 309
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->c:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/SearchArg;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->d:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/SearchArg;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    .line 313
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/SearchMode;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 288
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchArg;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/SearchArg;->c:J

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/SearchArg;->d:J

    .line 292
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SearchArg;->e:Lcom/dropbox/core/v2/files/SearchMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 288
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/files/SearchArg$a;->a:Lcom/dropbox/core/v2/files/SearchArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SearchArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
