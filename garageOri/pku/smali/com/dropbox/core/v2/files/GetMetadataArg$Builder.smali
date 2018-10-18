.class public Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/GetMetadataArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeDeleted:Z

.field protected includeHasExplicitSharedMembers:Z

.field protected includeMediaInfo:Z

.field protected includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    .line 165
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    .line 170
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    .line 171
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'path\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'path\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/GetMetadataArg;
    .locals 7

    .line 265
    new-instance v6, Lcom/dropbox/core/v2/files/GetMetadataArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;ZZZLcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)V

    return-object v6
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    :goto_0
    return-object p0
.end method

.method public withIncludePropertyGroups(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includePropertyGroups:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-object p0
.end method
