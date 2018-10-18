.class public Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newParentNsId:Ljava/lang/String;

.field protected previousParentNsId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->previousParentNsId:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;
    .locals 3

    .line 126
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->previousParentNsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withNewParentNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    return-object p0
.end method

.method public withPreviousParentNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;->previousParentNsId:Ljava/lang/String;

    return-object p0
.end method
