.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;
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

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-static {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/app/Activity;)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean p1, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object p1, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object p1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object v0, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->r:Ljava/lang/String;

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->d:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    const/16 v1, 0x3c

    iput v1, p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    sget-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    sput-object p1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    :cond_3
    new-instance v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$2;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$2;-><init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;)V

    sget-object v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-static {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :try_start_0
    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->q:Ljava/lang/String;

    sget-object v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/edu/pku/pkuiaaa_android/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u7ecf\u53d1\u9001\u5230\u60a8\u7684\u624b\u673a\uff01"

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9a8c\u8bc1\u7801\u5df2\u7ecf\u53d1\u9001\u5230\u60a8\u7684\u624b\u673a: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v2, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v2}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v2, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/view/View;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->wrong_username_passwd:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_4
    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v0}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/edu/pku/pkuiaaa_android/R$string;->enter_username_passwd:I

    goto :goto_3
.end method
