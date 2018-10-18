.class public Lcom/getkeepsafe/taptargetview/TapTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:F

.field d:I

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/Typeface;

.field h:Landroid/graphics/Typeface;

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:F

.field private o:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private p:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private q:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private r:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private s:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private z:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/getkeepsafe/taptargetview/TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->e:Landroid/graphics/Rect;

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null bounds or title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f75c28f    # 0.96f

    .line 47
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->c:F

    const/16 v0, 0x2c

    .line 48
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->d:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->o:I

    .line 57
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->p:I

    .line 59
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->q:I

    .line 61
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->r:I

    .line 63
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->s:I

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->t:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->u:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->v:Ljava/lang/Integer;

    .line 69
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->w:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->x:Ljava/lang/Integer;

    .line 72
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->y:I

    .line 74
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->z:I

    const/16 v1, 0x14

    .line 77
    iput v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->A:I

    const/16 v1, 0x12

    .line 78
    iput v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->B:I

    .line 79
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->i:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->j:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->k:Z

    .line 83
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->l:Z

    .line 84
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->m:Z

    const v0, 0x3f0a3d71    # 0.54f

    .line 85
    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->n:F

    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->a:Ljava/lang/CharSequence;

    .line 203
    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->b:Ljava/lang/CharSequence;

    return-void

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;II)I
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 500
    :cond_0
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/d;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 489
    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    new-instance v0, Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/getkeepsafe/taptargetview/TapTarget;-><init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarMenuItem(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/support/v7/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarNavigationIcon(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/support/v7/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarOverflow(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/support/v7/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p0

    return-object p0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 175
    new-instance v0, Lcom/getkeepsafe/taptargetview/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/getkeepsafe/taptargetview/e;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->t:Ljava/lang/Integer;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->o:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->u:Ljava/lang/Integer;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->p:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->e:Landroid/graphics/Rect;

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->v:Ljava/lang/Integer;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->q:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public cancelable(Z)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->k:Z

    return-object p0
.end method

.method d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->w:Ljava/lang/Integer;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->r:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public descriptionTextAlpha(F)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 339
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->n:F

    return-object p0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given an invalid alpha value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 277
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->s:I

    return-object p0
.end method

.method public descriptionTextColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method public descriptionTextDimen(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 349
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->z:I

    return-object p0
.end method

.method public descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    if-ltz p1, :cond_0

    .line 320
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->B:I

    return-object p0

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public descriptionTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    if-eqz p1, :cond_0

    .line 306
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dimColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 359
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->q:I

    return-object p0
.end method

.method public dimColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public drawShadow(Z)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->j:Z

    return-object p0
.end method

.method e(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->x:Ljava/lang/Integer;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->s:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method f(Landroid/content/Context;)I
    .locals 2

    .line 479
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->A:I

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->y:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method g(Landroid/content/Context;)I
    .locals 2

    .line 483
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->B:I

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->z:I

    invoke-direct {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->icon(Landroid/graphics/drawable/Drawable;Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p1

    return-object p1
.end method

.method public icon(Landroid/graphics/drawable/Drawable;Z)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 3

    if-eqz p1, :cond_1

    .line 406
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 409
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object p0

    .line 405
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use null drawable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public id()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->i:I

    return v0
.end method

.method public id(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 417
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->i:I

    return-object p0
.end method

.method public onReady(Ljava/lang/Runnable;)V
    .locals 0

    .line 437
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public outerCircleAlpha(F)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 230
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->c:F

    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given an invalid alpha value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 214
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->o:I

    return-object p0
.end method

.method public outerCircleColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public targetCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 236
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->p:I

    return-object p0
.end method

.method public targetCircleColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method public targetRadius(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 423
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->d:I

    return-object p0
.end method

.method public textColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 249
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->r:I

    .line 250
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->s:I

    return-object p0
.end method

.method public textColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->w:Ljava/lang/Integer;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method public textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->g:Landroid/graphics/Typeface;

    .line 292
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tintTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->l:Z

    return-object p0
.end method

.method public titleTextColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 264
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->r:I

    return-object p0
.end method

.method public titleTextColorInt(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->w:Ljava/lang/Integer;

    return-object p0
.end method

.method public titleTextDimen(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 330
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->y:I

    return-object p0
.end method

.method public titleTextSize(I)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    if-ltz p1, :cond_0

    .line 313
    iput p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->A:I

    return-object p0

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->g:Landroid/graphics/Typeface;

    return-object p0

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTarget;->m:Z

    return-object p0
.end method
