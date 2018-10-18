.class public Landroid/support/v7/widget/AppCompatImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/TintableImageSourceView;


# instance fields
.field private final a:Landroid/support/v7/widget/d;

.field private final b:Landroid/support/v7/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget v0, Landroid/support/v7/appcompat/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p1, Landroid/support/v7/widget/d;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    .line 76
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/d;->a(Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 79
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 241
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->c()V

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->d()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 208
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 236
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->a(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatImageHelper;->d()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatImageHelper;->d()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 107
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatImageHelper;->d()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->a:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageButton;->b:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
