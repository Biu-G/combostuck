.class public Lcn/edu/pku/pkurunner/Permission/PermissionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private a(Landroid/widget/TextView;ILjava/lang/Boolean;)V
    .locals 2

    .line 76
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0f008f

    goto :goto_0

    :cond_0
    const p3, 0x7f0f008e

    .line 75
    :goto_0
    invoke-virtual {p0, p3}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p2, v0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 p2, 0x65

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$SkQ8vPMt0SrxekKVwWeQeRrnkpE(Lcn/edu/pku/pkurunner/Permission/PermissionDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$uMw_izKjp_lceqD5hXE91yIiEb4(Lcn/edu/pku/pkurunner/Permission/PermissionDialog;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->a(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$ymTmgntY77MvroQb-BnaEs68OV0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 28
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0036

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->j:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 33
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->j:Landroid/view/View;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->j:Landroid/view/View;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    iget-object v2, p0, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->j:Landroid/view/View;

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    .line 39
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 40
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 41
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f0f008c

    .line 43
    invoke-direct {p0, v0, v5, v3}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->a(Landroid/widget/TextView;ILjava/lang/Boolean;)V

    const v0, 0x7f0f008d

    .line 44
    invoke-direct {p0, v1, v0, v6}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->a(Landroid/widget/TextView;ILjava/lang/Boolean;)V

    const v0, 0x7f0f008a

    .line 45
    invoke-direct {p0, v2, v0, v4}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->a(Landroid/widget/TextView;ILjava/lang/Boolean;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0f008b

    .line 56
    new-instance v2, Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$SkQ8vPMt0SrxekKVwWeQeRrnkpE;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$SkQ8vPMt0SrxekKVwWeQeRrnkpE;-><init>(Lcn/edu/pku/pkurunner/Permission/PermissionDialog;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0087

    .line 57
    new-instance v2, Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$uMw_izKjp_lceqD5hXE91yIiEb4;

    invoke-direct {v2, p0, v0}, Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$uMw_izKjp_lceqD5hXE91yIiEb4;-><init>(Lcn/edu/pku/pkurunner/Permission/PermissionDialog;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v3, 0x8

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    const v0, 0x7f0f0088

    .line 68
    sget-object v1, Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$ymTmgntY77MvroQb-BnaEs68OV0;->INSTANCE:Lcn/edu/pku/pkurunner/Permission/-$$Lambda$PermissionDialog$ymTmgntY77MvroQb-BnaEs68OV0;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
