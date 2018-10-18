.class public Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;
.super Lcom/github/paolorotolo/appintro/AppIntro;
.source "SourceFile"


# static fields
.field public static final GuidePreferencesKey:Ljava/lang/String; = "guided"

.field public static final GuidePreferencesName:Ljava/lang/String; = "GuideActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntro;-><init>()V

    return-void
.end method


# virtual methods
.method public enterApp()V
    .locals 3

    const-string v0, "GuideActivity"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guided"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "jumpToLogin"

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/edu/pku/pkurunner/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 20
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 24
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 26
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 36
    aget-object v7, v1, v6

    aget-object v8, v2, v6

    aget v9, v4, v6

    invoke-static {v7, v8, v9, p1}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->addSlide(Landroid/support/v4/app/Fragment;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, v5}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->showStatusBar(Z)V

    .line 45
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->setNavBarColor(I)V

    .line 46
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->setBarColor(I)V

    .line 48
    invoke-virtual {p0, v5}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->showSkipButton(Z)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->setProgressButtonEnabled(Z)V

    const-string p1, "android.permission.READ_PHONE_STATE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 51
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->askForPermissions([Ljava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080088
        0x7f080086
        0x7f080085
        0x7f080087
        0x7f080068
    .end array-data
.end method

.method public onDonePressed(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntro;->onDonePressed(Landroid/support/v4/app/Fragment;)V

    .line 61
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;->enterApp()V

    return-void
.end method
