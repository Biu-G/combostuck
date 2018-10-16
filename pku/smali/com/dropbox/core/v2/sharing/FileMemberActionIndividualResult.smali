.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;,
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field private c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 73
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 89
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object p0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    if-eqz p0, :cond_0

    .line 195
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object p0

    return-object p0
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

    .line 234
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eqz v2, :cond_7

    .line 235
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 236
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 239
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 243
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 241
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->b:Lcom/dropbox/core/v2/sharing/AccessLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMemberError()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
