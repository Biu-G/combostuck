.class public Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/util/Timer;


# instance fields
.field c:I

.field d:Z

.field e:Z

.field final f:I

.field final g:I

.field h:Z

.field i:Z

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/EditText;

.field n:Landroid/widget/EditText;

.field o:Landroid/widget/EditText;

.field p:Landroid/widget/LinearLayout;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    iput-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->d:Z

    iput-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->e:Z

    const/16 v1, 0x7d0

    iput v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->f:I

    const/16 v1, 0x3c

    iput v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->g:I

    iput-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    iput-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    return-void
.end method

.method static a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/edu/pku/pkuiaaa_android/R$string;->error:I

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcn/edu/pku/pkuiaaa_android/R$string;->ok:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static b(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const-string v1, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method static b(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/edu/pku/pkuiaaa_android/R$string;->notice:I

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcn/edu/pku/pkuiaaa_android/R$string;->ok:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Landroid/widget/TextView;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcn/edu/pku/pkuiaaa_android/R$layout;->activity_login:I

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->setContentView(I)V

    invoke-virtual {p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "iAAA_APPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    const-string v0, "iAAA_UID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    sget-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "NA"

    sput-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    :cond_1
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    iput-boolean p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    iput-boolean p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->e:Z

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->s:Ljava/lang/String;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->login:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->j:Landroid/widget/TextView;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->k:Landroid/widget/TextView;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->sendcodes:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->userName:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->passwd:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->n:Landroid/widget/EditText;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->msgcodes:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    sget v0, Lcn/edu/pku/pkuiaaa_android/R$id;->msgcodecontainer:I

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->p:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->p:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->hint_msgcode:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->hint_otpcode:I

    goto :goto_1

    :goto_2
    iget-boolean p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->d:Z

    if-eqz p1, :cond_8

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$1;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$1;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    if-eqz p1, :cond_7

    sget-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_7
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    sput-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    new-instance v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    sget-object v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_8
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->j:Landroid/widget/TextView;

    new-instance v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->k:Landroid/widget/TextView;

    new-instance v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    new-instance v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcn/edu/pku/pkuiaaa_android/R$id;->cc_link:I

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$6;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$6;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
