.class public final Lcom/dropbox/core/v2/teamlog/ActionDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ActionDetails$a;,
        Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ActionDetails;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

.field private c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/ActionDetails;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 1

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/ActionDetails;)Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    return-object p0
.end method

.method public static removeAction(Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 2

    if-eqz p0, :cond_0

    .line 220
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->REMOVE_ACTION:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

    move-result-object p0

    return-object p0

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamJoinDetails(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/ActionDetails;
    .locals 2

    if-eqz p0, :cond_0

    .line 171
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->TEAM_JOIN_DETAILS:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a(Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/ActionDetails;

    move-result-object p0

    return-object p0

    .line 169
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

    .line 270
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    if-eqz v2, :cond_7

    .line 271
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;

    .line 272
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 275
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ActionDetails$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 279
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 277
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->equals(Ljava/lang/Object;)Z

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

.method public getRemoveActionValue()Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->REMOVE_ACTION:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REMOVE_ACTION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamJoinDetailsValue()Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->TEAM_JOIN_DETAILS:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    return-object v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_JOIN_DETAILS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->name()Ljava/lang/String;

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

    .line 254
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->b:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->c:Lcom/dropbox/core/v2/teamlog/MemberRemoveActionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoveAction()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->REMOVE_ACTION:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamJoinDetails()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;->TEAM_JOIN_DETAILS:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActionDetails;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 305
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ActionDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActionDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
