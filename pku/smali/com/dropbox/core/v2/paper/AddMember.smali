.class public Lcom/dropbox/core/v2/paper/AddMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/AddMember$a;
    }
.end annotation


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->EDIT:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/AddMember;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'member\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'permissionLevel\' is null"

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

    if-eqz v2, :cond_5

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/paper/AddMember;

    .line 101
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    iget-object p1, p1, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    .line 102
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;->equals(Ljava/lang/Object;)Z

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

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getPermissionLevel()Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddMember;->permissionLevel:Lcom/dropbox/core/v2/paper/PaperDocPermissionLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddMember;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/paper/AddMember$a;->a:Lcom/dropbox/core/v2/paper/AddMember$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddMember$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/AddMember$a;->a:Lcom/dropbox/core/v2/paper/AddMember$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddMember$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
