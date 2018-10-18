.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

.field private final synthetic f$1:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;->f$1:Lcom/dropbox/core/v2/DbxClientV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;->f$1:Lcom/dropbox/core/v2/DbxClientV2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$rzOiOEDXhyBCmtshoSQ8e9ZG1MM(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
