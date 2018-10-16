.class Lcom/dropbox/core/v2/files/CreateFolderBatchArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;,
        Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Z

.field protected final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    .line 48
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stringan item in list \'paths\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'paths\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    .line 53
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->b:Z

    .line 54
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->c:Z

    return-void

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'paths\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/util/List;)Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/CreateFolderBatchArg$Builder;-><init>(Ljava/util/List;)V

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

    .line 220
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    check-cast p1, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;

    .line 222
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->c:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->c:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 203
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->b:Z

    .line 205
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg;->c:Z

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 203
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;->a:Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderBatchArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
