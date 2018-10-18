.class public Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected allowOwnershipTransfer:Z

.field protected allowSharedFolder:Z

.field protected autorename:Z

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/RelocationPath;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'entries\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    .line 169
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    .line 170
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    return-void

    .line 160
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List \'entries\' has fewer than 1 items"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'entries\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .locals 5

    .line 252
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZZ)V

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    :goto_0
    return-object p0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    :goto_0
    return-object p0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    :goto_0
    return-object p0
.end method
