.class public Lcom/dropbox/core/v2/files/UploadSessionFinishArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;
    }
.end annotation


# instance fields
.field protected final commit:Lcom/dropbox/core/v2/files/CommitInfo;

.field protected final cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    if-eqz p2, :cond_0

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'commit\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'cursor\' is null"

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

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;

    .line 83
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    .line 84
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/CommitInfo;->equals(Ljava/lang/Object;)Z

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

.method public getCommit()Lcom/dropbox/core/v2/files/CommitInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    return-object v0
.end method

.method public getCursor()Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;->commit:Lcom/dropbox/core/v2/files/CommitInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
