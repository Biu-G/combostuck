.class public Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;,
        Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newParentNsId:Ljava/lang/String;

.field protected final previousParentNsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;
    .locals 1

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    .line 150
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getNewParentNsId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousParentNsId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->previousParentNsId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;->newParentNsId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 173
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method