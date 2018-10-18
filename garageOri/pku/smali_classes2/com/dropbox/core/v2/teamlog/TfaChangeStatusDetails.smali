.class public Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;,
        Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected final usedRescueCode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'newValue\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
    .locals 1

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)V

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

    .line 188
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    .line 190
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 191
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    .line 192
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

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    return-object v0
.end method

.method public getUsedRescueCode()Ljava/lang/Boolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 171
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
