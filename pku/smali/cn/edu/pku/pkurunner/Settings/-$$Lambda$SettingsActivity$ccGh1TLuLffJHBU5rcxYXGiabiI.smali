.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$ccGh1TLuLffJHBU5rcxYXGiabiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;


# instance fields
.field private final synthetic f$0:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public synthetic constructor <init>(Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$ccGh1TLuLffJHBU5rcxYXGiabiI;->f$0:Lcom/dropbox/core/v2/DbxClientV2;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$ccGh1TLuLffJHBU5rcxYXGiabiI;->f$0:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$ccGh1TLuLffJHBU5rcxYXGiabiI(Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object v0

    return-object v0
.end method
