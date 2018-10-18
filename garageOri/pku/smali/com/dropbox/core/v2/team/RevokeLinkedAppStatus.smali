.class public Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;
    }
.end annotation


# instance fields
.field protected final errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field protected final success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;-><init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    return-void
.end method

.method public constructor <init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    .line 31
    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

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

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    .line 83
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 84
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->equals(Ljava/lang/Object;)Z

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

.method public getErrorType()Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->a:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
