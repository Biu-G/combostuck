.class public Lcom/dropbox/core/v2/files/SharingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SharingInfo$a;
    }
.end annotation


# instance fields
.field protected final readOnly:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

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

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    check-cast p1, Lcom/dropbox/core/v2/files/SharingInfo;

    .line 64
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public getReadOnly()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Lcom/dropbox/core/v2/files/SharingInfo$a;->a:Lcom/dropbox/core/v2/files/SharingInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SharingInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 85
    sget-object v0, Lcom/dropbox/core/v2/files/SharingInfo$a;->a:Lcom/dropbox/core/v2/files/SharingInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SharingInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
