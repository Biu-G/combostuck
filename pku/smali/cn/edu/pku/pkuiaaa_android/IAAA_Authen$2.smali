.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;
.super Ljava/util/TimerTask;


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

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$2;->a:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v1, v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Landroid/widget/TextView;)V

    return-void
.end method
