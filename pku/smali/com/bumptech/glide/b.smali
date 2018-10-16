.class final Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/a;
.source "SourceFile"


# instance fields
.field private final a:Lcn/edu/pku/pkurunner/MyAppGlideModule;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/a;-><init>()V

    .line 19
    new-instance v0, Lcn/edu/pku/pkurunner/MyAppGlideModule;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/MyAppGlideModule;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b;->a:Lcn/edu/pku/pkurunner/MyAppGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v1, "Discovered AppGlideModule from annotation: cn.edu.pku.pkurunner.MyAppGlideModule"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Glide"

    const-string v1, "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GlideBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lcn/edu/pku/pkurunner/MyAppGlideModule;

    invoke-virtual {v0, p1, p2}, Lcn/edu/pku/pkurunner/MyAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method synthetic b()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/bumptech/glide/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    new-instance v0, Lcom/bumptech/glide/c;

    invoke-direct {v0}, Lcom/bumptech/glide/c;-><init>()V

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lcn/edu/pku/pkurunner/MyAppGlideModule;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/MyAppGlideModule;->isManifestParsingEnabled()Z

    move-result v0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lcn/edu/pku/pkurunner/MyAppGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcn/edu/pku/pkurunner/MyAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
