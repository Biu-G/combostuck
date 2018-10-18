.class public Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;
    }
.end annotation


# instance fields
.field protected final destinationPath:Ljava/lang/String;

.field protected final sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final sharedContentLink:Ljava/lang/String;

.field protected final sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 47
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eqz p2, :cond_1

    .line 52
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz p3, :cond_0

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'destinationPath\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedContentAccessLevel\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedContentLink\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 134
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    .line 135
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 136
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 138
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getDestinationPath()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedContentAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getSharedContentLink()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedContentOwner()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->destinationPath:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 160
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
