.class Landroid/support/v7/graphics/drawable/b$a;
.super Landroid/support/v7/graphics/drawable/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/drawable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field L:[[I


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/drawable/b$a;Landroid/support/v7/graphics/drawable/b;Landroid/content/res/Resources;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/graphics/drawable/a$b;-><init>(Landroid/support/v7/graphics/drawable/a$b;Landroid/support/v7/graphics/drawable/a;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p1, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    iput-object p1, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/b$a;->c()I

    move-result p1

    new-array p1, p1, [[I

    iput-object p1, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    :goto_0
    return-void
.end method


# virtual methods
.method a([ILandroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 349
    invoke-virtual {p0, p2}, Landroid/support/v7/graphics/drawable/b$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    .line 350
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    aput-object p1, v0, p2

    return p2
.end method

.method a()V
    .locals 3

    .line 341
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    .line 342
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 343
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    aget-object v2, v2, v1

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 345
    :cond_1
    iput-object v0, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    return-void
.end method

.method b([I)I
    .locals 4

    .line 355
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/b$a;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 358
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public e(II)V
    .locals 2

    .line 379
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/a$b;->e(II)V

    .line 380
    new-array p2, p2, [[I

    .line 381
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iput-object p2, p0, Landroid/support/v7/graphics/drawable/b$a;->L:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 368
    new-instance v0, Landroid/support/v7/graphics/drawable/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/graphics/drawable/b;-><init>(Landroid/support/v7/graphics/drawable/b$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 374
    new-instance v0, Landroid/support/v7/graphics/drawable/b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/drawable/b;-><init>(Landroid/support/v7/graphics/drawable/b$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
