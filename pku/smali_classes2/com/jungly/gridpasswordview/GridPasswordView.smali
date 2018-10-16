.class public Lcom/jungly/gridpasswordview/GridPasswordView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:[Ljava/lang/String;

.field private l:[Landroid/widget/TextView;

.field private m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

.field private n:Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;

.field private o:Landroid/text/method/PasswordTransformationMethod;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

.field private r:Landroid/text/TextWatcher;

.field private s:Landroid/view/View$OnKeyListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    .line 185
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$1;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$1;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$2;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$2;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    .line 224
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$3;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$3;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    .line 265
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$4;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$4;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->s:Landroid/view/View$OnKeyListener;

    .line 63
    invoke-direct {p0, p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    .line 185
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$1;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$1;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$2;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$2;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    .line 224
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$3;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$3;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    .line 265
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$4;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$4;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->s:Landroid/view/View$OnKeyListener;

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    .line 185
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$1;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$1;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$2;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$2;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    .line 224
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$3;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$3;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    .line 265
    new-instance v0, Lcom/jungly/gridpasswordview/GridPasswordView$4;

    invoke-direct {v0, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$4;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->s:Landroid/view/View$OnKeyListener;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p4, 0x10

    .line 44
    iput p4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    .line 185
    new-instance p4, Lcom/jungly/gridpasswordview/GridPasswordView$1;

    invoke-direct {p4, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$1;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object p4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    .line 207
    new-instance p4, Lcom/jungly/gridpasswordview/GridPasswordView$2;

    invoke-direct {p4, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$2;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object p4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    .line 224
    new-instance p4, Lcom/jungly/gridpasswordview/GridPasswordView$3;

    invoke-direct {p4, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$3;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object p4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    .line 265
    new-instance p4, Lcom/jungly/gridpasswordview/GridPasswordView$4;

    invoke-direct {p4, p0}, Lcom/jungly/gridpasswordview/GridPasswordView$4;-><init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    iput-object p4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->s:Landroid/view/View$OnKeyListener;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 193
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 194
    iget v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 195
    iget v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->c:I

    iget v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setShowDividers(I)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setOrientation(I)V

    .line 126
    new-instance v0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->o:Landroid/text/method/PasswordTransformationMethod;

    .line 127
    invoke-direct {p0, p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-direct {p0, p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/jungly/gridpasswordview/GridPasswordView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setFocusable(Z)V

    .line 201
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setFocusableInTouchMode(Z)V

    .line 202
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-virtual {v0}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->requestFocus()Z

    .line 203
    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 204
    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .line 131
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 132
    sget v0, Lcom/jungly/gridpasswordview/R$layout;->gridpasswordview:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 134
    sget v0, Lcom/jungly/gridpasswordview/R$id;->inputView:I

    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    .line 135
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iget v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setMaxEms(I)V

    .line 136
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setDelKeyEventListener(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;)V

    .line 138
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-direct {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setCustomAttr(Landroid/widget/TextView;)V

    .line 140
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v0, 0x1

    .line 143
    :goto_0
    iget v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    if-ge v0, v1, :cond_0

    .line 144
    sget v1, Lcom/jungly/gridpasswordview/R$layout;->divider:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 145
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->c:I

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    iget-object v5, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {p0, v1, v4}, Lcom/jungly/gridpasswordview/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    sget v1, Lcom/jungly/gridpasswordview/R$layout;->textview:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    invoke-direct {p0, v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->setCustomAttr(Landroid/widget/TextView;)V

    .line 151
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 152
    invoke-virtual {p0, v1, v3}, Lcom/jungly/gridpasswordview/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v3, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 89
    sget-object v0, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 91
    sget p3, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    .line 92
    iget-object p3, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x1060003

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    .line 94
    :cond_0
    sget p3, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvTextSize:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    int-to-float p3, p3

    .line 96
    invoke-static {p1, p3}, Lcom/jungly/gridpasswordview/Util;->px2sp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    .line 99
    :cond_1
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvLineWidth:I

    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v2, 0x1

    invoke-static {p3, v2}, Lcom/jungly/gridpasswordview/Util;->dp2px(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->c:I

    .line 100
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvLineColor:I

    const p3, -0x55777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->d:I

    .line 101
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvGridColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->e:I

    .line 102
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvLineColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 104
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget p3, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->d:I

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->g:Landroid/graphics/drawable/Drawable;

    .line 107
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvPasswordLength:I

    const/4 p3, 0x6

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    .line 108
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvPasswordTransformation:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u25cf"

    .line 110
    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    .line 113
    :cond_3
    sget p1, Lcom/jungly/gridpasswordview/R$styleable;->gridPasswordView_gpvPasswordType:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->j:I

    .line 115
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    .line 118
    iget p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->n:Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getPassWord()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->n:Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;

    invoke-interface {v1, v0}, Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->h:I

    if-ne v1, v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->n:Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;

    invoke-interface {v1, v0}, Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;->onInputFinish(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/jungly/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/jungly/gridpasswordview/GridPasswordView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->c()V

    return-void
.end method

.method static synthetic e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    return-object p0
.end method

.method static synthetic f(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->q:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    return-object p0
.end method

.method private getPassWordVisibility()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setCustomAttr(Landroid/widget/TextView;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    :cond_0
    iget v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x12

    .line 167
    iget v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->j:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xe1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x91

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x81

    .line 181
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 182
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->o:Landroid/text/method/PasswordTransformationMethod;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setError(Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-virtual {v0, p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 3

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 335
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 321
    :goto_0
    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 298
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 299
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "passwordArr"

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    const-string v0, "instanceState"

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getPassWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setPassword(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->m:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 291
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "passwordArr"

    .line 292
    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    return-void
.end method

.method public setOnPasswordChangedListener(Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->n:Lcom/jungly/gridpasswordview/GridPasswordView$OnPasswordChangedListener;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->clearPassword()V

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    .line 350
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 353
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setPasswordType(Lcom/jungly/gridpasswordview/PasswordType;)V
    .locals 5

    .line 398
    invoke-direct {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getPassWordVisibility()Z

    move-result v0

    .line 400
    sget-object v1, Lcom/jungly/gridpasswordview/GridPasswordView$5;->a:[I

    invoke-virtual {p1}, Lcom/jungly/gridpasswordview/PasswordType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x12

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xe1

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x91

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x81

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 416
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setInputType(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setPasswordVisibility(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPasswordVisibility(Z)V
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->l:[Landroid/widget/TextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 364
    :cond_0
    iget-object v4, p0, Lcom/jungly/gridpasswordview/GridPasswordView;->o:Landroid/text/method/PasswordTransformationMethod;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 365
    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 366
    check-cast v3, Landroid/widget/EditText;

    .line 367
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public togglePasswordVisibility()V
    .locals 1

    .line 377
    invoke-direct {p0}, Lcom/jungly/gridpasswordview/GridPasswordView;->getPassWordVisibility()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 378
    invoke-virtual {p0, v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->setPasswordVisibility(Z)V

    return-void
.end method
