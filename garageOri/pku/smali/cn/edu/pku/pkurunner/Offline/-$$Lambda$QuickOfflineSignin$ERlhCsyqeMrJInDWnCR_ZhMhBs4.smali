.class public final synthetic Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/support/design/widget/TextInputEditText;

.field private final synthetic f$1:Landroid/widget/RadioGroup;

.field private final synthetic f$2:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$0:Landroid/support/design/widget/TextInputEditText;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$1:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$2:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$0:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$1:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;->f$2:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, v1, v2, p1, p2}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->lambda$ERlhCsyqeMrJInDWnCR_ZhMhBs4(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method
