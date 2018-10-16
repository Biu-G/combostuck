.class public final Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;,
        Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

.field private b:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field private c:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object p0
.end method

.method public static invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 2

    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 2

    if-eqz p0, :cond_0

    .line 166
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 264
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    if-eqz v2, :cond_7

    .line 265
    check-cast p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    .line 266
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 269
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 273
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 271
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInvalidUserValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->name()Ljava/lang/String;

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

    .line 248
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInvalidUser()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

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

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 299
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->a:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
