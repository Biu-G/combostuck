.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;)V
    .locals 0

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5$1;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$5;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/edu/pku/pkuiaaa_android/R$color;->colorIPGWGray:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
