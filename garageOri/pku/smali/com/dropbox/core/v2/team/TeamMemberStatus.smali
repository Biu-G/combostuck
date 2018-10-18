.class public final Lcom/dropbox/core/v2/team/TeamMemberStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamMemberStatus$a;,
        Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;
    }
.end annotation


# static fields
.field public static final ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field public static final INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field public static final SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

.field private b:Lcom/dropbox/core/v2/team/RemovedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/TeamMemberStatus;)Lcom/dropbox/core/v2/team/RemovedStatus;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    return-object v0
.end method

.method public static removed(Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 183
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object p0

    return-object p0

    .line 181
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

    .line 221
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eqz v2, :cond_5

    .line 222
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 223
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 226
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/TeamMemberStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 234
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/RemovedStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRemovedValue()Lcom/dropbox/core/v2/team/RemovedStatus;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REMOVED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 206
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->b:Lcom/dropbox/core/v2/team/RemovedStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvited()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$a;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 258
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$a;->a:Lcom/dropbox/core/v2/team/TeamMemberStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
