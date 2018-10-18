.class Lcom/dropbox/core/v2/paper/AddPaperDocUser;
.super Lcom/dropbox/core/v2/paper/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;,
        Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/String;

.field protected final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/i;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_2

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/AddMember;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'members\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->c:Z

    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List \'members\' has more than 20 items"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'members\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

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

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    .line 233
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    .line 234
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->c:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->c:Z

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 213
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->c:Z

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 213
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 218
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/i;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;->a:Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
