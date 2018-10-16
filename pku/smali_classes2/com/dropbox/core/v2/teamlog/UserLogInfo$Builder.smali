.class public Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected accountId:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected email:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 4

    .line 202
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'accountId\' is longer than 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'accountId\' is shorter than 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'displayName\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'email\' is longer than 255"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    return-object p0
.end method
