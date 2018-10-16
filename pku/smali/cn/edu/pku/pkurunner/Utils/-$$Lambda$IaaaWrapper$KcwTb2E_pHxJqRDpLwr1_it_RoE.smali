.class public final synthetic Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(IILandroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$0:I

    iput p2, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$1:I

    iput-object p3, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget v0, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$0:I

    iget v1, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$1:I

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;->lambda$KcwTb2E_pHxJqRDpLwr1_it_RoE(IILandroid/content/Intent;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
