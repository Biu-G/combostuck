.class public Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;

.field protected final updatePropertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"

    .line 41
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'updatePropertyGroups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'updatePropertyGroups\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_4
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

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;

    .line 94
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    .line 95
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePropertyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;->updatePropertyGroups:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
