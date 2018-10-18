.class public final Lcom/dropbox/core/v2/users/SpaceAllocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/SpaceAllocation$a;,
        Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;


# instance fields
.field private a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

.field private b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

.field private c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 100
    iput-object p2, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object p0
.end method

.method public static individual(Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 2

    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/SpaceAllocation;->a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static team(Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 2

    if-eqz p0, :cond_0

    .line 216
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/SpaceAllocation;->a(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object p0

    return-object p0

    .line 214
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

    .line 265
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    if-eqz v2, :cond_7

    .line 266
    check-cast p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    .line 267
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 270
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/users/SpaceAllocation$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 274
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 272
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object p1, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;->equals(Ljava/lang/Object;)Z

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

.method public getIndividualValue()Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INDIVIDUAL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamValue()Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

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

    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->b:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->c:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIndividual()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

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

    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeam()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$a;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$a;->a:Lcom/dropbox/core/v2/users/SpaceAllocation$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
