.class public Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;
    }
.end annotation


# instance fields
.field protected final audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected final name:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkAudience;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 47
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 54
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'audience\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedFolderId\' is null"

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

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    check-cast p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 109
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 111
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->sharedFolderId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;->a:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;->a:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
