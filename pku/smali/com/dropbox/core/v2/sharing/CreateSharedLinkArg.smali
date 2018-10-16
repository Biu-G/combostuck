.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;,
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected final c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->b:Z

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 1

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    .line 192
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->b:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 194
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 173
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->b:Z

    .line 175
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->c:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 173
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;->a:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
