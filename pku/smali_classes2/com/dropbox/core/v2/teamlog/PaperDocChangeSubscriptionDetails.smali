.class public Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;
    }
.end annotation


# instance fields
.field protected final eventUuid:Ljava/lang/String;

.field protected final newSubscriptionLevel:Ljava/lang/String;

.field protected final previousSubscriptionLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'newSubscriptionLevel\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'eventUuid\' is null"

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

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    check-cast p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    .line 117
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getEventUuid()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->eventUuid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->newSubscriptionLevel:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;->previousSubscriptionLevel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
