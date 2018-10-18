.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$JmHOKLOgQgUMOJNNyTVTQyxnogk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public synthetic constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$JmHOKLOgQgUMOJNNyTVTQyxnogk;->f$0:Lcom/dropbox/core/v2/DbxClientV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$JmHOKLOgQgUMOJNNyTVTQyxnogk;->f$0:Lcom/dropbox/core/v2/DbxClientV2;

    check-cast p1, Lcom/dropbox/core/v2/users/FullAccount;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$JmHOKLOgQgUMOJNNyTVTQyxnogk(Lcom/dropbox/core/v2/DbxClientV2;Lcom/dropbox/core/v2/users/FullAccount;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
