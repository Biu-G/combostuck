.class Landroid/support/graphics/drawable/VectorDrawableCompat$g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1006
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 1007
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1113
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$g;)V
    .locals 3

    .line 1024
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1006
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 1007
    sget-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 1026
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->a:I

    .line 1027
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 1028
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/graphics/Paint;

    .line 1031
    :cond_0
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v2, v2, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:Landroid/graphics/Paint;

    .line 1034
    :cond_1
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    .line 1035
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    .line 1036
    iget-boolean p1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->e:Z

    iput-boolean p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .line 1055
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1059
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 1060
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    .line 1061
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1063
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1064
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1065
    iget-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->l:Landroid/graphics/Paint;

    return-object p1
.end method

.method public a(II)V
    .locals 3

    .line 1069
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1070
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1071
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 2

    .line 1043
    invoke-virtual {p0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    .line 1044
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 1048
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a([I)Z
    .locals 1

    .line 1138
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a([I)Z

    move-result p1

    .line 1139
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->k:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->k:Z

    return p1
.end method

.method public b(II)V
    .locals 1

    .line 1075
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1076
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 1078
    iput-boolean p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->k:Z

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1092
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->j:Z

    iget-boolean v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->e:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->i:I

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 1096
    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1105
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->g:Landroid/content/res/ColorStateList;

    .line 1106
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1107
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->i:I

    .line 1108
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->e:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->j:Z

    const/4 v0, 0x0

    .line 1109
    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->k:Z

    return-void
.end method

.method public c(II)Z
    .locals 1

    .line 1084
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->f:Landroid/graphics/Bitmap;

    .line 1085
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1130
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1119
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$g;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1125
    new-instance p1, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {p1, p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$g;)V

    return-object p1
.end method