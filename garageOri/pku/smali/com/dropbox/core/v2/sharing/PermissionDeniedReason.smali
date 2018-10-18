.class public final Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;,
        Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 135
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 151
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 155
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 163
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 171
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;)Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .line 189
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    .line 190
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .line 204
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    .line 205
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    .line 206
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object v0
.end method

.method public static insufficientPlan(Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 2

    if-eqz p0, :cond_0

    .line 410
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object p0

    return-object p0

    .line 408
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

    .line 457
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_5

    .line 458
    check-cast p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 459
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 462
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 492
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/InsufficientPlan;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    :pswitch_9
    return v0

    :pswitch_a
    return v0

    :pswitch_b
    return v0

    :pswitch_c
    return v0

    :pswitch_d
    return v0

    :pswitch_e
    return v0

    :pswitch_f
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInsufficientPlanValue()Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->name()Ljava/lang/String;

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

    .line 442
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFolderIsInsideSharedFolder()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolderIsLimitedTeamFolder()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsufficientPlan()Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

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

    .line 437
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOwnerNotOnTeam()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermissionDenied()Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRestrictedByParentFolder()Z
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRestrictedByTeam()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetIsIndirectMember()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetIsOwner()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetIsSelf()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTargetNotActive()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserAccountType()Z
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserNotAllowedByOwner()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserNotOnTeam()Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserNotSameTeamAsOwner()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 506
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 518
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
