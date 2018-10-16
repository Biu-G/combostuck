.class public Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;,
        Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Ljava/util/Date;

.field protected final previousValue:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    .line 42
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;
    .locals 1

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$Builder;-><init>()V

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

    .line 151
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    .line 153
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    .line 154
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

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

.method public getNewValue()Ljava/util/Date;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    return-object v0
.end method

.method public getPreviousValue()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->newValue:Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;->previousValue:Ljava/util/Date;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
