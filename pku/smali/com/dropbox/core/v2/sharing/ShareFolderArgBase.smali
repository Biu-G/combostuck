.class Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;,
        Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    }
.end annotation


# instance fields
.field protected final c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final d:Z

.field protected final e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final f:Ljava/lang/String;

.field protected final g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 52
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Z

    .line 53
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz p1, :cond_1

    const-string p2, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    .line 57
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 62
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

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

    .line 291
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    .line 293
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 294
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 296
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 297
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 298
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 271
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Z

    .line 273
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->h:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;->a:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
