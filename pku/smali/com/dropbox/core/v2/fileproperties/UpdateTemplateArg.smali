.class public Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    }
.end annotation


# instance fields
.field protected final addFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected final description:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const-string v0, "(/|ptid:).*"

    .line 56
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 63
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'addFields\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    return-void

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'templateId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'templateId\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'templateId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    .locals 1

    .line 148
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 259
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    .line 260
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    .line 263
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getAddFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->templateId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->description:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->addFields:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 285
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
