.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Landroid/widget/SeekBar;

.field e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private k:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->k:Landroid/view/View$OnKeyListener;

    .line 124
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    .line 133
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    .line 134
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 135
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->e:Z

    .line 136
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->i:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    .line 264
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    if-ge p1, v0, :cond_0

    .line 265
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    .line 267
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    if-le p1, v0, :cond_1

    .line 268
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    .line 271
    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    if-eq p1, v0, :cond_3

    .line 272
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    .line 273
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method a(Landroid/widget/SeekBar;)V
    .locals 2

    .line 293
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    if-eq v0, v1, :cond_1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->a(IZ)V

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 248
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 284
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    return v0
.end method

.method public isAdjustable()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->e:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 155
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->k:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    .line 157
    sget v0, Landroid/support/v7/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 158
    iget-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->i:Z

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 165
    :goto_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 175
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    .line 181
    :goto_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->d:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 328
    :cond_0
    check-cast p1, Landroid/support/v7/preference/SeekBarPreference$a;

    .line 329
    invoke-virtual {p1}, Landroid/support/v7/preference/SeekBarPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$a;->a:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    .line 331
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$a;->b:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    .line 332
    iget p1, p1, Landroid/support/v7/preference/SeekBarPreference$a;->c:I

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    .line 333
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$a;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 313
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->a:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$a;->a:I

    .line 314
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$a;->b:I

    .line 315
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$a;->c:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 193
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    return-void
.end method

.method public setAdjustable(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->e:Z

    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 216
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    if-ge p1, v0, :cond_0

    .line 217
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    .line 219
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    if-eq p1, v0, :cond_1

    .line 220
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 202
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    if-le p1, v0, :cond_0

    .line 203
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    .line 205
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    if-eq p1, v0, :cond_1

    .line 206
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    .line 207
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2

    .line 241
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    if-eq p1, v0, :cond_0

    .line 242
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->f:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->a(IZ)V

    return-void
.end method
