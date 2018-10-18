.class final Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NextButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;


# direct methods
.method private constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 832
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->isVibrateOn:Z

    if-eqz p1, :cond_0

    .line 833
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->vibrateIntensity:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$100(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 844
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 845
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 846
    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-virtual {v2}, Lcom/github/paolorotolo/appintro/PermissionObject;->getPosition()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 852
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_2

    .line 853
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-virtual {v2}, Lcom/github/paolorotolo/appintro/PermissionObject;->getPermission()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->requestPermissions([Ljava/lang/String;I)V

    .line 855
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 857
    :cond_2
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 858
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onNextPressed()V

    goto :goto_1

    .line 861
    :cond_3
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p1, p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 862
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onNextPressed()V

    goto :goto_1

    .line 865
    :cond_4
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$300(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    :goto_1
    return-void
.end method
