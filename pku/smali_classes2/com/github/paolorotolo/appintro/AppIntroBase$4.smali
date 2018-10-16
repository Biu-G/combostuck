.class Lcom/github/paolorotolo/appintro/AppIntroBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;->onPostCreate(Landroid/os/Bundle;)V
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

    .line 148
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$4;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method
