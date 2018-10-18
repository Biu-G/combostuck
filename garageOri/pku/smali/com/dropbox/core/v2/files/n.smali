.class Lcom/dropbox/core/v2/files/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/n$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

.field protected final b:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/files/n;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    .line 41
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/n;->b:Z

    return-void

    .line 38
    :cond_0
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

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/files/n;

    .line 101
    iget-object v2, p0, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/n;->b:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/n;->b:Z

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

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/n;->a:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/n;->b:Z

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/files/n$a;->a:Lcom/dropbox/core/v2/files/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/n$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
