.class Lcom/dropbox/core/v2/sharing/ShareFolderArg;
.super Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;,
        Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/dropbox/core/v2/sharing/LinkSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 79
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
            "Z",
            "Lcom/dropbox/core/v2/sharing/MemberPolicy;",
            "Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;",
            "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkSettings;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    if-eqz p7, :cond_1

    .line 56
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

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    .line 63
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 1

    .line 175
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 330
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 331
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    .line 332
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 333
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->d:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 335
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 336
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 337
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    .line 338
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 339
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->b:Lcom/dropbox/core/v2/sharing/LinkSettings;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 317
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
