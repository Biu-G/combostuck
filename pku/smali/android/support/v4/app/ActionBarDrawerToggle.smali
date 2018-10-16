.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggle$b;,
        Landroid/support/v4/app/ActionBarDrawerToggle$a;,
        Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field final a:Landroid/app/Activity;

.field private final c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

.field private final d:Landroid/support/v4/widget/DrawerLayout;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Landroid/support/v4/app/ActionBarDrawerToggle$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 8
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 167
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .locals 1
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    .line 200
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    .line 203
    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    .line 209
    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    .line 210
    iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->j:I

    .line 211
    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    .line 212
    iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    .line 214
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    .line 216
    new-instance p1, Landroid/support/v4/app/ActionBarDrawerToggle$b;

    iget-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$b;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    .line 217
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    if-eqz p3, :cond_1

    const p2, 0x3eaaaaab

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->b(F)V

    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    :goto_0
    const/4 v1, 0x0

    .line 427
    sget-object v3, Landroid/support/v4/app/ActionBarDrawerToggle;->b:[I

    const v4, 0x10102ce

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 430
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 433
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    sget-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->b:[I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 434
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private a(I)V
    .locals 4

    .line 473
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    return-void

    .line 477
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    .line 486
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 489
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 489
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "Couldn\'t set content description via JB-MR2 API"

    .line 495
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .line 441
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 445
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 449
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    if-nez v0, :cond_2

    .line 453
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    .line 455
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 458
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object p1, p1, Landroid/support/v4/app/ActionBarDrawerToggle$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    .line 460
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    .line 459
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ActionBarDrawerToggle"

    const-string v0, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    .line 462
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    :cond_3
    iget-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object p2, p2, Landroid/support/v4/app/ActionBarDrawerToggle$a;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 465
    iget-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object p2, p2, Landroid/support/v4/app/ActionBarDrawerToggle$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const-string p1, "ActionBarDrawerToggle"

    const-string p2, "Couldn\'t set home-as-up indicator"

    .line 467
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 326
    iget-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    if-nez p1, :cond_0

    .line 327
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->j:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 397
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a(F)V

    .line 398
    iget-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz p1, :cond_0

    .line 399
    iget p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    invoke-direct {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 382
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a(F)V

    .line 383
    iget-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz p1, :cond_0

    .line 384
    iget p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    invoke-direct {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .line 364
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    invoke-virtual {p1}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sub-float/2addr p2, v0

    .line 366
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float p2, p2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    mul-float p2, p2, v2

    .line 368
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 370
    :goto_0
    iget-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a(F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    .line 298
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 303
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    :goto_1
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    :cond_2
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 255
    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 256
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    goto :goto_0

    .line 258
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    .line 262
    :goto_0
    iget-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method

.method public syncState()V
    .locals 3

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a(F)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$b;->a(F)V

    .line 236
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$b;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    :goto_1
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method
