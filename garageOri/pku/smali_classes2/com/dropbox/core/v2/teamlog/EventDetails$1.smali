.class synthetic Lcom/dropbox/core/v2/teamlog/EventDetails$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20871
    invoke-static {}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->values()[Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->APP_LINK_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->APP_LINK_USER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->APP_UNLINK_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->APP_UNLINK_USER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_ADD_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_CHANGE_COMMENT_SUBSCRIPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_DELETE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_LIKE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_RESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_UNLIKE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_UNRESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_CHANGE_IP_DESKTOP_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_CHANGE_IP_MOBILE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_CHANGE_IP_WEB_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_DELETE_ON_UNLINK_FAIL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_DELETE_ON_UNLINK_SUCCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_LINK_FAIL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_LINK_SUCCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_MANAGEMENT_DISABLED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_MANAGEMENT_ENABLED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_UNLINK_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_REFRESH_AUTH_TOKEN_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ACCOUNT_CAPTURE_CHANGE_AVAILABILITY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ACCOUNT_CAPTURE_MIGRATE_ACCOUNT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ACCOUNT_CAPTURE_NOTIFICATION_EMAILS_SENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DISABLED_DOMAIN_INVITES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_EMAIL_EXISTING_USERS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DOMAIN_VERIFICATION_REMOVE_DOMAIN_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ENABLED_DOMAIN_INVITES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->CREATE_FOLDER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_ADD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_COPY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_DELETE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_DOWNLOAD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_EDIT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_GET_COPY_REFERENCE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_MOVE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_PERMANENTLY_DELETE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_PREVIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_RENAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_RESTORE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REVERT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_ROLLBACK_CHANGES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_SAVE_COPY_REFERENCE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUEST_CHANGE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUEST_CLOSE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUEST_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUEST_RECEIVE_FILE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_ADD_EXTERNAL_ID_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_ADD_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_CHANGE_EXTERNAL_ID_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_CHANGE_MANAGEMENT_TYPE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_CHANGE_MEMBER_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_DELETE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_DESCRIPTION_UPDATED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_JOIN_POLICY_UPDATED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_MOVED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_REMOVE_EXTERNAL_ID_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_REMOVE_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_RENAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_ERROR_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->LOGIN_FAIL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->LOGIN_SUCCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->LOGOUT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->RESELLER_SUPPORT_SESSION_END_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->RESELLER_SUPPORT_SESSION_START_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SIGN_IN_AS_SESSION_END_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SIGN_IN_AS_SESSION_START_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_ERROR_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_ADD_NAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_CHANGE_ADMIN_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_CHANGE_EMAIL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_CHANGE_MEMBERSHIP_TYPE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_CHANGE_NAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_CHANGE_STATUS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_ADD_CUSTOM_QUOTA_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_CHANGE_CUSTOM_QUOTA_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_CHANGE_STATUS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_REMOVE_CUSTOM_QUOTA_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SUGGEST_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_TRANSFER_ACCOUNT_CONTENTS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SECONDARY_MAILS_POLICY_CHANGED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_ADD_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_ADD_TO_FOLDER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_ARCHIVE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_PERMANENTLY_DELETE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_REMOVE_FROM_FOLDER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_REMOVE_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_RENAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CONTENT_RESTORE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_ADD_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_CHANGE_MEMBER_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_CHANGE_SHARING_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_CHANGE_SUBSCRIPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_DELETED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_DELETE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_DOWNLOAD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_EDIT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_EDIT_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_FOLLOWED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_MENTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_REQUEST_ACCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_RESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_REVERT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_SLACK_SHARE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_TEAM_INVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_TRASHED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_UNRESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_UNTRASHED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_DOC_VIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_EXTERNAL_VIEW_ALLOW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_EXTERNAL_VIEW_DEFAULT_TEAM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_EXTERNAL_VIEW_FORBID_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_FOLDER_CHANGE_SUBSCRIPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_FOLDER_DELETED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_FOLDER_FOLLOWED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_FOLDER_TEAM_INVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PASSWORD_CHANGE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    :try_start_81
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PASSWORD_RESET_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    :catch_81
    :try_start_82
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PASSWORD_RESET_ALL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_CREATE_EXCEPTIONS_REPORT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_CREATE_USAGE_REPORT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    :catch_84
    :try_start_85
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EXPORT_MEMBERS_REPORT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_ADMIN_EXPORT_START_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    :catch_86
    :try_start_87
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    :try_start_88
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_ACTIVITY_CREATE_REPORT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    :catch_88
    :try_start_89
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->COLLECTION_SHARE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    :catch_89
    :try_start_8a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NOTE_ACL_INVITE_ONLY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NOTE_ACL_LINK_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NOTE_ACL_TEAM_LINK_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NOTE_SHARED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NOTE_SHARE_RECEIVE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->OPEN_NOTE_SHARED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_90
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_ADD_GROUP_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    :catch_90
    :try_start_91
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    :catch_91
    :try_start_92
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_EXTERNAL_INVITE_WARN_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    :catch_92
    :try_start_93
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_FB_INVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    :catch_93
    :try_start_94
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_FB_INVITE_CHANGE_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    :catch_94
    :try_start_95
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_FB_UNINVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    :catch_95
    :try_start_96
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_INVITE_GROUP_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    :catch_96
    :try_start_97
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_GRANT_ACCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    :catch_97
    :try_start_98
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_INVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_98

    :catch_98
    :try_start_99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_INVITE_CHANGE_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_99

    :catch_99
    :try_start_9a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_JOIN_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_9a

    :catch_9a
    :try_start_9b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_JOIN_FROM_OOB_LINK_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SF_TEAM_UNINVITE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_ADD_INVITEES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9e

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_ADD_LINK_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9f

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_ADD_LINK_PASSWORD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa0

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_a0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_ADD_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa1

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa2

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_INVITEE_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa3

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_LINK_AUDIENCE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa4

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_LINK_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa5

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_LINK_PASSWORD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa6

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_MEMBER_ROLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa7

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa8

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_CLAIM_INVITATION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa9

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_COPY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xaa

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_aa
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_DOWNLOAD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xab

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_ab
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_RELINQUISH_MEMBERSHIP_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xac

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ac
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_REMOVE_INVITEES_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xad

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_ac

    :catch_ac
    :try_start_ad
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_REMOVE_LINK_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xae

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ae
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_REMOVE_LINK_PASSWORD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xaf

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_af
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_REMOVE_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb0

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_af

    :catch_af
    :try_start_b0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_REQUEST_ACCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb1

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_UNSHARE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb2

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_CONTENT_VIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb3

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_b2

    :catch_b2
    :try_start_b3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_CHANGE_LINK_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb4

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_CHANGE_MEMBERS_INHERITANCE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb5

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_CHANGE_MEMBERS_MANAGEMENT_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_CHANGE_MEMBERS_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb7

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb8

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_DECLINE_INVITATION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb9

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_MOUNT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xba

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_ba
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_NEST_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xbb

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_ba

    :catch_ba
    :try_start_bb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_TRANSFER_OWNERSHIP_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xbc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_bb

    :catch_bb
    :try_start_bc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_FOLDER_UNMOUNT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xbd

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bc} :catch_bc

    :catch_bc
    :try_start_bd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_ADD_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xbe

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_bd} :catch_bd

    :catch_bd
    :try_start_be
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_CHANGE_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xbf

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_be} :catch_be

    :catch_be
    :try_start_bf
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_CHANGE_VISIBILITY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc0

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_c0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_COPY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc1

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc2

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_c1} :catch_c1

    :catch_c1
    :try_start_c2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_DISABLE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc3

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_DOWNLOAD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc4

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_REMOVE_EXPIRY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc5

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_c4} :catch_c4

    :catch_c4
    :try_start_c5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_SHARE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc6

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_c5} :catch_c5

    :catch_c5
    :try_start_c6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_LINK_VIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc7

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_c6} :catch_c6

    :catch_c6
    :try_start_c7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARED_NOTE_OPENED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc8

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_c7} :catch_c7

    :catch_c7
    :try_start_c8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHMODEL_GROUP_SHARE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc9

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_c8} :catch_c8

    :catch_c8
    :try_start_c9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_ACCESS_GRANTED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xca

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_c9} :catch_c9

    :catch_c9
    :try_start_ca
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_ADD_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xcb

    aput v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_ca} :catch_ca

    :catch_ca
    :try_start_cb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_ARCHIVED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xcc

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_cb} :catch_cb

    :catch_cb
    :try_start_cc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_CREATED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xcd

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_DELETE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xce

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_cd} :catch_cd

    :catch_cd
    :try_start_ce
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_EDITED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xcf

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_cf
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_EDIT_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd0

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_cf} :catch_cf

    :catch_cf
    :try_start_d0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_FILE_ADDED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd1

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_d0} :catch_d0

    :catch_d0
    :try_start_d1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_FILE_DOWNLOAD_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd2

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_d1} :catch_d1

    :catch_d1
    :try_start_d2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_FILE_REMOVED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd3

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_d2} :catch_d2

    :catch_d2
    :try_start_d3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_FILE_VIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd4

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_d3} :catch_d3

    :catch_d3
    :try_start_d4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_PERMANENTLY_DELETED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd5

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_d4} :catch_d4

    :catch_d4
    :try_start_d5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_POST_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd6

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_d5} :catch_d5

    :catch_d5
    :try_start_d6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_REMOVE_MEMBER_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd7

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_d6} :catch_d6

    :catch_d6
    :try_start_d7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_RENAMED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd8

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_d7} :catch_d7

    :catch_d7
    :try_start_d8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_REQUEST_ACCESS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd9

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_RESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xda

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_d9} :catch_d9

    :catch_d9
    :try_start_da
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_RESTORED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xdb

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_da} :catch_da

    :catch_da
    :try_start_db
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_TRASHED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xdc

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_db} :catch_db

    :catch_db
    :try_start_dc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_TRASHED_DEPRECATED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xdd

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_dc} :catch_dc

    :catch_dc
    :try_start_dd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_UNRESOLVE_COMMENT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xde

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_dd} :catch_dd

    :catch_dd
    :try_start_de
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_UNTRASHED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xdf

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_de} :catch_de

    :catch_de
    :try_start_df
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_UNTRASHED_DEPRECATED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe0

    aput v2, v0, v1
    :try_end_df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_df .. :try_end_df} :catch_df

    :catch_df
    :try_start_e0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_VIEW_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe1

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_e0} :catch_e0

    :catch_e0
    :try_start_e1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_ADD_CERT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e1} :catch_e1

    :catch_e1
    :try_start_e2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_ADD_LOGIN_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe3

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_e2} :catch_e2

    :catch_e2
    :try_start_e3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_ADD_LOGOUT_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe4

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_e3} :catch_e3

    :catch_e3
    :try_start_e4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_CHANGE_CERT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe5

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_CHANGE_LOGIN_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe6

    aput v2, v0, v1
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_e5} :catch_e5

    :catch_e5
    :try_start_e6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_CHANGE_LOGOUT_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe7

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_e6} :catch_e6

    :catch_e6
    :try_start_e7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_CHANGE_SAML_IDENTITY_MODE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe8

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_e7} :catch_e7

    :catch_e7
    :try_start_e8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_REMOVE_CERT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe9

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_e8} :catch_e8

    :catch_e8
    :try_start_e9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_REMOVE_LOGIN_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xea

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_ea
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_REMOVE_LOGOUT_URL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xeb

    aput v2, v0, v1
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_ea} :catch_ea

    :catch_ea
    :try_start_eb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_FOLDER_CHANGE_STATUS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xec

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_eb} :catch_eb

    :catch_eb
    :try_start_ec
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_FOLDER_CREATE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xed

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_ec} :catch_ec

    :catch_ec
    :try_start_ed
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_FOLDER_DOWNGRADE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xee

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_ed} :catch_ed

    :catch_ed
    :try_start_ee
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_FOLDER_PERMANENTLY_DELETE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xef

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_ee} :catch_ee

    :catch_ee
    :try_start_ef
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_FOLDER_RENAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf0

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_ef} :catch_ef

    :catch_ef
    :try_start_f0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_SELECTIVE_SYNC_SETTINGS_CHANGED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf1

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ACCOUNT_CAPTURE_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf2

    aput v2, v0, v1
    :try_end_f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_f1} :catch_f1

    :catch_f1
    :try_start_f2
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ALLOW_DOWNLOAD_DISABLED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf3

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f3
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ALLOW_DOWNLOAD_ENABLED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf4

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf5

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_f4} :catch_f4

    :catch_f4
    :try_start_f5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf6

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_f5} :catch_f5

    :catch_f5
    :try_start_f6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf7

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_f6} :catch_f6

    :catch_f6
    :try_start_f7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_APPROVALS_CHANGE_MOBILE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf8

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_f7} :catch_f7

    :catch_f7
    :try_start_f8
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xf9

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_f8} :catch_f8

    :catch_f8
    :try_start_f9
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DEVICE_APPROVALS_CHANGE_UNLINK_ACTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xfa

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_f9} :catch_f9

    :catch_f9
    :try_start_fa
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DIRECTORY_RESTRICTIONS_ADD_MEMBERS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xfb

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_fa} :catch_fa

    :catch_fa
    :try_start_fb
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->DIRECTORY_RESTRICTIONS_REMOVE_MEMBERS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xfc

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_fb} :catch_fb

    :catch_fb
    :try_start_fc
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_ADD_EXCEPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xfd

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fd
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xfe

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fe
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EMM_REMOVE_EXCEPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xff

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_fe} :catch_fe

    :catch_fe
    :try_start_ff
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->EXTENDED_VERSION_HISTORY_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x100

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_ff} :catch_ff

    :catch_ff
    :try_start_100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_COMMENTS_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x101

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_100} :catch_100

    :catch_100
    :try_start_101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUESTS_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x102

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_101} :catch_101

    :catch_101
    :try_start_102
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUESTS_EMAILS_ENABLED_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x103

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_102} :catch_102

    :catch_102
    :try_start_103
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x104

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_103} :catch_103

    :catch_103
    :try_start_104
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GOOGLE_SSO_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x105

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_104} :catch_104

    :catch_104
    :try_start_105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->GROUP_USER_MANAGEMENT_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x106

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_105} :catch_105

    :catch_105
    :try_start_106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_REQUESTS_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x107

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_106} :catch_106

    :catch_106
    :try_start_107
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_ADD_EXCEPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x108

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_107} :catch_107

    :catch_107
    :try_start_108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_CHANGE_CAPS_TYPE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x109

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_108} :catch_108

    :catch_108
    :try_start_109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10a

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_109} :catch_109

    :catch_109
    :try_start_10a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10b

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_10a} :catch_10a

    :catch_10a
    :try_start_10b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MEMBER_SUGGESTIONS_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10c

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_10b} :catch_10b

    :catch_10b
    :try_start_10c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10d

    aput v2, v0, v1
    :try_end_10c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_10c} :catch_10c

    :catch_10c
    :try_start_10d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->NETWORK_CONTROL_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10e

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_10d} :catch_10d

    :catch_10d
    :try_start_10e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CHANGE_DEPLOYMENT_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x10f

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_10e} :catch_10e

    :catch_10e
    :try_start_10f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CHANGE_MEMBER_LINK_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x110

    aput v2, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_10f} :catch_10f

    :catch_10f
    :try_start_110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CHANGE_MEMBER_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x111

    aput v2, v0, v1
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_110 .. :try_end_110} :catch_110

    :catch_110
    :try_start_111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x112

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_111} :catch_111

    :catch_111
    :try_start_112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_ENABLED_USERS_GROUP_ADDITION_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x113

    aput v2, v0, v1
    :try_end_112
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_112} :catch_112

    :catch_112
    :try_start_113
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PAPER_ENABLED_USERS_GROUP_REMOVAL_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x114

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_113} :catch_113

    :catch_113
    :try_start_114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->PERMANENT_DELETE_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x115

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_114} :catch_114

    :catch_114
    :try_start_115
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARING_CHANGE_FOLDER_JOIN_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x116

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_115} :catch_115

    :catch_115
    :try_start_116
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARING_CHANGE_LINK_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x117

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_116} :catch_116

    :catch_116
    :try_start_117
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHARING_CHANGE_MEMBER_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x118

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_117} :catch_117

    :catch_117
    :try_start_118
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_CHANGE_DOWNLOAD_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x119

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_118} :catch_118

    :catch_118
    :try_start_119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_CHANGE_ENABLED_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11a

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_119} :catch_119

    :catch_119
    :try_start_11a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SHOWCASE_CHANGE_EXTERNAL_SHARING_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11b

    aput v2, v0, v1
    :try_end_11a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a .. :try_end_11a} :catch_11a

    :catch_11a
    :try_start_11b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SMART_SYNC_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11c

    aput v2, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SMART_SYNC_NOT_OPT_OUT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11d

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_11c} :catch_11c

    :catch_11c
    :try_start_11d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SMART_SYNC_OPT_OUT_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11e

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_11d} :catch_11d

    :catch_11d
    :try_start_11e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->SSO_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x11f

    aput v2, v0, v1
    :try_end_11e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_11e} :catch_11e

    :catch_11e
    :try_start_11f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x120

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_11f} :catch_11f

    :catch_11f
    :try_start_120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TWO_ACCOUNT_CHANGE_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x121

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_120} :catch_120

    :catch_120
    :try_start_121
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x122

    aput v2, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_121 .. :try_end_121} :catch_121

    :catch_121
    :try_start_122
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x123

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_122} :catch_122

    :catch_122
    :try_start_123
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_MERGE_FROM_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x124

    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_123} :catch_123

    :catch_123
    :try_start_124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_MERGE_TO_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x125

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_124} :catch_124

    :catch_124
    :try_start_125
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_PROFILE_ADD_LOGO_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x126

    aput v2, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_125} :catch_125

    :catch_125
    :try_start_126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x127

    aput v2, v0, v1
    :try_end_126
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_126} :catch_126

    :catch_126
    :try_start_127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_PROFILE_CHANGE_LOGO_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x128

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_127} :catch_127

    :catch_127
    :try_start_128
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_PROFILE_CHANGE_NAME_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x129

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_128} :catch_128

    :catch_128
    :try_start_129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TEAM_PROFILE_REMOVE_LOGO_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12a

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_129} :catch_129

    :catch_129
    :try_start_12a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_ADD_BACKUP_PHONE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12b

    aput v2, v0, v1
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_12a} :catch_12a

    :catch_12a
    :try_start_12b
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_ADD_SECURITY_KEY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12c

    aput v2, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_12b} :catch_12b

    :catch_12b
    :try_start_12c
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_CHANGE_BACKUP_PHONE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12d

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12d
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_CHANGE_STATUS_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12e

    aput v2, v0, v1
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12d .. :try_end_12d} :catch_12d

    :catch_12d
    :try_start_12e
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_REMOVE_BACKUP_PHONE_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x12f

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_12e} :catch_12e

    :catch_12e
    :try_start_12f
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_REMOVE_SECURITY_KEY_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x130

    aput v2, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_130
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->TFA_RESET_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x131

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_130} :catch_130

    :catch_130
    :try_start_131
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->MISSING_DETAILS:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x132

    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_131} :catch_131

    :catch_131
    :try_start_132
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x133

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_132} :catch_132

    :catch_132
    return-void
.end method
