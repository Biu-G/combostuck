.class public Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newValue:Ljava/lang/String;

.field protected previousValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->previousValue:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->newValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;
    .locals 3

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->previousValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->newValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withNewValue(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->newValue:Ljava/lang/String;

    return-object p0
.end method

.method public withPreviousValue(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;->previousValue:Ljava/lang/String;

    return-object p0
.end method
