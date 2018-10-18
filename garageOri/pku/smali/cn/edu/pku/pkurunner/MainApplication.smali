.class public Lcn/edu/pku/pkurunner/MainApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 25
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lorg/xutils/x$Ext;->setDebug(Z)V

    .line 32
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "900033802"

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
