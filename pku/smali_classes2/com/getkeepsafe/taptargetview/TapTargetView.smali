.class public Lcom/getkeepsafe/taptargetview/TapTargetView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Landroid/text/SpannableStringBuilder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field G:Landroid/text/DynamicLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field H:Landroid/text/TextPaint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field I:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field J:Landroid/graphics/Rect;

.field K:Landroid/graphics/Rect;

.field L:Landroid/graphics/Path;

.field M:F

.field N:I

.field O:[I

.field P:I

.field Q:F

.field R:I

.field S:F

.field T:I

.field U:I

.field V:I

.field W:F

.field final a:I

.field aa:F

.field ab:I

.field ac:I

.field ad:Landroid/graphics/Bitmap;

.field ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

.field af:Landroid/view/ViewOutlineProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final ag:Lcom/getkeepsafe/taptargetview/a$b;

.field final ah:Landroid/animation/ValueAnimator;

.field final ai:Landroid/animation/ValueAnimator;

.field final aj:Landroid/animation/ValueAnimator;

.field private ak:Z

.field private al:Z

.field private am:Z

.field private final an:Landroid/animation/ValueAnimator;

.field private ao:[Landroid/animation/ValueAnimator;

.field private final ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field final l:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final m:Landroid/view/ViewManager;

.field final n:Lcom/getkeepsafe/taptargetview/TapTarget;

.field final o:Landroid/graphics/Rect;

.field final p:Landroid/text/TextPaint;

.field final q:Landroid/text/TextPaint;

.field final r:Landroid/graphics/Paint;

.field final s:Landroid/graphics/Paint;

.field final t:Landroid/graphics/Paint;

.field final u:Landroid/graphics/Paint;

.field v:Ljava/lang/CharSequence;

.field w:Landroid/text/StaticLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field x:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field y:Landroid/text/StaticLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V
    .locals 7
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 374
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    .line 71
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    .line 226
    new-instance v2, Lcom/getkeepsafe/taptargetview/TapTargetView$1;

    invoke-direct {v2, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ag:Lcom/getkeepsafe/taptargetview/a$b;

    .line 262
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    const-wide/16 v3, 0xfa

    .line 263
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->b(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->a(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 265
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$6;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$6;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 266
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$5;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$5;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 272
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    .line 280
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    const-wide/16 v5, 0x3e8

    .line 281
    invoke-virtual {v2, v5, v6}, Lcom/getkeepsafe/taptargetview/a;->b(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    const/4 v5, -0x1

    .line 282
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(I)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 283
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$7;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$7;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 284
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    .line 302
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2, v1}, Lcom/getkeepsafe/taptargetview/a;-><init>(Z)V

    .line 303
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->b(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 304
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$9;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$9;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 305
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$8;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$8;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 311
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    .line 320
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    .line 321
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->b(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 322
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->a(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Lcom/getkeepsafe/taptargetview/TapTargetView$11;

    invoke-direct {v3, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$11;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 323
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Lcom/getkeepsafe/taptargetview/TapTargetView$10;

    invoke-direct {v3, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$10;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 340
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->a(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->a()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    .line 349
    new-array v2, v2, [Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ao:[Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1

    .line 377
    iput-object p4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 378
    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->m:Landroid/view/ViewManager;

    .line 379
    iput-object p3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->l:Landroid/view/ViewGroup;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance p5, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-direct {p5}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    .line 381
    iget-object p2, p4, Lcom/getkeepsafe/taptargetview/TapTarget;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->v:Ljava/lang/CharSequence;

    .line 382
    iget-object p2, p4, Lcom/getkeepsafe/taptargetview/TapTarget;->b:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    const/16 p2, 0x14

    .line 384
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    const/16 p5, 0x28

    .line 385
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    .line 386
    iget v2, p4, Lcom/getkeepsafe/taptargetview/TapTarget;->d:I

    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    .line 387
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    const/16 p5, 0x8

    .line 388
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    const/16 v2, 0x168

    .line 389
    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->f:I

    .line 390
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    const/16 p2, 0x58

    .line 391
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    .line 392
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    .line 393
    invoke-static {p1, v1}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    const p2, 0x3dcccccd    # 0.1f

    .line 394
    iget p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float p5, p5

    mul-float p5, p5, p2

    float-to-int p2, p5

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->c:I

    .line 396
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    .line 397
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 398
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    .line 400
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    .line 401
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->f(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 402
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    const-string p5, "sans-serif-medium"

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 403
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 405
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    .line 406
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->g(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 407
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 408
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 409
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    const/16 p5, 0x89

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 411
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    .line 412
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 413
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    iget p5, p4, Lcom/getkeepsafe/taptargetview/TapTarget;->c:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p5, p5, v0

    float-to-int p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 415
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    .line 416
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 417
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    const/16 p5, 0x32

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 418
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 419
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    iget p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    const/high16 p5, -0x1000000

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    .line 423
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 425
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    .line 426
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 428
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->applyTargetOptions(Landroid/content/Context;)V

    .line 430
    new-instance p2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    invoke-direct {p2, p0, p4, p3, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$12;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;Lcom/getkeepsafe/taptargetview/TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 475
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 477
    invoke-virtual {p0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setFocusableInTouchMode(Z)V

    .line 478
    invoke-virtual {p0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setClickable(Z)V

    .line 479
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$2;

    invoke-direct {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$2;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$3;

    invoke-direct {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$3;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    return p0
.end method

.method static synthetic a(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    return p1
.end method

.method static synthetic b(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    return p0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 9

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v7, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v1, 0x1020002

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    .line 166
    new-instance v8, Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V

    .line 167
    invoke-virtual {v0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 8

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "window"

    .line 180
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 181
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x2

    .line 182
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    .line 183
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x0

    .line 184
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800033

    .line 185
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 186
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 187
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    .line 188
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 189
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 191
    new-instance v7, Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V

    .line 192
    invoke-interface {p0, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(IIII)D
    .locals 4

    sub-int/2addr p3, p1

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 994
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p4, p2

    int-to-double p1, p4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    return p1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    div-float/2addr v1, v0

    return v1
.end method

.method a(FF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    div-float/2addr p1, v0

    return p1
.end method

.method a(IILandroid/graphics/Rect;)I
    .locals 7

    .line 986
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v0

    .line 987
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v2

    .line 988
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v4

    .line 989
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide p1

    .line 990
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method a(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 902
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 903
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    .line 904
    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 905
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, p4, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p4, v1

    .line 906
    invoke-virtual {v2, p4, p4}, Landroid/graphics/Rect;->inset(II)V

    .line 908
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IILandroid/graphics/Rect;)I

    move-result p3

    .line 909
    invoke-virtual {p0, p1, p2, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IILandroid/graphics/Rect;)I

    move-result p1

    .line 910
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    add-int/2addr p1, p2

    return p1
.end method

.method a()V
    .locals 6

    .line 831
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    .line 832
    iget-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->B:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-void

    .line 839
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    .line 841
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 842
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    .line 843
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 842
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 844
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 845
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 833
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 764
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    .line 765
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 766
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 767
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 768
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x6

    :goto_0
    if-lez v1, :cond_0

    .line 771
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    int-to-float v5, v1

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 772
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    rsub-int/lit8 v7, v1, 0x7

    iget v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    mul-int v7, v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .line 998
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidate(Landroid/graphics/Rect;)V

    .line 999
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 5

    .line 612
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    const/4 v1, 0x1

    .line 615
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    .line 617
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ao:[Landroid/animation/ValueAnimator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 618
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 619
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v1, v2}, Lcom/getkeepsafe/taptargetview/f;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 623
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    .line 625
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-virtual {v0, p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetDismissed(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V

    :cond_2
    return-void
.end method

.method a(I)Z
    .locals 4

    .line 978
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 979
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 981
    :cond_2
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected applyTargetOptions(Landroid/content/Context;)V
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->l:Z

    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->B:Z

    .line 519
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->j:Z

    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    .line 520
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->k:Z

    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    .line 524
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->m:Z

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;

    invoke-direct {v0, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$4;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    .line 540
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 541
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setElevation(F)V

    .line 544
    :cond_0
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_1

    .line 545
    invoke-virtual {p0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 547
    invoke-virtual {p0, v0, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 550
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const-string v2, "isLightTheme"

    .line 551
    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    .line 553
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v1, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 555
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    const-string v1, "colorPrimary"

    invoke-static {p1, v1}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    :goto_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_5

    .line 564
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    if-eqz v3, :cond_6

    const/high16 v3, -0x1000000

    goto :goto_3

    :cond_6
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    :goto_4
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->m:Z

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 573
    :cond_7
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 577
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v0, v3}, Lcom/getkeepsafe/taptargetview/d;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    goto :goto_5

    .line 579
    :cond_8
    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    .line 582
    :goto_5
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 584
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    .line 586
    :cond_9
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v1, -0x1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 589
    :goto_7
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTarget;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 591
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8

    .line 593
    :cond_b
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 596
    :goto_8
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTarget;->g:Landroid/graphics/Typeface;

    if-eqz p1, :cond_c

    .line 597
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->g:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 600
    :cond_c
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTarget;->h:Landroid/graphics/Typeface;

    if-eqz p1, :cond_d

    .line 601
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTarget;->h:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_d
    return-void
.end method

.method b()V
    .locals 10

    .line 849
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    .line 854
    :cond_0
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->v:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    .line 857
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 858
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 861
    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    :goto_0
    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 12

    .line 778
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    .line 780
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 781
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 782
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/getkeepsafe/taptargetview/d;->a(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 786
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    .line 787
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 788
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/getkeepsafe/taptargetview/d;->b(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 793
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 794
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 795
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v4, v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 796
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v4, v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 797
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 800
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    .line 802
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nTarget bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 803
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nCenter: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nView size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nTarget bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 806
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 808
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_2

    .line 809
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 812
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 815
    :goto_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    if-nez v0, :cond_3

    .line 816
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    .line 819
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    const/16 v4, 0xdc

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v1, 0x0

    .line 822
    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 823
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 824
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 825
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 827
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method c()V
    .locals 4

    .line 882
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    .line 883
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getOuterCircleCenterPoint()[I

    move-result-object v0

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    .line 884
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    return-void
.end method

.method d()V
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 894
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 895
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 897
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    .line 741
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 742
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method getOuterCircleCenterPoint()[I
    .locals 9

    .line 933
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 934
    new-array v0, v3, [I

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, v3

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v0, v4

    .line 938
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextHeight()I

    move-result v4

    .line 940
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 942
    :goto_0
    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 943
    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 944
    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_1
    if-eqz v5, :cond_3

    .line 945
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 946
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v5, v8

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 948
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v4, v5

    add-int v5, v4, v7

    .line 950
    :goto_2
    new-array v4, v3, [I

    add-int/2addr v6, v0

    div-int/2addr v6, v3

    aput v6, v4, v2

    aput v5, v4, v1

    return-object v4
.end method

.method getTextBounds()Landroid/graphics/Rect;
    .locals 6

    .line 914
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextHeight()I

    move-result v0

    .line 915
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextWidth()I

    move-result v1

    .line 917
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 919
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v2, v3

    .line 925
    :goto_0
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 926
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    .line 927
    :goto_1
    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 928
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 929
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method getTotalTextHeight()I
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    add-int/2addr v0, v1

    return v0

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method getTotalTextWidth()I
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 607
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 632
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 634
    :cond_0
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    if-lez v0, :cond_1

    .line 635
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 638
    :cond_1
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 639
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 644
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_3

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 647
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 648
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Landroid/graphics/Canvas;)V

    .line 650
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 654
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->T:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 655
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    if-lez v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 666
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 667
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    .line 668
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 671
    :cond_5
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    .line 672
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 673
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget v3, v3, Lcom/getkeepsafe/taptargetview/TapTarget;->n:F

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 674
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 677
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 679
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 682
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 683
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 682
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 684
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 685
    :cond_7
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 686
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 687
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 686
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 688
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 689
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTarget;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 692
    :cond_8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 694
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    if-eqz v0, :cond_9

    .line 695
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->b(Landroid/graphics/Canvas;)V

    :cond_9
    return-void

    :cond_a
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 709
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 718
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 719
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 720
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    .line 722
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    if-eqz p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-virtual {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    goto :goto_0

    .line 725
    :cond_0
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;

    invoke-direct {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;-><init>()V

    invoke-virtual {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->W:F

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aa:F

    .line 703
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawDebug(Z)V
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    if-eq v0, p1, :cond_0

    .line 753
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    .line 754
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->postInvalidate()V

    :cond_0
    return-void
.end method
