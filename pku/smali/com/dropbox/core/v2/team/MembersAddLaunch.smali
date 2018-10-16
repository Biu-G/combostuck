.class public final Lcom/dropbox/core/v2/team/MembersAddLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersAddLaunch$a;,
        Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    .line 75
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 76
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 2

    if-eqz p0, :cond_1

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    return-object p0
.end method

.method public static complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 195
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/team/MemberAddResult;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object p0

    return-object p0

    .line 193
    :cond_2
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

    .line 237
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    if-eqz v2, :cond_7

    .line 238
    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .line 239
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 242
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/MembersAddLaunch$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 246
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 244
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleteValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

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

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAsyncJobId()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 258
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$a;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 270
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$a;->a:Lcom/dropbox/core/v2/team/MembersAddLaunch$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
