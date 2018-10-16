.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;,
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

.field protected final e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final f:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 96
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/MemberPolicy;",
            "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
            "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
            "Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;",
            "Lcom/dropbox/core/v2/sharing/LinkSettings;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 65
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 70
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 71
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 72
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 73
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz p7, :cond_1

    .line 75
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/sharing/FolderAction;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 1

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 337
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 338
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    .line 339
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 340
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 341
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 342
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 343
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 344
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    .line 345
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 316
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->b:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->d:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->f:Lcom/dropbox/core/v2/sharing/LinkSettings;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->g:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
