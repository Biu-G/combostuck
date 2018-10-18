.class public Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;
    }
.end annotation


# instance fields
.field protected final backoff:Ljava/lang/Long;

.field protected final changes:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;-><init>(ZLjava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Long;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    return-void
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

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    .line 91
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

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

.method public getBackoff()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    return-object v0
.end method

.method public getChanges()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;->a:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;->a:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
