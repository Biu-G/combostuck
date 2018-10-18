.class Lcom/dropbox/core/v2/paper/b;
.super Lcom/dropbox/core/v2/paper/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/b$a;
    }
.end annotation


# instance fields
.field protected final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_1

    const/16 p1, 0x3e8

    if-gt p2, p1, :cond_0

    .line 42
    iput p2, p0, Lcom/dropbox/core/v2/paper/b;->a:I

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1"

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

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    check-cast p1, Lcom/dropbox/core/v2/paper/b;

    .line 99
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/b;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/dropbox/core/v2/paper/b;->a:I

    iget p1, p1, Lcom/dropbox/core/v2/paper/b;->a:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/dropbox/core/v2/paper/b;->a:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 84
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/i;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    sget-object v0, Lcom/dropbox/core/v2/paper/b$a;->a:Lcom/dropbox/core/v2/paper/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/b$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
