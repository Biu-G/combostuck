.class Lcom/dropbox/core/v2/paper/f;
.super Lcom/dropbox/core/v2/paper/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/f$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/paper/ExportFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 36
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'exportFormat\' is null"

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

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    check-cast p1, Lcom/dropbox/core/v2/paper/f;

    .line 76
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/f;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/f;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/f;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    iget-object p1, p1, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    .line 77
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/paper/ExportFormat;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/f;->a:Lcom/dropbox/core/v2/paper/ExportFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 61
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/i;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    sget-object v0, Lcom/dropbox/core/v2/paper/f$a;->a:Lcom/dropbox/core/v2/paper/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/f$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
