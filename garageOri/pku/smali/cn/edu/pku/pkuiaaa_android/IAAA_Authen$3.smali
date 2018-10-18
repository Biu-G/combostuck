.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;)V
    .locals 0

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-static {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/app/Activity;)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object p1, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v2, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->e:Z

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v2, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v2, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    :cond_2
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->enter_msgcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object v1, v3, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->s:Ljava/lang/String;

    goto/16 :goto_3

    :catch_0
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_msgcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_msgcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_6
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->enter_otpcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_8

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_otpcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_9
    :goto_2
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_otpcode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_a
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    const-string v3, ""

    iput-object v3, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->s:Ljava/lang/String;

    :goto_3
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object p1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object v0, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->r:Ljava/lang/String;

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1, v2}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-static {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->e:Z

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v2, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v2, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    :try_start_2
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    sget-object v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/edu/pku/pkuiaaa_android/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_d

    :try_start_3
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-eqz v0, :cond_b

    const-string v0, "SMS"

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    if-eqz v0, :cond_c

    const-string v0, "OTP"

    goto :goto_4

    :cond_c
    const-string v0, ""

    :goto_4
    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v2, v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    iget-object v4, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v4, v4, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->r:Ljava/lang/String;

    iget-object v5, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v5, v5, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->s:Ljava/lang/String;

    sget-object v6, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6, v0}, Lcn/edu/pku/pkuiaaa_android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "iAAA_RESULT"

    const-string v5, "success"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iAAA_UID"

    iget-object v5, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v5, v5, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iAAA_TOKEN"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v1, v2}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v3}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_5

    :cond_d
    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v3, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v3, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    :goto_5
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean v3, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->e:Z

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v3}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v3}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    goto :goto_7

    :cond_f
    :try_start_5
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-eqz v0, :cond_10

    const-string v0, "SMS"

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    if-eqz v0, :cond_11

    const-string v0, "OTP"

    goto :goto_6

    :cond_11
    const-string v0, ""

    :goto_6
    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v2, v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    iget-object v4, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v4, v4, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->r:Ljava/lang/String;

    iget-object v5, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v5, v5, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->s:Ljava/lang/String;

    sget-object v6, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6, v0}, Lcn/edu/pku/pkuiaaa_android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "iAAA_RESULT"

    const-string v5, "success"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iAAA_UID"

    iget-object v5, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v5, v5, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "iAAA_TOKEN"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v1, v2}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0, v3}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    :goto_7
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1, v3}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    return-void

    :cond_12
    :goto_8
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_username_passwd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_13
    :goto_9
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$3;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->enter_username_passwd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
