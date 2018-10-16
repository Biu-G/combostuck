.class Lcom/github/paolorotolo/appintro/AppIntroBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;


# direct methods
.method constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->isVibrateOn:Z

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->vibrateIntensity:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$100(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 103
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onDonePressed(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$1;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$300(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    :goto_0
    return-void
.end method
