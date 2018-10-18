.class public Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;
    }
.end annotation


# instance fields
.field protected final docId:Ljava/lang/String;

.field protected final revision:J

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    .line 40
    iput-wide p2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->revision:J

    if-eqz p4, :cond_0

    .line 44
    iput-object p4, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'title\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'docId\' is null"

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

    if-eqz v2, :cond_5

    .line 94
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;

    .line 95
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->revision:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->revision:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    .line 97
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

.method public getDocId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->revision:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->docId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->revision:J

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;->a:Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 119
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;->a:Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocCreateUpdateResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
