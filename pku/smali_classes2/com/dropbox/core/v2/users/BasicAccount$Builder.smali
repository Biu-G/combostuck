.class public Lcom/dropbox/core/v2/users/BasicAccount$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/BasicAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final disabled:Z

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final isTeammate:Z

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected profilePhotoUrl:Ljava/lang/String;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZ)V
    .locals 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_3

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 211
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->accountId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 215
    iput-object p2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    if-eqz p3, :cond_0

    .line 219
    iput-object p3, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->email:Ljava/lang/String;

    .line 220
    iput-boolean p4, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->emailVerified:Z

    .line 221
    iput-boolean p5, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->disabled:Z

    .line 222
    iput-boolean p6, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->isTeammate:Z

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    return-void

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'email\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'accountId\' is longer than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'accountId\' is shorter than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'accountId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 10

    .line 261
    new-instance v9, Lcom/dropbox/core/v2/users/BasicAccount;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->email:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->emailVerified:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->disabled:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->isTeammate:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/users/BasicAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public withProfilePhotoUrl(Ljava/lang/String;)Lcom/dropbox/core/v2/users/BasicAccount$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/users/BasicAccount$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    return-object p0
.end method
