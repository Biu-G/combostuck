.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroup$a;,
        Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;,
        Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->d:I

    .line 70
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    const v1, 0x7fffffff

    .line 72
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->f:I

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

    .line 76
    new-instance v2, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Landroid/support/v4/util/SimpleArrayMap;

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Landroid/os/Handler;

    .line 79
    new-instance v2, Landroid/support/v7/preference/PreferenceGroup$1;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/PreferenceGroup$1;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->i:Ljava/lang/Runnable;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    .line 93
    sget-object v2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget p3, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 97
    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    .line 100
    sget p2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    sget p2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    sget p3, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onPrepareForRemoval()V

    .line 287
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->h:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 314
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 315
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addItemFromInflater(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    .line 210
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 215
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "PreferenceGroup"

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found duplicated key: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". This can cause unintended behaviour,"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " please use unique keys for every preference."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_4

    .line 227
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    if-eqz v0, :cond_3

    .line 228
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroup;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/preference/PreferenceGroup;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 231
    :cond_3
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    .line 234
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 238
    :cond_4
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 243
    :cond_5
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_6
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 254
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 255
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 256
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroup;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->a()J

    move-result-wide v3

    .line 260
    :goto_1
    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;J)V

    .line 261
    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 263
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 267
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return v1

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d()V
    .locals 1

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 487
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 476
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 481
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 361
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 368
    :cond_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 369
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 370
    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInitialExpandedChildrenCount()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroup;->f:I

    return v0
.end method

.method public getOnExpandButtonClickListener()Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

    return-object v0
.end method

.method public getPreference(I)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    return-object p1
.end method

.method public getPreferenceCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3

    .line 458
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 462
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .line 429
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onAttached()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .line 444
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->e:Z

    .line 450
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onDetached()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/PreferenceGroup$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    check-cast p1, Landroid/support/v7/preference/PreferenceGroup$a;

    .line 510
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroup$a;->a:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroup;->f:I

    .line 511
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 506
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 498
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/support/v7/preference/PreferenceGroup$a;

    iget v2, p0, Landroid/support/v7/preference/PreferenceGroup;->f:I

    invoke-direct {v1, v0, v2}, Landroid/support/v7/preference/PreferenceGroup$a;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public removeAll()V
    .locals 3

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->b:Ljava/util/List;

    .line 324
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 325
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroup;->a(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 327
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePreference(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->a(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    .line 280
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return p1
.end method

.method public setInitialExpandedChildrenCount(I)V
    .locals 3

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PreferenceGroup"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroup;->f:I

    return-void
.end method

.method public setOnExpandButtonClickListener(Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;)V
    .locals 0
    .param p1    # Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 411
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroup;->g:Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->c:Z

    return-void
.end method
