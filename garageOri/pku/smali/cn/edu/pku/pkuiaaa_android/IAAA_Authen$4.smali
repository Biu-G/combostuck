.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;
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

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-static {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/app/Activity;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "iAAA_RESULT"

    const-string v1, "cancel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "iAAA_UID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "iAAA_TOKEN"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$4;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {p1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->finish()V

    return-void
.end method
