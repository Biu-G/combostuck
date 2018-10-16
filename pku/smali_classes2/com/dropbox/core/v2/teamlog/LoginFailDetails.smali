.class public Lcom/dropbox/core/v2/teamlog/LoginFailDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;
    }
.end annotation


# instance fields
.field protected final errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

.field protected final isEmmManaged:Ljava/lang/Boolean;

.field protected final loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/LoginMethod;Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;-><init>(Lcom/dropbox/core/v2/teamlog/LoginMethod;Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/LoginMethod;Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'errorDetails\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'loginMethod\' is null"

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

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    check-cast p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    .line 115
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/LoginMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    .line 116
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

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

.method public getErrorDetails()Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    return-object v0
.end method

.method public getIsEmmManaged()Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLoginMethod()Lcom/dropbox/core/v2/teamlog/LoginMethod;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->isEmmManaged:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->loginMethod:Lcom/dropbox/core/v2/teamlog/LoginMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails;->errorDetails:Lcom/dropbox/core/v2/teamlog/FailureDetailsLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
