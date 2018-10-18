.class public Lcom/dropbox/core/v2/sharing/FolderPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FolderPermission$a;
    }
.end annotation


# instance fields
.field protected final action:Lcom/dropbox/core/v2/sharing/FolderAction;

.field protected final allow:Z

.field protected final reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FolderAction;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/FolderPermission;-><init>(Lcom/dropbox/core/v2/sharing/FolderAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FolderAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 45
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    .line 46
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'action\' is null"

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

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderPermission;

    .line 114
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FolderAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 116
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->equals(Ljava/lang/Object;)Z

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

.method public getAction()Lcom/dropbox/core/v2/sharing/FolderAction;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    return-object v0
.end method

.method public getAllow()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    return v0
.end method

.method public getReason()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 95
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPermission$a;->a:Lcom/dropbox/core/v2/sharing/FolderPermission$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderPermission$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 138
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPermission$a;->a:Lcom/dropbox/core/v2/sharing/FolderPermission$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderPermission$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
