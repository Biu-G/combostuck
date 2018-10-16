.class public Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 170
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz p2, :cond_0

    .line 174
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 176
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 177
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-void

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedLinkPolicy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'aclUpdatePolicy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 7

    .line 231
    new-instance v6, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/FolderPolicy;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    return-object v6
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object p0
.end method

.method public withResolvedMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object p0
.end method
