.class Lcom/dropbox/core/v2/files/GetMetadataArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/GetMetadataArg$a;,
        Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    }
.end annotation


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Z

.field protected final d:Z

.field protected final e:Z

.field protected final f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;ZZZLcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    .line 56
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->c:Z

    .line 61
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->d:Z

    .line 62
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->e:Z

    .line 63
    iput-object p5, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 290
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    check-cast p1, Lcom/dropbox/core/v2/files/GetMetadataArg;

    .line 292
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->d:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->e:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->e:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    .line 296
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x5

    .line 271
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->c:Z

    .line 273
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->d:Z

    .line 274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->e:Z

    .line 275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg;->f:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 306
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataArg$a;->a:Lcom/dropbox/core/v2/files/GetMetadataArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetMetadataArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
