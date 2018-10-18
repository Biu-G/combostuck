.class public Lcom/dropbox/core/v2/files/ListRevisionsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListRevisionsResult$a;
    }
.end annotation


# instance fields
.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected final isDeleted:Z

.field protected final serverDeleted:Ljava/util/Date;


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/files/ListRevisionsResult;-><init>(ZLjava/util/List;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 42
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    if-eqz p2, :cond_2

    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'entries\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'entries\' is null"

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

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;

    .line 122
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    .line 123
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    .line 124
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

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

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    return v0
.end method

.method public getServerDeleted()Ljava/util/Date;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->isDeleted:Z

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->serverDeleted:Ljava/util/Date;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsResult;->entries:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$a;->a:Lcom/dropbox/core/v2/files/ListRevisionsResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 146
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsResult$a;->a:Lcom/dropbox/core/v2/files/ListRevisionsResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListRevisionsResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
