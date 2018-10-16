.class public Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/app/ProgressDialog;

.field private h:Z

.field private i:Landroid/support/design/widget/FloatingActionButton;

.field private j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

.field private k:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    .line 185
    new-array v0, v0, [I

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 187
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    .line 188
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 189
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private a()V
    .locals 6

    .line 240
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    if-nez v0, :cond_1

    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 249
    :cond_2
    iget-object v3, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    const-string v4, "upload"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    invoke-direct {p0, v2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "upload"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v3, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    const-string v4, "detail"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    invoke-direct {p0, v2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "detail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 255
    :cond_4
    iget-object v3, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    const-string v4, "remove"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    invoke-direct {p0, v2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "remove"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic a(IILio/reactivex/ObservableEmitter;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$mlk9nSj7ZZaM3ZureOt-VeBxe34;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$mlk9nSj7ZZaM3ZureOt-VeBxe34;-><init>(Lio/reactivex/ObservableEmitter;)V

    const v0, 0x7f0f00a5

    .line 440
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$h7VLAP3EbQevTCixNBDsGTBLlv8;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$h7VLAP3EbQevTCixNBDsGTBLlv8;-><init>(Lio/reactivex/ObservableEmitter;)V

    const v0, 0x7f0f00a6

    .line 441
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$WcKxupi8HDUefNcEiWVD0VgWIhM;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$WcKxupi8HDUefNcEiWVD0VgWIhM;-><init>(Lio/reactivex/ObservableEmitter;)V

    const v0, 0x7f0f00a4

    .line 442
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 443
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$RAu_qBYKcaoYcY26FWPDzoLyNjk;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$RAu_qBYKcaoYcY26FWPDzoLyNjk;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 444
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic a(Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V
    .locals 0

    .line 151
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    if-ne p2, p1, :cond_0

    .line 152
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    .line 153
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    .line 156
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->show()V

    :goto_0
    return-void
.end method

.method private synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->l:Lio/reactivex/ObservableEmitter;

    .line 366
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;->LaunchIaaaLogin(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 0

    .line 444
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Cancelled:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 442
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Ignored:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/io/File;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->k:Lio/reactivex/ObservableEmitter;

    .line 374
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cn.edu.pku.pkurunner.fileprovider"

    invoke-static {v0, v1, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "output"

    .line 380
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x25a

    .line 381
    invoke-virtual {p0, p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f00a3

    const/4 p2, 0x0

    .line 384
    new-array v0, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->makeToast(II[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a()V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z
    .locals 2

    .line 193
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 198
    :cond_0
    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    const v0, 0x7f0f00b4

    .line 199
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00b1

    .line 200
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {p2, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const v0, 0x7f0600ca

    .line 202
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    .line 196
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return v0
.end method

.method private synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    .line 108
    iget-boolean p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->h:Z

    return p1
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->h:Z

    return p1
.end method

.method private synthetic b()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->syncData()V

    return-void
.end method

.method private synthetic b(IILio/reactivex/ObservableEmitter;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$DQ8o6bED8JI-TGCrSyA15byCudE;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$DQ8o6bED8JI-TGCrSyA15byCudE;-><init>(Lio/reactivex/ObservableEmitter;)V

    const v0, 0x7f0f00a0

    .line 426
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$RpVtHQDdYGefaoyWmQwXibjhsns;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$RpVtHQDdYGefaoyWmQwXibjhsns;-><init>(Lio/reactivex/ObservableEmitter;)V

    const v0, 0x7f0f009f

    .line 427
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 428
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$5RNy7hkCkUPVsrhi93ulTT0YQ6M;

    invoke-direct {p2, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$5RNy7hkCkUPVsrhi93ulTT0YQ6M;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 429
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 430
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/MainActivity;->switchFromRecordListToRunning()V

    return-void
.end method

.method private static synthetic b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 429
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 441
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->UseLast:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z
    .locals 2

    .line 208
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->x()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    instance-of p2, p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    if-nez p2, :cond_1

    return v1

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    const v0, 0x7f0f00b3

    .line 215
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00b0

    .line 216
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {p2, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const v0, 0x7f060020

    .line 218
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    .line 212
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return v0
.end method

.method private static synthetic c(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 440
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->RecentShot:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/app/Activity;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)Z
    .locals 2

    .line 224
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->y()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    instance-of p2, p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    if-nez p2, :cond_1

    return v1

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    const v0, 0x7f0f00b5

    .line 231
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00b2

    .line 232
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {p2, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const v0, 0x7f060156

    .line 234
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p2, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p2

    .line 228
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return v0
.end method

.method private static synthetic d(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 427
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic e(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 426
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$2_jadwxMxQkupQsYWZ8ugWCvtBU(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$5RNy7hkCkUPVsrhi93ulTT0YQ6M(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$7JHgrCtvvhvanJirlaNIakVOG7U(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$DQ8o6bED8JI-TGCrSyA15byCudE(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->e(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$FQ1LcRhvqG-aL6fjaFjsWIFENAg(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V

    return-void
.end method

.method public static synthetic lambda$FTQqkE6f5LX14i_1kDHo_6z-vB0(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$Fpz6u7OHey836VZ5BEQXMs9L9ec(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$PH3_rWlJTPOOXYd3Lg15zBEZCKI(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;IILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b(IILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$RAu_qBYKcaoYcY26FWPDzoLyNjk(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$RpVtHQDdYGefaoyWmQwXibjhsns(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->d(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$WcKxupi8HDUefNcEiWVD0VgWIhM(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$akelyonT8UB7hdjqP5ps42WmuyU(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cJejWE1zxlgfwArr_gIUEWbEM34(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;IILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(IILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$h7VLAP3EbQevTCixNBDsGTBLlv8(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$mlk9nSj7ZZaM3ZureOt-VeBxe34(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$oLtmdi0vOYLEdIK325A1aPkiUUc(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Ljava/io/File;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Ljava/io/File;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$q071HHex3zSQefczNWW_1f9Nyk8(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b()V

    return-void
.end method


# virtual methods
.method public callSystemCamera(Ljava/io/File;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;

    invoke-direct {v0, p0, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Ljava/io/File;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 386
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public cancelRefresh()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public dismissWaitDialog()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public getExternalPhotoDir()Ljava/io/File;
    .locals 2

    .line 391
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->PicutreType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/MainActivity;

    return-object v0
.end method

.method public getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;
    .locals 1

    .line 302
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    return-object v0
.end method

.method public launchIaaaLogin()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 364
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$FTQqkE6f5LX14i_1kDHo_6z-vB0;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$FTQqkE6f5LX14i_1kDHo_6z-vB0;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 367
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs makeSnackBar(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 312
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public varargs makeToast(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 307
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x25a

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x673

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, v2, :cond_2

    .line 403
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "iAAA_RESULT"

    .line 404
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cancel"

    .line 405
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 406
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->l:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    const p3, 0x7f0f00a1

    invoke-virtual {p0, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p2, "iAAA_UID"

    .line 408
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "iAAA_TOKEN"

    .line 409
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    iget-object p3, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->l:Lio/reactivex/ObservableEmitter;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->l:Lio/reactivex/ObservableEmitter;

    new-instance p2, Ljava/lang/Throwable;

    const p3, 0x7f0f00a2

    invoke-virtual {p0, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 415
    :goto_0
    iput-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->l:Lio/reactivex/ObservableEmitter;

    goto :goto_2

    .line 398
    :cond_3
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->k:Lio/reactivex/ObservableEmitter;

    if-ne p2, v2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 399
    iput-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->k:Lio/reactivex/ObservableEmitter;

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 167
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0003

    .line 168
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0c0038

    .line 103
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const p2, 0x7f090092

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 106
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x3

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 107
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$q071HHex3zSQefczNWW_1f9Nyk8;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$q071HHex3zSQefczNWW_1f9Nyk8;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 108
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->b:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$7JHgrCtvvhvanJirlaNIakVOG7U;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$7JHgrCtvvhvanJirlaNIakVOG7U;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V

    .line 110
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const p2, 0x7f090091

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 111
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const/4 p2, 0x1

    .line 113
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 129
    new-instance v0, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 130
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080084

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 133
    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    invoke-direct {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;-><init>()V

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    .line 134
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$t4ycrjoQCXH1mYMIvLDXTexLCgs;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$t4ycrjoQCXH1mYMIvLDXTexLCgs;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-virtual {p2, v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->setPresenter(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;)V

    .line 135
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->c:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$2_jadwxMxQkupQsYWZ8ugWCvtBU;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$2_jadwxMxQkupQsYWZ8ugWCvtBU;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    new-instance v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$t4ycrjoQCXH1mYMIvLDXTexLCgs;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$t4ycrjoQCXH1mYMIvLDXTexLCgs;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-direct {p2, v0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback;-><init>(Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$a;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;)V

    .line 139
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 142
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const p2, 0x7f090094

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->d:Landroid/widget/TextView;

    .line 143
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const p2, 0x7f090090

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->f:Landroid/widget/ImageView;

    .line 144
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const p2, 0x7f090093

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->e:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f090142

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    .line 147
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->i:Landroid/support/design/widget/FloatingActionButton;

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$akelyonT8UB7hdjqP5ps42WmuyU;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$akelyonT8UB7hdjqP5ps42WmuyU;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f090140

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 150
    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$FQ1LcRhvqG-aL6fjaFjsWIFENAg;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$FQ1LcRhvqG-aL6fjaFjsWIFENAg;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    invoke-direct {p2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;)V

    invoke-virtual {p1, p2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 160
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "GuideActivity"

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    .line 162
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f06012f
        0x7f0600ae
        0x7f060036
    .end array-data
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 263
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 269
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "newRecord"

    .line 271
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "newRecord"

    .line 272
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-interface {v0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->start(Z)V

    const/4 p1, 0x1

    .line 276
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 277
    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 278
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$Fpz6u7OHey836VZ5BEQXMs9L9ec;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$Fpz6u7OHey836VZ5BEQXMs9L9ec;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V

    .line 279
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090060

    if-eq v0, v1, :cond_0

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 177
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "upload"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "detail"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "remove"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 287
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "newRecord"

    .line 289
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "newRecord"

    .line 290
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->start(Z)V

    return-void
.end method

.method public scrollRecyclerViewToTop()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    .line 496
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setPresenter(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;)V
    .locals 0
    .param p1    # Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->j:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    check-cast p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->setPresenter(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;)V

    return-void
.end method

.method public setWaitingDialogMessage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 334
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showConfirmDialog(II)Lio/reactivex/Observable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;

    invoke-direct {v0, p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;II)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 432
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public showPhotoDialog(II)Lio/reactivex/Observable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$cJejWE1zxlgfwArr_gIUEWbEM34;

    invoke-direct {v0, p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$cJejWE1zxlgfwArr_gIUEWbEM34;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;II)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 446
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public showRecordDetailSheet(Landroid/os/Bundle;)V
    .locals 2

    .line 357
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;-><init>()V

    .line 358
    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 359
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "Record Detail Fragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/BottomSheetDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showWaitingDialog()V
    .locals 2

    .line 325
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    .line 326
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 327
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 328
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 329
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public toggleLoadingNotice(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public toggleNoDataNotice(Z)V
    .locals 4

    .line 346
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
