.class public final Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;,
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 1

    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 1

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    .line 133
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 2

    if-eqz p0, :cond_0

    .line 183
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

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

    .line 285
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    if-eqz v2, :cond_5

    .line 286
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 287
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 290
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    .line 292
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->name()Ljava/lang/String;

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

    .line 270
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->b:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisallowedSharedLinkPolicy()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoPermission()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotOnTeam()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

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

    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamFolder()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamPolicyDisallowsMemberPolicy()Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 328
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
