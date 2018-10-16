.class Lcn/edu/pku/pkurunner/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/MainActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcn/edu/pku/pkurunner/Model/Weather;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$1;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity$1;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity$1;->a:Lcn/edu/pku/pkurunner/MainActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity$1;->a:Lcn/edu/pku/pkurunner/MainActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0f0012

    invoke-virtual {v1, p1, v2}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Lcn/edu/pku/pkurunner/Model/Weather;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity$1;->a(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
