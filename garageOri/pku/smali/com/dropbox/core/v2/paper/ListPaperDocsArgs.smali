.class Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;,
        Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

.field protected final b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

.field protected final c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

.field protected final d:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 72
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    const/16 v3, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 48
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    if-eqz p2, :cond_3

    .line 52
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    if-eqz p3, :cond_2

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    const/4 p1, 0x1

    if-lt p4, p1, :cond_1

    const/16 p1, 0x3e8

    if-gt p4, p1, :cond_0

    .line 63
    iput p4, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->d:I

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 1000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sortOrder\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sortBy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'filterBy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    .locals 1

    .line 122
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;-><init>()V

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

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    .line 283
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 284
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 285
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->d:I

    iget p1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->d:I

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 263
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->d:I

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 263
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
