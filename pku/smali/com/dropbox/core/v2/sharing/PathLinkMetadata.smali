.class public Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/LinkMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p4}, Lcom/dropbox/core/v2/sharing/LinkMetadata;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/Visibility;Ljava/util/Date;)V

    if-eqz p3, :cond_0

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    return-void

    .line 43
    :cond_0
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

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    .line 120
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 121
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    .line 123
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->visibility:Lcom/dropbox/core/v2/sharing/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 105
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/LinkMetadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 145
    sget-object v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
