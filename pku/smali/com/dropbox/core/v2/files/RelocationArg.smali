.class Lcom/dropbox/core/v2/files/RelocationArg;
.super Lcom/dropbox/core/v2/files/RelocationPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationArg$a;,
        Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Z

.field protected final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->a:Z

    .line 54
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/RelocationArg;->b:Z

    .line 55
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/RelocationArg;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationArg;

    .line 286
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->a:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->a:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->b:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->c:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/RelocationArg;->c:Z

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getFromPath()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    return-object v0
.end method

.method public getToPath()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg;->a:Z

    .line 267
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg;->b:Z

    .line 268
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg;->c:Z

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 266
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 271
    invoke-super {p0}, Lcom/dropbox/core/v2/files/RelocationPath;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$a;->a:Lcom/dropbox/core/v2/files/RelocationArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$a;->a:Lcom/dropbox/core/v2/files/RelocationArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
