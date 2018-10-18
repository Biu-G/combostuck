.class Lcom/dropbox/core/v2/files/ListFolderArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderArg$a;,
        Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected final c:Z

.field protected final d:Z

.field protected final e:Z

.field protected final f:Z

.field protected final g:Ljava/lang/Long;

.field protected final h:Lcom/dropbox/core/v2/files/SharedLink;

.field protected final i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 107
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    .line 73
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    .line 77
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    .line 78
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    .line 79
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    .line 80
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    .line 81
    iput-boolean p6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    if-eqz p7, :cond_2

    .line 83
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p1, p1, p3

    if-ltz p1, :cond_1

    .line 86
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x7d0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 2000L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    :goto_0
    iput-object p7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    .line 91
    iput-object p8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    .line 92
    iput-object p9, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-void

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    .line 219
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 461
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 462
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderArg;

    .line 463
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    .line 470
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SharedLink;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    .line 471
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    .line 438
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    .line 440
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    .line 441
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    .line 442
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    .line 443
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    .line 444
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 438
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 481
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$a;->a:Lcom/dropbox/core/v2/files/ListFolderArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
