.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bxT-yGaxVfz9flavpVnbU9ZIo5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bxT-yGaxVfz9flavpVnbU9ZIo5I;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bxT-yGaxVfz9flavpVnbU9ZIo5I;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$bxT-yGaxVfz9flavpVnbU9ZIo5I(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/files/FileMetadata;)V

    return-void
.end method
