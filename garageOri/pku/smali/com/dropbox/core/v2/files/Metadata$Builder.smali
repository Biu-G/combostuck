.class public Lcom/dropbox/core/v2/files/Metadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final name:Ljava/lang/String;

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected pathDisplay:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    return-void

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'name\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/Metadata;
    .locals 5

    .line 228
    new-instance v0, Lcom/dropbox/core/v2/files/Metadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 213
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    return-object p0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    return-object p0
.end method
