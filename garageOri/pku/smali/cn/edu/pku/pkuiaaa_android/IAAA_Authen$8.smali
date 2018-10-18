.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-object p2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/edu/pku/pkuiaaa_android/R$string;->sendcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/edu/pku/pkuiaaa_android/R$color;->black1:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->d:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v2}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/edu/pku/pkuiaaa_android/R$string;->sendcode_wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$8;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget v2, v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
