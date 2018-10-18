.class Lcom/dropbox/core/v2/fileproperties/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/a$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/fileproperties/a;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'queries\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 51
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'templateFilter\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List \'queries\' has fewer than 1 items"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'queries\' is null"

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

    if-eqz v2, :cond_5

    .line 108
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/a;

    .line 109
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 110
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/a;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/a;->b:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/a$a;->a:Lcom/dropbox/core/v2/fileproperties/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/a$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
