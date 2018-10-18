.class Lcom/dropbox/core/v2/teamlog/EventType$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/EventType$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23299
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventType$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventType$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventType$a;->a:Lcom/dropbox/core/v2/teamlog/EventType$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23298
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 25450
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 25452
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 25453
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25457
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 25458
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_133

    const-string v3, "app_link_team"

    .line 25463
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25465
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;

    move-result-object v0

    .line 25466
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->appLinkTeam(Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v3, "app_link_user"

    .line 25468
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25470
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkUserType;

    move-result-object v0

    .line 25471
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->appLinkUser(Lcom/dropbox/core/v2/teamlog/AppLinkUserType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    const-string v3, "app_unlink_team"

    .line 25473
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25475
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;

    move-result-object v0

    .line 25476
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->appUnlinkTeam(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-string v3, "app_unlink_user"

    .line 25478
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25480
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;

    move-result-object v0

    .line 25481
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->appUnlinkUser(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-string v3, "file_add_comment"

    .line 25483
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 25485
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddCommentType;

    move-result-object v0

    .line 25486
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileAddComment(Lcom/dropbox/core/v2/teamlog/FileAddCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-string v3, "file_change_comment_subscription"

    .line 25488
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;

    move-result-object v0

    .line 25491
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileChangeCommentSubscription(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const-string v3, "file_delete_comment"

    .line 25493
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25495
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;

    move-result-object v0

    .line 25496
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDeleteComment(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const-string v3, "file_like_comment"

    .line 25498
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 25500
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;

    move-result-object v0

    .line 25501
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileLikeComment(Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string v3, "file_resolve_comment"

    .line 25503
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25505
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;

    move-result-object v0

    .line 25506
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileResolveComment(Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string v3, "file_unlike_comment"

    .line 25508
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 25510
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;

    move-result-object v0

    .line 25511
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileUnlikeComment(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    const-string v3, "file_unresolve_comment"

    .line 25513
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 25515
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;

    move-result-object v0

    .line 25516
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileUnresolveComment(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-string v3, "device_change_ip_desktop"

    .line 25518
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 25520
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;

    move-result-object v0

    .line 25521
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpDesktop(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    const-string v3, "device_change_ip_mobile"

    .line 25523
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 25525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;

    move-result-object v0

    .line 25526
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpMobile(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    const-string v3, "device_change_ip_web"

    .line 25528
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 25530
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;

    move-result-object v0

    .line 25531
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceChangeIpWeb(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const-string v3, "device_delete_on_unlink_fail"

    .line 25533
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 25535
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;

    move-result-object v0

    .line 25536
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceDeleteOnUnlinkFail(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    const-string v3, "device_delete_on_unlink_success"

    .line 25538
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 25540
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;

    move-result-object v0

    .line 25541
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceDeleteOnUnlinkSuccess(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const-string v3, "device_link_fail"

    .line 25543
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 25545
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;

    move-result-object v0

    .line 25546
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceLinkFail(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    const-string v3, "device_link_success"

    .line 25548
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 25550
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;

    move-result-object v0

    .line 25551
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceLinkSuccess(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    const-string v3, "device_management_disabled"

    .line 25553
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 25555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;

    move-result-object v0

    .line 25556
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceManagementDisabled(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    const-string v3, "device_management_enabled"

    .line 25558
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 25560
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;

    move-result-object v0

    .line 25561
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceManagementEnabled(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    const-string v3, "device_unlink"

    .line 25563
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 25565
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;

    move-result-object v0

    .line 25566
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceUnlink(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    const-string v3, "emm_refresh_auth_token"

    .line 25568
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 25570
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;

    move-result-object v0

    .line 25571
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmRefreshAuthToken(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    const-string v3, "account_capture_change_availability"

    .line 25573
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 25575
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;

    move-result-object v0

    .line 25576
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureChangeAvailability(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    const-string v3, "account_capture_migrate_account"

    .line 25578
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;

    move-result-object v0

    .line 25581
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureMigrateAccount(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    const-string v3, "account_capture_notification_emails_sent"

    .line 25583
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 25585
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;

    move-result-object v0

    .line 25586
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureNotificationEmailsSent(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    const-string v3, "account_capture_relinquish_account"

    .line 25588
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 25590
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;

    move-result-object v0

    .line 25591
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureRelinquishAccount(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    const-string v3, "disabled_domain_invites"

    .line 25593
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 25595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->a:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;

    move-result-object v0

    .line 25596
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->disabledDomainInvites(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    const-string v3, "domain_invites_approve_request_to_join_team"

    .line 25598
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 25600
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;

    move-result-object v0

    .line 25601
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesApproveRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1c
    const-string v3, "domain_invites_decline_request_to_join_team"

    .line 25603
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 25605
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;

    move-result-object v0

    .line 25606
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesDeclineRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const-string v3, "domain_invites_email_existing_users"

    .line 25608
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 25610
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;

    move-result-object v0

    .line 25611
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesEmailExistingUsers(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1e
    const-string v3, "domain_invites_request_to_join_team"

    .line 25613
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 25615
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;

    move-result-object v0

    .line 25616
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesRequestToJoinTeam(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_1f
    const-string v3, "domain_invites_set_invite_new_user_pref_to_no"

    .line 25618
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 25620
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;

    move-result-object v0

    .line 25621
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesSetInviteNewUserPrefToNo(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_20
    const-string v3, "domain_invites_set_invite_new_user_pref_to_yes"

    .line 25623
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 25625
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;

    move-result-object v0

    .line 25626
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainInvitesSetInviteNewUserPrefToYes(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    const-string v3, "domain_verification_add_domain_fail"

    .line 25628
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 25630
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;

    move-result-object v0

    .line 25631
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationAddDomainFail(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_22
    const-string v3, "domain_verification_add_domain_success"

    .line 25633
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 25635
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;

    move-result-object v0

    .line 25636
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationAddDomainSuccess(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    const-string v3, "domain_verification_remove_domain"

    .line 25638
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 25640
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;

    move-result-object v0

    .line 25641
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->domainVerificationRemoveDomain(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_24
    const-string v3, "enabled_domain_invites"

    .line 25643
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 25645
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->a:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;

    move-result-object v0

    .line 25646
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->enabledDomainInvites(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_25
    const-string v3, "create_folder"

    .line 25648
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 25650
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateFolderType;

    move-result-object v0

    .line 25651
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->createFolder(Lcom/dropbox/core/v2/teamlog/CreateFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_26
    const-string v3, "file_add"

    .line 25653
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 25655
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddType;

    move-result-object v0

    .line 25656
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileAdd(Lcom/dropbox/core/v2/teamlog/FileAddType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_27
    const-string v3, "file_copy"

    .line 25658
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 25660
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileCopyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCopyType;

    move-result-object v0

    .line 25661
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileCopy(Lcom/dropbox/core/v2/teamlog/FileCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_28
    const-string v3, "file_delete"

    .line 25663
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 25665
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteType;

    move-result-object v0

    .line 25666
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDelete(Lcom/dropbox/core/v2/teamlog/FileDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_29
    const-string v3, "file_download"

    .line 25668
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 25670
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDownloadType;

    move-result-object v0

    .line 25671
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileDownload(Lcom/dropbox/core/v2/teamlog/FileDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2a
    const-string v3, "file_edit"

    .line 25673
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 25675
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->a:Lcom/dropbox/core/v2/teamlog/FileEditType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditType;

    move-result-object v0

    .line 25676
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileEdit(Lcom/dropbox/core/v2/teamlog/FileEditType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2b
    const-string v3, "file_get_copy_reference"

    .line 25678
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 25680
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->a:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;

    move-result-object v0

    .line 25681
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileGetCopyReference(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2c
    const-string v3, "file_move"

    .line 25683
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 25685
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->a:Lcom/dropbox/core/v2/teamlog/FileMoveType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileMoveType;

    move-result-object v0

    .line 25686
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileMove(Lcom/dropbox/core/v2/teamlog/FileMoveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2d
    const-string v3, "file_permanently_delete"

    .line 25688
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 25690
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;

    move-result-object v0

    .line 25691
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->filePermanentlyDelete(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2e
    const-string v3, "file_preview"

    .line 25693
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 25695
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->a:Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePreviewType;

    move-result-object v0

    .line 25696
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->filePreview(Lcom/dropbox/core/v2/teamlog/FilePreviewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_2f
    const-string v3, "file_rename"

    .line 25698
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 25700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRenameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRenameType;

    move-result-object v0

    .line 25701
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRename(Lcom/dropbox/core/v2/teamlog/FileRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_30
    const-string v3, "file_restore"

    .line 25703
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 25705
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRestoreType;

    move-result-object v0

    .line 25706
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRestore(Lcom/dropbox/core/v2/teamlog/FileRestoreType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_31
    const-string v3, "file_revert"

    .line 25708
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 25710
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRevertType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRevertType;

    move-result-object v0

    .line 25711
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRevert(Lcom/dropbox/core/v2/teamlog/FileRevertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_32
    const-string v3, "file_rollback_changes"

    .line 25713
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 25715
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;

    move-result-object v0

    .line 25716
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRollbackChanges(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_33
    const-string v3, "file_save_copy_reference"

    .line 25718
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 25720
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->a:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;

    move-result-object v0

    .line 25721
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileSaveCopyReference(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_34
    const-string v3, "file_request_change"

    .line 25723
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 25725
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;

    move-result-object v0

    .line 25726
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestChange(Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_35
    const-string v3, "file_request_close"

    .line 25728
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 25730
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;

    move-result-object v0

    .line 25731
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestClose(Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_36
    const-string v3, "file_request_create"

    .line 25733
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 25735
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;

    move-result-object v0

    .line 25736
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestCreate(Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_37
    const-string v3, "file_request_receive_file"

    .line 25738
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 25740
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;

    move-result-object v0

    .line 25741
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestReceiveFile(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_38
    const-string v3, "group_add_external_id"

    .line 25743
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 25745
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;

    move-result-object v0

    .line 25746
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupAddExternalId(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_39
    const-string v3, "group_add_member"

    .line 25748
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 25750
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;

    move-result-object v0

    .line 25751
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupAddMember(Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3a
    const-string v3, "group_change_external_id"

    .line 25753
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 25755
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;

    move-result-object v0

    .line 25756
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeExternalId(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3b
    const-string v3, "group_change_management_type"

    .line 25758
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 25760
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;

    move-result-object v0

    .line 25761
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeManagementType(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3c
    const-string v3, "group_change_member_role"

    .line 25763
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 25765
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;

    move-result-object v0

    .line 25766
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupChangeMemberRole(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3d
    const-string v3, "group_create"

    .line 25768
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 25770
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupCreateType;

    move-result-object v0

    .line 25771
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupCreate(Lcom/dropbox/core/v2/teamlog/GroupCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3e
    const-string v3, "group_delete"

    .line 25773
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 25775
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDeleteType;

    move-result-object v0

    .line 25776
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupDelete(Lcom/dropbox/core/v2/teamlog/GroupDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_3f
    const-string v3, "group_description_updated"

    .line 25778
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 25780
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;

    move-result-object v0

    .line 25781
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupDescriptionUpdated(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_40
    const-string v3, "group_join_policy_updated"

    .line 25783
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 25785
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;

    move-result-object v0

    .line 25786
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupJoinPolicyUpdated(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_41
    const-string v3, "group_moved"

    .line 25788
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 25790
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupMovedType;

    move-result-object v0

    .line 25791
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupMoved(Lcom/dropbox/core/v2/teamlog/GroupMovedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_42
    const-string v3, "group_remove_external_id"

    .line 25793
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 25795
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;

    move-result-object v0

    .line 25796
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRemoveExternalId(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_43
    const-string v3, "group_remove_member"

    .line 25798
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 25800
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;

    move-result-object v0

    .line 25801
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRemoveMember(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_44
    const-string v3, "group_rename"

    .line 25803
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 25805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRenameType;

    move-result-object v0

    .line 25806
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupRename(Lcom/dropbox/core/v2/teamlog/GroupRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_45
    const-string v3, "emm_error"

    .line 25808
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 25810
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmErrorType;

    move-result-object v0

    .line 25811
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmError(Lcom/dropbox/core/v2/teamlog/EmmErrorType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_46
    const-string v3, "login_fail"

    .line 25813
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 25815
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailType;

    move-result-object v0

    .line 25816
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->loginFail(Lcom/dropbox/core/v2/teamlog/LoginFailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_47
    const-string v3, "login_success"

    .line 25818
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 25820
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginSuccessType;

    move-result-object v0

    .line 25821
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->loginSuccess(Lcom/dropbox/core/v2/teamlog/LoginSuccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_48
    const-string v3, "logout"

    .line 25823
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 25825
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->a:Lcom/dropbox/core/v2/teamlog/LogoutType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LogoutType;

    move-result-object v0

    .line 25826
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->logout(Lcom/dropbox/core/v2/teamlog/LogoutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_49
    const-string v3, "reseller_support_session_end"

    .line 25828
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 25830
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;

    move-result-object v0

    .line 25831
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->resellerSupportSessionEnd(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4a
    const-string v3, "reseller_support_session_start"

    .line 25833
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 25835
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;

    move-result-object v0

    .line 25836
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->resellerSupportSessionStart(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4b
    const-string v3, "sign_in_as_session_end"

    .line 25838
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 25840
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;

    move-result-object v0

    .line 25841
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->signInAsSessionEnd(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4c
    const-string v3, "sign_in_as_session_start"

    .line 25843
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 25845
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;

    move-result-object v0

    .line 25846
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->signInAsSessionStart(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4d
    const-string v3, "sso_error"

    .line 25848
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 25850
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoErrorType;

    move-result-object v0

    .line 25851
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoError(Lcom/dropbox/core/v2/teamlog/SsoErrorType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4e
    const-string v3, "member_add_name"

    .line 25853
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 25855
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddNameType;

    move-result-object v0

    .line 25856
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberAddName(Lcom/dropbox/core/v2/teamlog/MemberAddNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_4f
    const-string v3, "member_change_admin_role"

    .line 25858
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 25860
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;

    move-result-object v0

    .line 25861
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeAdminRole(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_50
    const-string v3, "member_change_email"

    .line 25863
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 25865
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;

    move-result-object v0

    .line 25866
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeEmail(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_51
    const-string v3, "member_change_membership_type"

    .line 25868
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 25870
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;

    move-result-object v0

    .line 25871
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeMembershipType(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_52
    const-string v3, "member_change_name"

    .line 25873
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 25875
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;

    move-result-object v0

    .line 25876
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeName(Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_53
    const-string v3, "member_change_status"

    .line 25878
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 25880
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;

    move-result-object v0

    .line 25881
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberChangeStatus(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_54
    const-string v3, "member_permanently_delete_account_contents"

    .line 25883
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 25885
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;

    move-result-object v0

    .line 25886
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberPermanentlyDeleteAccountContents(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_55
    const-string v3, "member_space_limits_add_custom_quota"

    .line 25888
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 25890
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;

    move-result-object v0

    .line 25891
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsAddCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_56
    const-string v3, "member_space_limits_change_custom_quota"

    .line 25893
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 25895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;

    move-result-object v0

    .line 25896
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_57
    const-string v3, "member_space_limits_change_status"

    .line 25898
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 25900
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;

    move-result-object v0

    .line 25901
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeStatus(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_58
    const-string v3, "member_space_limits_remove_custom_quota"

    .line 25903
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 25905
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;

    move-result-object v0

    .line 25906
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsRemoveCustomQuota(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_59
    const-string v3, "member_suggest"

    .line 25908
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 25910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestType;

    move-result-object v0

    .line 25911
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSuggest(Lcom/dropbox/core/v2/teamlog/MemberSuggestType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5a
    const-string v3, "member_transfer_account_contents"

    .line 25913
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 25915
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;

    move-result-object v0

    .line 25916
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberTransferAccountContents(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5b
    const-string v3, "secondary_mails_policy_changed"

    .line 25918
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 25920
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->a:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;

    move-result-object v0

    .line 25921
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->secondaryMailsPolicyChanged(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5c
    const-string v3, "paper_content_add_member"

    .line 25923
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 25925
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;

    move-result-object v0

    .line 25926
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentAddMember(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5d
    const-string v3, "paper_content_add_to_folder"

    .line 25928
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 25930
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;

    move-result-object v0

    .line 25931
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentAddToFolder(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5e
    const-string v3, "paper_content_archive"

    .line 25933
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 25935
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;

    move-result-object v0

    .line 25936
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentArchive(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_5f
    const-string v3, "paper_content_create"

    .line 25938
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 25940
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;

    move-result-object v0

    .line 25941
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentCreate(Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_60
    const-string v3, "paper_content_permanently_delete"

    .line 25943
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 25945
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;

    move-result-object v0

    .line 25946
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentPermanentlyDelete(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_61
    const-string v3, "paper_content_remove_from_folder"

    .line 25948
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 25950
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;

    move-result-object v0

    .line 25951
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRemoveFromFolder(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_62
    const-string v3, "paper_content_remove_member"

    .line 25953
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 25955
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;

    move-result-object v0

    .line 25956
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRemoveMember(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_63
    const-string v3, "paper_content_rename"

    .line 25958
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 25960
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;

    move-result-object v0

    .line 25961
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRename(Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_64
    const-string v3, "paper_content_restore"

    .line 25963
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 25965
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;

    move-result-object v0

    .line 25966
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperContentRestore(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_65
    const-string v3, "paper_doc_add_comment"

    .line 25968
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 25970
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;

    move-result-object v0

    .line 25971
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocAddComment(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_66
    const-string v3, "paper_doc_change_member_role"

    .line 25973
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 25975
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;

    move-result-object v0

    .line 25976
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeMemberRole(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_67
    const-string v3, "paper_doc_change_sharing_policy"

    .line 25978
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 25980
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;

    move-result-object v0

    .line 25981
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeSharingPolicy(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_68
    const-string v3, "paper_doc_change_subscription"

    .line 25983
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 25985
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;

    move-result-object v0

    .line 25986
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocChangeSubscription(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_69
    const-string v3, "paper_doc_deleted"

    .line 25988
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 25990
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;

    move-result-object v0

    .line 25991
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDeleted(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6a
    const-string v3, "paper_doc_delete_comment"

    .line 25993
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 25995
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;

    move-result-object v0

    .line 25996
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDeleteComment(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6b
    const-string v3, "paper_doc_download"

    .line 25998
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 26000
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;

    move-result-object v0

    .line 26001
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocDownload(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6c
    const-string v3, "paper_doc_edit"

    .line 26003
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 26005
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditType;

    move-result-object v0

    .line 26006
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocEdit(Lcom/dropbox/core/v2/teamlog/PaperDocEditType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6d
    const-string v3, "paper_doc_edit_comment"

    .line 26008
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 26010
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;

    move-result-object v0

    .line 26011
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocEditComment(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6e
    const-string v3, "paper_doc_followed"

    .line 26013
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 26015
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;

    move-result-object v0

    .line 26016
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocFollowed(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_6f
    const-string v3, "paper_doc_mention"

    .line 26018
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 26020
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;

    move-result-object v0

    .line 26021
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocMention(Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_70
    const-string v3, "paper_doc_request_access"

    .line 26023
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 26025
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;

    move-result-object v0

    .line 26026
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocRequestAccess(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_71
    const-string v3, "paper_doc_resolve_comment"

    .line 26028
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 26030
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;

    move-result-object v0

    .line 26031
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocResolveComment(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_72
    const-string v3, "paper_doc_revert"

    .line 26033
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 26035
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;

    move-result-object v0

    .line 26036
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocRevert(Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_73
    const-string v3, "paper_doc_slack_share"

    .line 26038
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 26040
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;

    move-result-object v0

    .line 26041
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocSlackShare(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_74
    const-string v3, "paper_doc_team_invite"

    .line 26043
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 26045
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;

    move-result-object v0

    .line 26046
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocTeamInvite(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_75
    const-string v3, "paper_doc_trashed"

    .line 26048
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 26050
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;

    move-result-object v0

    .line 26051
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocTrashed(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_76
    const-string v3, "paper_doc_unresolve_comment"

    .line 26053
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 26055
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;

    move-result-object v0

    .line 26056
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocUnresolveComment(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_77
    const-string v3, "paper_doc_untrashed"

    .line 26058
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 26060
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;

    move-result-object v0

    .line 26061
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocUntrashed(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_78
    const-string v3, "paper_doc_view"

    .line 26063
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 26065
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocViewType;

    move-result-object v0

    .line 26066
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperDocView(Lcom/dropbox/core/v2/teamlog/PaperDocViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_79
    const-string v3, "paper_external_view_allow"

    .line 26068
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 26070
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;

    move-result-object v0

    .line 26071
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewAllow(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7a
    const-string v3, "paper_external_view_default_team"

    .line 26073
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 26075
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;

    move-result-object v0

    .line 26076
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewDefaultTeam(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7b
    const-string v3, "paper_external_view_forbid"

    .line 26078
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 26080
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;

    move-result-object v0

    .line 26081
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperExternalViewForbid(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7c
    const-string v3, "paper_folder_change_subscription"

    .line 26083
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 26085
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;

    move-result-object v0

    .line 26086
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderChangeSubscription(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7d
    const-string v3, "paper_folder_deleted"

    .line 26088
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 26090
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;

    move-result-object v0

    .line 26091
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderDeleted(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7e
    const-string v3, "paper_folder_followed"

    .line 26093
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 26095
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;

    move-result-object v0

    .line 26096
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderFollowed(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_7f
    const-string v3, "paper_folder_team_invite"

    .line 26098
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 26100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;

    move-result-object v0

    .line 26101
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperFolderTeamInvite(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_80
    const-string v3, "password_change"

    .line 26103
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 26105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordChangeType;

    move-result-object v0

    .line 26106
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordChange(Lcom/dropbox/core/v2/teamlog/PasswordChangeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_81
    const-string v3, "password_reset"

    .line 26108
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 26110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetType;

    move-result-object v0

    .line 26111
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordReset(Lcom/dropbox/core/v2/teamlog/PasswordResetType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_82
    const-string v3, "password_reset_all"

    .line 26113
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 26115
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;

    move-result-object v0

    .line 26116
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->passwordResetAll(Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_83
    const-string v3, "emm_create_exceptions_report"

    .line 26118
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 26120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;

    move-result-object v0

    .line 26121
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmCreateExceptionsReport(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_84
    const-string v3, "emm_create_usage_report"

    .line 26123
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 26125
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;

    move-result-object v0

    .line 26126
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmCreateUsageReport(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_85
    const-string v3, "export_members_report"

    .line 26128
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 26130
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->a:Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;

    move-result-object v0

    .line 26131
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->exportMembersReport(Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_86
    const-string v3, "paper_admin_export_start"

    .line 26133
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 26135
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;

    move-result-object v0

    .line 26136
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperAdminExportStart(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_87
    const-string v3, "smart_sync_create_admin_privilege_report"

    .line 26138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 26140
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;

    move-result-object v0

    .line 26141
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncCreateAdminPrivilegeReport(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_88
    const-string v3, "team_activity_create_report"

    .line 26143
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 26145
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;

    move-result-object v0

    .line 26146
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamActivityCreateReport(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_89
    const-string v3, "collection_share"

    .line 26148
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 26150
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->a:Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CollectionShareType;

    move-result-object v0

    .line 26151
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->collectionShare(Lcom/dropbox/core/v2/teamlog/CollectionShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8a
    const-string v3, "note_acl_invite_only"

    .line 26153
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 26155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;

    move-result-object v0

    .line 26156
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclInviteOnly(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8b
    const-string v3, "note_acl_link"

    .line 26158
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 26160
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;

    move-result-object v0

    .line 26161
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclLink(Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8c
    const-string v3, "note_acl_team_link"

    .line 26163
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 26165
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;

    move-result-object v0

    .line 26166
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteAclTeamLink(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8d
    const-string v3, "note_shared"

    .line 26168
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 26170
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteSharedType;

    move-result-object v0

    .line 26171
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteShared(Lcom/dropbox/core/v2/teamlog/NoteSharedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8e
    const-string v3, "note_share_receive"

    .line 26173
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 26175
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;

    move-result-object v0

    .line 26176
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->noteShareReceive(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_8f
    const-string v3, "open_note_shared"

    .line 26178
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 26180
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->a:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;

    move-result-object v0

    .line 26181
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->openNoteShared(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_90
    const-string v3, "sf_add_group"

    .line 26183
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 26185
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->a:Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAddGroupType;

    move-result-object v0

    .line 26186
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfAddGroup(Lcom/dropbox/core/v2/teamlog/SfAddGroupType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_91
    const-string v3, "sf_allow_non_members_to_view_shared_links"

    .line 26188
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 26190
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->a:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;

    move-result-object v0

    .line 26191
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfAllowNonMembersToViewSharedLinks(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_92
    const-string v3, "sf_external_invite_warn"

    .line 26193
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 26195
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->a:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;

    move-result-object v0

    .line 26196
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfExternalInviteWarn(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_93
    const-string v3, "sf_fb_invite"

    .line 26198
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 26200
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteType;

    move-result-object v0

    .line 26201
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbInvite(Lcom/dropbox/core/v2/teamlog/SfFbInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_94
    const-string v3, "sf_fb_invite_change_role"

    .line 26203
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 26205
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;

    move-result-object v0

    .line 26206
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbInviteChangeRole(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_95
    const-string v3, "sf_fb_uninvite"

    .line 26208
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 26210
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;

    move-result-object v0

    .line 26211
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfFbUninvite(Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_96
    const-string v3, "sf_invite_group"

    .line 26213
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 26215
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->a:Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;

    move-result-object v0

    .line 26216
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfInviteGroup(Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_97
    const-string v3, "sf_team_grant_access"

    .line 26218
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 26220
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;

    move-result-object v0

    .line 26221
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamGrantAccess(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_98
    const-string v3, "sf_team_invite"

    .line 26223
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 26225
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;

    move-result-object v0

    .line 26226
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamInvite(Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_99
    const-string v3, "sf_team_invite_change_role"

    .line 26228
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 26230
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;

    move-result-object v0

    .line 26231
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamInviteChangeRole(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9a
    const-string v3, "sf_team_join"

    .line 26233
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 26235
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;

    move-result-object v0

    .line 26236
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamJoin(Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9b
    const-string v3, "sf_team_join_from_oob_link"

    .line 26238
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 26240
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;

    move-result-object v0

    .line 26241
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamJoinFromOobLink(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9c
    const-string v3, "sf_team_uninvite"

    .line 26243
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 26245
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;

    move-result-object v0

    .line 26246
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sfTeamUninvite(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9d
    const-string v3, "shared_content_add_invitees"

    .line 26248
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 26250
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;

    move-result-object v0

    .line 26251
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddInvitees(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9e
    const-string v3, "shared_content_add_link_expiry"

    .line 26253
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 26255
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;

    move-result-object v0

    .line 26256
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_9f
    const-string v3, "shared_content_add_link_password"

    .line 26258
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 26260
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;

    move-result-object v0

    .line 26261
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a0
    const-string v3, "shared_content_add_member"

    .line 26263
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 26265
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;

    move-result-object v0

    .line 26266
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentAddMember(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a1
    const-string v3, "shared_content_change_downloads_policy"

    .line 26268
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 26270
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;

    move-result-object v0

    .line 26271
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeDownloadsPolicy(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a2
    const-string v3, "shared_content_change_invitee_role"

    .line 26273
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 26275
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;

    move-result-object v0

    .line 26276
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeInviteeRole(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a3
    const-string v3, "shared_content_change_link_audience"

    .line 26278
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 26280
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;

    move-result-object v0

    .line 26281
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkAudience(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a4
    const-string v3, "shared_content_change_link_expiry"

    .line 26283
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 26285
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;

    move-result-object v0

    .line 26286
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a5
    const-string v3, "shared_content_change_link_password"

    .line 26288
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 26290
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;

    move-result-object v0

    .line 26291
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a6
    const-string v3, "shared_content_change_member_role"

    .line 26293
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 26295
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;

    move-result-object v0

    .line 26296
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeMemberRole(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a7
    const-string v3, "shared_content_change_viewer_info_policy"

    .line 26298
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 26300
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;

    move-result-object v0

    .line 26301
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentChangeViewerInfoPolicy(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a8
    const-string v3, "shared_content_claim_invitation"

    .line 26303
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 26305
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;

    move-result-object v0

    .line 26306
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentClaimInvitation(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_a9
    const-string v3, "shared_content_copy"

    .line 26308
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 26310
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;

    move-result-object v0

    .line 26311
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentCopy(Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_aa
    const-string v3, "shared_content_download"

    .line 26313
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 26315
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;

    move-result-object v0

    .line 26316
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentDownload(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ab
    const-string v3, "shared_content_relinquish_membership"

    .line 26318
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 26320
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;

    move-result-object v0

    .line 26321
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRelinquishMembership(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ac
    const-string v3, "shared_content_remove_invitees"

    .line 26323
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 26325
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;

    move-result-object v0

    .line 26326
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveInvitees(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ad
    const-string v3, "shared_content_remove_link_expiry"

    .line 26328
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 26330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;

    move-result-object v0

    .line 26331
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveLinkExpiry(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ae
    const-string v3, "shared_content_remove_link_password"

    .line 26333
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 26335
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;

    move-result-object v0

    .line 26336
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveLinkPassword(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_af
    const-string v3, "shared_content_remove_member"

    .line 26338
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 26340
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;

    move-result-object v0

    .line 26341
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRemoveMember(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b0
    const-string v3, "shared_content_request_access"

    .line 26343
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 26345
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;

    move-result-object v0

    .line 26346
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentRequestAccess(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b1
    const-string v3, "shared_content_unshare"

    .line 26348
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 26350
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;

    move-result-object v0

    .line 26351
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentUnshare(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b2
    const-string v3, "shared_content_view"

    .line 26353
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 26355
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentViewType;

    move-result-object v0

    .line 26356
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedContentView(Lcom/dropbox/core/v2/teamlog/SharedContentViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b3
    const-string v3, "shared_folder_change_link_policy"

    .line 26358
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 26360
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;

    move-result-object v0

    .line 26361
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeLinkPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b4
    const-string v3, "shared_folder_change_members_inheritance_policy"

    .line 26363
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 26365
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;

    move-result-object v0

    .line 26366
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersInheritancePolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b5
    const-string v3, "shared_folder_change_members_management_policy"

    .line 26368
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 26370
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;

    move-result-object v0

    .line 26371
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersManagementPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b6
    const-string v3, "shared_folder_change_members_policy"

    .line 26373
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 26375
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;

    move-result-object v0

    .line 26376
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderChangeMembersPolicy(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b7
    const-string v3, "shared_folder_create"

    .line 26378
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 26380
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;

    move-result-object v0

    .line 26381
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderCreate(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b8
    const-string v3, "shared_folder_decline_invitation"

    .line 26383
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 26385
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;

    move-result-object v0

    .line 26386
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderDeclineInvitation(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_b9
    const-string v3, "shared_folder_mount"

    .line 26388
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 26390
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;

    move-result-object v0

    .line 26391
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderMount(Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ba
    const-string v3, "shared_folder_nest"

    .line 26393
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 26395
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;

    move-result-object v0

    .line 26396
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderNest(Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_bb
    const-string v3, "shared_folder_transfer_ownership"

    .line 26398
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 26400
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;

    move-result-object v0

    .line 26401
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderTransferOwnership(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_bc
    const-string v3, "shared_folder_unmount"

    .line 26403
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 26405
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;

    move-result-object v0

    .line 26406
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedFolderUnmount(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_bd
    const-string v3, "shared_link_add_expiry"

    .line 26408
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 26410
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;

    move-result-object v0

    .line 26411
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkAddExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_be
    const-string v3, "shared_link_change_expiry"

    .line 26413
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 26415
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;

    move-result-object v0

    .line 26416
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkChangeExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_bf
    const-string v3, "shared_link_change_visibility"

    .line 26418
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 26420
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;

    move-result-object v0

    .line 26421
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkChangeVisibility(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c0
    const-string v3, "shared_link_copy"

    .line 26423
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 26425
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;

    move-result-object v0

    .line 26426
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkCopy(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c1
    const-string v3, "shared_link_create"

    .line 26428
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 26430
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;

    move-result-object v0

    .line 26431
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkCreate(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c2
    const-string v3, "shared_link_disable"

    .line 26433
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 26435
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;

    move-result-object v0

    .line 26436
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkDisable(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c3
    const-string v3, "shared_link_download"

    .line 26438
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 26440
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;

    move-result-object v0

    .line 26441
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkDownload(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c4
    const-string v3, "shared_link_remove_expiry"

    .line 26443
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 26445
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;

    move-result-object v0

    .line 26446
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkRemoveExpiry(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c5
    const-string v3, "shared_link_share"

    .line 26448
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 26450
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;

    move-result-object v0

    .line 26451
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkShare(Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c6
    const-string v3, "shared_link_view"

    .line 26453
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 26455
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;

    move-result-object v0

    .line 26456
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedLinkView(Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c7
    const-string v3, "shared_note_opened"

    .line 26458
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 26460
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;

    move-result-object v0

    .line 26461
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharedNoteOpened(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c8
    const-string v3, "shmodel_group_share"

    .line 26463
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 26465
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->a:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;

    move-result-object v0

    .line 26466
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->shmodelGroupShare(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_c9
    const-string v3, "showcase_access_granted"

    .line 26468
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 26470
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;

    move-result-object v0

    .line 26471
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseAccessGranted(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ca
    const-string v3, "showcase_add_member"

    .line 26473
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 26475
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;

    move-result-object v0

    .line 26476
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseAddMember(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_cb
    const-string v3, "showcase_archived"

    .line 26478
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 26480
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;

    move-result-object v0

    .line 26481
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseArchived(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_cc
    const-string v3, "showcase_created"

    .line 26483
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 26485
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;

    move-result-object v0

    .line 26486
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseCreated(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_cd
    const-string v3, "showcase_delete_comment"

    .line 26488
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 26490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;

    move-result-object v0

    .line 26491
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseDeleteComment(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ce
    const-string v3, "showcase_edited"

    .line 26493
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 26495
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;

    move-result-object v0

    .line 26496
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseEdited(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_cf
    const-string v3, "showcase_edit_comment"

    .line 26498
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 26500
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;

    move-result-object v0

    .line 26501
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseEditComment(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d0
    const-string v3, "showcase_file_added"

    .line 26503
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 26505
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;

    move-result-object v0

    .line 26506
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileAdded(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d1
    const-string v3, "showcase_file_download"

    .line 26508
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 26510
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;

    move-result-object v0

    .line 26511
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileDownload(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d2
    const-string v3, "showcase_file_removed"

    .line 26513
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 26515
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;

    move-result-object v0

    .line 26516
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileRemoved(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d3
    const-string v3, "showcase_file_view"

    .line 26518
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 26520
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;

    move-result-object v0

    .line 26521
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseFileView(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d4
    const-string v3, "showcase_permanently_deleted"

    .line 26523
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 26525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;

    move-result-object v0

    .line 26526
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcasePermanentlyDeleted(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d5
    const-string v3, "showcase_post_comment"

    .line 26528
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 26530
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;

    move-result-object v0

    .line 26531
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcasePostComment(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d6
    const-string v3, "showcase_remove_member"

    .line 26533
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 26535
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;

    move-result-object v0

    .line 26536
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRemoveMember(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d7
    const-string v3, "showcase_renamed"

    .line 26538
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 26540
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;

    move-result-object v0

    .line 26541
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRenamed(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d8
    const-string v3, "showcase_request_access"

    .line 26543
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 26545
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;

    move-result-object v0

    .line 26546
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRequestAccess(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_d9
    const-string v3, "showcase_resolve_comment"

    .line 26548
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 26550
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;

    move-result-object v0

    .line 26551
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseResolveComment(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_da
    const-string v3, "showcase_restored"

    .line 26553
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 26555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;

    move-result-object v0

    .line 26556
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseRestored(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_db
    const-string v3, "showcase_trashed"

    .line 26558
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 26560
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;

    move-result-object v0

    .line 26561
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseTrashed(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_dc
    const-string v3, "showcase_trashed_deprecated"

    .line 26563
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 26565
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;

    move-result-object v0

    .line 26566
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseTrashedDeprecated(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_dd
    const-string v3, "showcase_unresolve_comment"

    .line 26568
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 26570
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;

    move-result-object v0

    .line 26571
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUnresolveComment(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_de
    const-string v3, "showcase_untrashed"

    .line 26573
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 26575
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;

    move-result-object v0

    .line 26576
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUntrashed(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_df
    const-string v3, "showcase_untrashed_deprecated"

    .line 26578
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 26580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;

    move-result-object v0

    .line 26581
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseUntrashedDeprecated(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e0
    const-string v3, "showcase_view"

    .line 26583
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 26585
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;

    move-result-object v0

    .line 26586
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseView(Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e1
    const-string v3, "sso_add_cert"

    .line 26588
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 26590
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddCertType;

    move-result-object v0

    .line 26591
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddCert(Lcom/dropbox/core/v2/teamlog/SsoAddCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e2
    const-string v3, "sso_add_login_url"

    .line 26593
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 26595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;

    move-result-object v0

    .line 26596
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e3
    const-string v3, "sso_add_logout_url"

    .line 26598
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 26600
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;

    move-result-object v0

    .line 26601
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoAddLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e4
    const-string v3, "sso_change_cert"

    .line 26603
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 26605
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;

    move-result-object v0

    .line 26606
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeCert(Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e5
    const-string v3, "sso_change_login_url"

    .line 26608
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 26610
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;

    move-result-object v0

    .line 26611
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e6
    const-string v3, "sso_change_logout_url"

    .line 26613
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 26615
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;

    move-result-object v0

    .line 26616
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e7
    const-string v3, "sso_change_saml_identity_mode"

    .line 26618
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 26620
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;

    move-result-object v0

    .line 26621
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangeSamlIdentityMode(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e8
    const-string v3, "sso_remove_cert"

    .line 26623
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 26625
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;

    move-result-object v0

    .line 26626
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveCert(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_e9
    const-string v3, "sso_remove_login_url"

    .line 26628
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 26630
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;

    move-result-object v0

    .line 26631
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveLoginUrl(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ea
    const-string v3, "sso_remove_logout_url"

    .line 26633
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 26635
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;

    move-result-object v0

    .line 26636
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoRemoveLogoutUrl(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_eb
    const-string v3, "team_folder_change_status"

    .line 26638
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 26640
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;

    move-result-object v0

    .line 26641
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderChangeStatus(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ec
    const-string v3, "team_folder_create"

    .line 26643
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 26645
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;

    move-result-object v0

    .line 26646
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderCreate(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ed
    const-string v3, "team_folder_downgrade"

    .line 26648
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 26650
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;

    move-result-object v0

    .line 26651
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderDowngrade(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ee
    const-string v3, "team_folder_permanently_delete"

    .line 26653
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 26655
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;

    move-result-object v0

    .line 26656
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderPermanentlyDelete(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ef
    const-string v3, "team_folder_rename"

    .line 26658
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 26660
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;

    move-result-object v0

    .line 26661
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamFolderRename(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f0
    const-string v3, "team_selective_sync_settings_changed"

    .line 26663
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 26665
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;

    move-result-object v0

    .line 26666
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamSelectiveSyncSettingsChanged(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f1
    const-string v3, "account_capture_change_policy"

    .line 26668
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 26670
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;

    move-result-object v0

    .line 26671
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->accountCaptureChangePolicy(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f2
    const-string v3, "allow_download_disabled"

    .line 26673
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 26675
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;

    move-result-object v0

    .line 26676
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->allowDownloadDisabled(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f3
    const-string v3, "allow_download_enabled"

    .line 26678
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 26680
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;

    move-result-object v0

    .line 26681
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->allowDownloadEnabled(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f4
    const-string v3, "data_placement_restriction_change_policy"

    .line 26683
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 26685
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;

    move-result-object v0

    .line 26686
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->dataPlacementRestrictionChangePolicy(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f5
    const-string v3, "data_placement_restriction_satisfy_policy"

    .line 26688
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 26690
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;

    move-result-object v0

    .line 26691
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->dataPlacementRestrictionSatisfyPolicy(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f6
    const-string v3, "device_approvals_change_desktop_policy"

    .line 26693
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 26695
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;

    move-result-object v0

    .line 26696
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeDesktopPolicy(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f7
    const-string v3, "device_approvals_change_mobile_policy"

    .line 26698
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 26700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;

    move-result-object v0

    .line 26701
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeMobilePolicy(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f8
    const-string v3, "device_approvals_change_overage_action"

    .line 26703
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 26705
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;

    move-result-object v0

    .line 26706
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeOverageAction(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_f9
    const-string v3, "device_approvals_change_unlink_action"

    .line 26708
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 26710
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;

    move-result-object v0

    .line 26711
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->deviceApprovalsChangeUnlinkAction(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_fa
    const-string v3, "directory_restrictions_add_members"

    .line 26713
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 26715
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;

    move-result-object v0

    .line 26716
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->directoryRestrictionsAddMembers(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_fb
    const-string v3, "directory_restrictions_remove_members"

    .line 26718
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 26720
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;

    move-result-object v0

    .line 26721
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->directoryRestrictionsRemoveMembers(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_fc
    const-string v3, "emm_add_exception"

    .line 26723
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 26725
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;

    move-result-object v0

    .line 26726
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmAddException(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_fd
    const-string v3, "emm_change_policy"

    .line 26728
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 26730
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;

    move-result-object v0

    .line 26731
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmChangePolicy(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_fe
    const-string v3, "emm_remove_exception"

    .line 26733
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 26735
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;

    move-result-object v0

    .line 26736
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->emmRemoveException(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_ff
    const-string v3, "extended_version_history_change_policy"

    .line 26738
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 26740
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;

    move-result-object v0

    .line 26741
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->extendedVersionHistoryChangePolicy(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_100
    const-string v3, "file_comments_change_policy"

    .line 26743
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 26745
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;

    move-result-object v0

    .line 26746
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileCommentsChangePolicy(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_101
    const-string v3, "file_requests_change_policy"

    .line 26748
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 26750
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;

    move-result-object v0

    .line 26751
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsChangePolicy(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_102
    const-string v3, "file_requests_emails_enabled"

    .line 26753
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 26755
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;

    move-result-object v0

    .line 26756
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsEmailsEnabled(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_103
    const-string v3, "file_requests_emails_restricted_to_team_only"

    .line 26758
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 26760
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;

    move-result-object v0

    .line 26761
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->fileRequestsEmailsRestrictedToTeamOnly(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_104
    const-string v3, "google_sso_change_policy"

    .line 26763
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 26765
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;

    move-result-object v0

    .line 26766
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->googleSsoChangePolicy(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_105
    const-string v3, "group_user_management_change_policy"

    .line 26768
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 26770
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;

    move-result-object v0

    .line 26771
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->groupUserManagementChangePolicy(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_106
    const-string v3, "member_requests_change_policy"

    .line 26773
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 26775
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;

    move-result-object v0

    .line 26776
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberRequestsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_107
    const-string v3, "member_space_limits_add_exception"

    .line 26778
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 26780
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;

    move-result-object v0

    .line 26781
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsAddException(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_108
    const-string v3, "member_space_limits_change_caps_type_policy"

    .line 26783
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 26785
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;

    move-result-object v0

    .line 26786
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangeCapsTypePolicy(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_109
    const-string v3, "member_space_limits_change_policy"

    .line 26788
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 26790
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;

    move-result-object v0

    .line 26791
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10a
    const-string v3, "member_space_limits_remove_exception"

    .line 26793
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 26795
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;

    move-result-object v0

    .line 26796
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSpaceLimitsRemoveException(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10b
    const-string v3, "member_suggestions_change_policy"

    .line 26798
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 26800
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;

    move-result-object v0

    .line 26801
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->memberSuggestionsChangePolicy(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10c
    const-string v3, "microsoft_office_addin_change_policy"

    .line 26803
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 26805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;

    move-result-object v0

    .line 26806
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->microsoftOfficeAddinChangePolicy(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10d
    const-string v3, "network_control_change_policy"

    .line 26808
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 26810
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;

    move-result-object v0

    .line 26811
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->networkControlChangePolicy(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10e
    const-string v3, "paper_change_deployment_policy"

    .line 26813
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 26815
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;

    move-result-object v0

    .line 26816
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeDeploymentPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10f
    const-string v3, "paper_change_member_link_policy"

    .line 26818
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 26820
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;

    move-result-object v0

    .line 26821
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeMemberLinkPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_110
    const-string v3, "paper_change_member_policy"

    .line 26823
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 26825
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;

    move-result-object v0

    .line 26826
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangeMemberPolicy(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_111
    const-string v3, "paper_change_policy"

    .line 26828
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 26830
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;

    move-result-object v0

    .line 26831
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperChangePolicy(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_112
    const-string v3, "paper_enabled_users_group_addition"

    .line 26833
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 26835
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;

    move-result-object v0

    .line 26836
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperEnabledUsersGroupAddition(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_113
    const-string v3, "paper_enabled_users_group_removal"

    .line 26838
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 26840
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;

    move-result-object v0

    .line 26841
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->paperEnabledUsersGroupRemoval(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_114
    const-string v3, "permanent_delete_change_policy"

    .line 26843
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 26845
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;

    move-result-object v0

    .line 26846
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->permanentDeleteChangePolicy(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_115
    const-string v3, "sharing_change_folder_join_policy"

    .line 26848
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 26850
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;

    move-result-object v0

    .line 26851
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeFolderJoinPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_116
    const-string v3, "sharing_change_link_policy"

    .line 26853
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 26855
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;

    move-result-object v0

    .line 26856
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeLinkPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_117
    const-string v3, "sharing_change_member_policy"

    .line 26858
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 26860
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;

    move-result-object v0

    .line 26861
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->sharingChangeMemberPolicy(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_118
    const-string v3, "showcase_change_download_policy"

    .line 26863
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 26865
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;

    move-result-object v0

    .line 26866
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeDownloadPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_119
    const-string v3, "showcase_change_enabled_policy"

    .line 26868
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 26870
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;

    move-result-object v0

    .line 26871
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeEnabledPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11a
    const-string v3, "showcase_change_external_sharing_policy"

    .line 26873
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 26875
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;

    move-result-object v0

    .line 26876
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->showcaseChangeExternalSharingPolicy(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11b
    const-string v3, "smart_sync_change_policy"

    .line 26878
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 26880
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;

    move-result-object v0

    .line 26881
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncChangePolicy(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11c
    const-string v3, "smart_sync_not_opt_out"

    .line 26883
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 26885
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;

    move-result-object v0

    .line 26886
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncNotOptOut(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11d
    const-string v3, "smart_sync_opt_out"

    .line 26888
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 26890
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;

    move-result-object v0

    .line 26891
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->smartSyncOptOut(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11e
    const-string v3, "sso_change_policy"

    .line 26893
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 26895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;

    move-result-object v0

    .line 26896
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->ssoChangePolicy(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_11f
    const-string v3, "tfa_change_policy"

    .line 26898
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 26900
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;

    move-result-object v0

    .line 26901
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangePolicy(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_120
    const-string v3, "two_account_change_policy"

    .line 26903
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 26905
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;

    move-result-object v0

    .line 26906
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->twoAccountChangePolicy(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_121
    const-string v3, "web_sessions_change_fixed_length_policy"

    .line 26908
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 26910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;

    move-result-object v0

    .line 26911
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->webSessionsChangeFixedLengthPolicy(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_122
    const-string v3, "web_sessions_change_idle_length_policy"

    .line 26913
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 26915
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;

    move-result-object v0

    .line 26916
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->webSessionsChangeIdleLengthPolicy(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_123
    const-string v3, "team_merge_from"

    .line 26918
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 26920
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;

    move-result-object v0

    .line 26921
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeFrom(Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_124
    const-string v3, "team_merge_to"

    .line 26923
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 26925
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeToType;

    move-result-object v0

    .line 26926
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamMergeTo(Lcom/dropbox/core/v2/teamlog/TeamMergeToType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_125
    const-string v3, "team_profile_add_logo"

    .line 26928
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 26930
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;

    move-result-object v0

    .line 26931
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileAddLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_126
    const-string v3, "team_profile_change_default_language"

    .line 26933
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 26935
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;

    move-result-object v0

    .line 26936
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeDefaultLanguage(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_127
    const-string v3, "team_profile_change_logo"

    .line 26938
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 26940
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;

    move-result-object v0

    .line 26941
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_128
    const-string v3, "team_profile_change_name"

    .line 26943
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 26945
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;

    move-result-object v0

    .line 26946
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileChangeName(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_129
    const-string v3, "team_profile_remove_logo"

    .line 26948
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 26950
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;

    move-result-object v0

    .line 26951
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->teamProfileRemoveLogo(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_12a
    const-string v3, "tfa_add_backup_phone"

    .line 26953
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 26955
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;

    move-result-object v0

    .line 26956
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaAddBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto/16 :goto_1

    :cond_12b
    const-string v3, "tfa_add_security_key"

    .line 26958
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 26960
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;

    move-result-object v0

    .line 26961
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaAddSecurityKey(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    :cond_12c
    const-string v3, "tfa_change_backup_phone"

    .line 26963
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 26965
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;

    move-result-object v0

    .line 26966
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangeBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    :cond_12d
    const-string v3, "tfa_change_status"

    .line 26968
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 26970
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;

    move-result-object v0

    .line 26971
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaChangeStatus(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    :cond_12e
    const-string v3, "tfa_remove_backup_phone"

    .line 26973
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 26975
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;

    move-result-object v0

    .line 26976
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaRemoveBackupPhone(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    :cond_12f
    const-string v3, "tfa_remove_security_key"

    .line 26978
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 26980
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;

    move-result-object v0

    .line 26981
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaRemoveSecurityKey(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    :cond_130
    const-string v3, "tfa_reset"

    .line 26983
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 26985
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaResetType$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaResetType;

    move-result-object v0

    .line 26986
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventType;->tfaReset(Lcom/dropbox/core/v2/teamlog/TfaResetType;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    goto :goto_1

    .line 26989
    :cond_131
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->OTHER:Lcom/dropbox/core/v2/teamlog/EventType;

    :goto_1
    if-nez v1, :cond_132

    .line 26992
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 26993
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_132
    return-object v0

    .line 25461
    :cond_133
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 23303
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->tag()Lcom/dropbox/core/v2/teamlog/EventType$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventType$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 25440
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25433
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_reset"

    .line 25434
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25435
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaResetType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eS(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaResetType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaResetType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25436
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25426
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_security_key"

    .line 25427
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25428
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eR(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25429
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25419
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_backup_phone"

    .line 25420
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25421
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eQ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25422
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25412
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_status"

    .line 25413
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eP(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25415
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25405
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_backup_phone"

    .line 25406
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25407
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eO(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25408
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25398
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_security_key"

    .line 25399
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25400
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eN(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25391
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_backup_phone"

    .line 25392
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25393
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eM(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25394
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25384
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_remove_logo"

    .line 25385
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25386
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eL(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25387
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25377
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_name"

    .line 25378
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25379
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eK(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25380
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25370
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_logo"

    .line 25371
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25372
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eJ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25373
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25363
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_default_language"

    .line 25364
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25365
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eI(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25366
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25356
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_add_logo"

    .line 25357
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25358
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eH(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25349
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_to"

    .line 25350
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eG(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeToType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMergeToType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25342
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_from"

    .line 25343
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25344
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eF(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMergeFromType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25335
    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_idle_length_policy"

    .line 25336
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25337
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eE(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25338
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25328
    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_fixed_length_policy"

    .line 25329
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eD(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25331
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25321
    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "two_account_change_policy"

    .line 25322
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25323
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eC(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25324
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25314
    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_policy"

    .line 25315
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eB(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25307
    :pswitch_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_policy"

    .line 25308
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eA(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25310
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25300
    :pswitch_13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_opt_out"

    .line 25301
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25302
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ez(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25303
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25293
    :pswitch_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_not_opt_out"

    .line 25294
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25295
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ey(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25296
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25286
    :pswitch_15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_change_policy"

    .line 25287
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25288
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ex(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25289
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25279
    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_external_sharing_policy"

    .line 25280
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25281
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ew(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25282
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25272
    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_enabled_policy"

    .line 25273
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25274
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ev(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25275
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25265
    :pswitch_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_download_policy"

    .line 25266
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25267
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eu(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25258
    :pswitch_19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_member_policy"

    .line 25259
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25260
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->et(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25251
    :pswitch_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_link_policy"

    .line 25252
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25253
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->es(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25254
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25244
    :pswitch_1b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_folder_join_policy"

    .line 25245
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->er(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25247
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25237
    :pswitch_1c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "permanent_delete_change_policy"

    .line 25238
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25239
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eq(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25240
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25230
    :pswitch_1d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_removal"

    .line 25231
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25232
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ep(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25223
    :pswitch_1e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_addition"

    .line 25224
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25225
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eo(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25226
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25216
    :pswitch_1f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_policy"

    .line 25217
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25218
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->en(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25209
    :pswitch_20
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_policy"

    .line 25210
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25211
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->em(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25212
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25202
    :pswitch_21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_link_policy"

    .line 25203
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->el(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25195
    :pswitch_22
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_deployment_policy"

    .line 25196
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25197
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ek(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25188
    :pswitch_23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "network_control_change_policy"

    .line 25189
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25190
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ej(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25191
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25181
    :pswitch_24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "microsoft_office_addin_change_policy"

    .line 25182
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ei(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25174
    :pswitch_25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggestions_change_policy"

    .line 25175
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eh(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25167
    :pswitch_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_exception"

    .line 25168
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eg(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25170
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25160
    :pswitch_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_policy"

    .line 25161
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25162
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ef(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25153
    :pswitch_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_caps_type_policy"

    .line 25154
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ee(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25146
    :pswitch_29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_exception"

    .line 25147
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25148
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ed(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25149
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25139
    :pswitch_2a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_requests_change_policy"

    .line 25140
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ec(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25132
    :pswitch_2b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_user_management_change_policy"

    .line 25133
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25134
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->eb(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25125
    :pswitch_2c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "google_sso_change_policy"

    .line 25126
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ea(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25118
    :pswitch_2d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_restricted_to_team_only"

    .line 25119
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dZ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25111
    :pswitch_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_enabled"

    .line 25112
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25113
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dY(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25104
    :pswitch_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_change_policy"

    .line 25105
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dX(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25097
    :pswitch_30
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_comments_change_policy"

    .line 25098
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dW(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25090
    :pswitch_31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "extended_version_history_change_policy"

    .line 25091
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25092
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dV(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25093
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25083
    :pswitch_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_remove_exception"

    .line 25084
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25085
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dU(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25086
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25076
    :pswitch_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_change_policy"

    .line 25077
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25078
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dT(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25079
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25069
    :pswitch_34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_add_exception"

    .line 25070
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25071
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dS(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25072
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25062
    :pswitch_35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_remove_members"

    .line 25063
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25064
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dR(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType$a;->a(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25065
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25055
    :pswitch_36
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_add_members"

    .line 25056
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25057
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dQ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType$a;->a(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25058
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25048
    :pswitch_37
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_unlink_action"

    .line 25049
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25050
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dP(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25051
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25041
    :pswitch_38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_overage_action"

    .line 25042
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25043
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dO(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25044
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25034
    :pswitch_39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_mobile_policy"

    .line 25035
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dN(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25037
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25027
    :pswitch_3a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_desktop_policy"

    .line 25028
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25029
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dM(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25030
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25020
    :pswitch_3b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_satisfy_policy"

    .line 25021
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25022
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dL(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25023
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25013
    :pswitch_3c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_change_policy"

    .line 25014
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25015
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dK(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25016
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 25006
    :pswitch_3d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_enabled"

    .line 25007
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25008
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dJ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType$a;->a(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25009
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24999
    :pswitch_3e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_disabled"

    .line 25000
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 25001
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dI(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType$a;->a(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 25002
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24992
    :pswitch_3f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_policy"

    .line 24993
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dH(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24995
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24985
    :pswitch_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_settings_changed"

    .line 24986
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24987
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dG(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24988
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24978
    :pswitch_41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_rename"

    .line 24979
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24980
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dF(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24981
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24971
    :pswitch_42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_permanently_delete"

    .line 24972
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24973
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dE(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24974
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24964
    :pswitch_43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_downgrade"

    .line 24965
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24966
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dD(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24967
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24957
    :pswitch_44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_create"

    .line 24958
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24959
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dC(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24960
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24950
    :pswitch_45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_change_status"

    .line 24951
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24952
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dB(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24953
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24943
    :pswitch_46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_logout_url"

    .line 24944
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24945
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dA(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24946
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24936
    :pswitch_47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_login_url"

    .line 24937
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24938
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dz(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24939
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24929
    :pswitch_48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_cert"

    .line 24930
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dy(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24932
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24922
    :pswitch_49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_saml_identity_mode"

    .line 24923
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24924
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dx(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24925
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24915
    :pswitch_4a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_logout_url"

    .line 24916
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24917
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dw(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24918
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24908
    :pswitch_4b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_login_url"

    .line 24909
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dv(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24911
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24901
    :pswitch_4c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_cert"

    .line 24902
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24903
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->du(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24904
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24894
    :pswitch_4d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_logout_url"

    .line 24895
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24896
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dt(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24897
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24887
    :pswitch_4e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_login_url"

    .line 24888
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ds(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24890
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24880
    :pswitch_4f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_cert"

    .line 24881
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24882
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dr(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoAddCertType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddCertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24883
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24873
    :pswitch_50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_view"

    .line 24874
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24875
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dq(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24876
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24866
    :pswitch_51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_deprecated"

    .line 24867
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24868
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dp(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24869
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24859
    :pswitch_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed"

    .line 24860
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24861
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->do(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24862
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24852
    :pswitch_53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_unresolve_comment"

    .line 24853
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24854
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dn(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24855
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24845
    :pswitch_54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_deprecated"

    .line 24846
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24847
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dm(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24848
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24838
    :pswitch_55
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed"

    .line 24839
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24840
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dl(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24841
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24831
    :pswitch_56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_restored"

    .line 24832
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24833
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dk(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24834
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24824
    :pswitch_57
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_resolve_comment"

    .line 24825
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dj(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24827
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24817
    :pswitch_58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_request_access"

    .line 24818
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24819
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->di(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24820
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24810
    :pswitch_59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_renamed"

    .line 24811
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24812
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dh(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24813
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24803
    :pswitch_5a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_remove_member"

    .line 24804
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dg(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24806
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24796
    :pswitch_5b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_post_comment"

    .line 24797
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24798
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->df(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24799
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24789
    :pswitch_5c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_permanently_deleted"

    .line 24790
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24791
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->de(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24792
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24782
    :pswitch_5d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_view"

    .line 24783
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dd(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24785
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24775
    :pswitch_5e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_removed"

    .line 24776
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24777
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->dc(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24778
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24768
    :pswitch_5f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_download"

    .line 24769
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24770
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->db(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24771
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24761
    :pswitch_60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_added"

    .line 24762
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24763
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->da(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24764
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24754
    :pswitch_61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edit_comment"

    .line 24755
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24756
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cZ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24757
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24747
    :pswitch_62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edited"

    .line 24748
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24749
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cY(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24750
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24740
    :pswitch_63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_delete_comment"

    .line 24741
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24742
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cX(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24743
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24733
    :pswitch_64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_created"

    .line 24734
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24735
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cW(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24736
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24726
    :pswitch_65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_archived"

    .line 24727
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24728
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cV(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24729
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24719
    :pswitch_66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_add_member"

    .line 24720
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24721
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cU(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24722
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24712
    :pswitch_67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_access_granted"

    .line 24713
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24714
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cT(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24715
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24705
    :pswitch_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shmodel_group_share"

    .line 24706
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24707
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->a:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cS(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType$a;->a(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24708
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24698
    :pswitch_69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_note_opened"

    .line 24699
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cR(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24701
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24691
    :pswitch_6a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_view"

    .line 24692
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24693
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cQ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24694
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24684
    :pswitch_6b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_share"

    .line 24685
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24686
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cP(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24687
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24677
    :pswitch_6c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_remove_expiry"

    .line 24678
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24679
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cO(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24680
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24670
    :pswitch_6d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_download"

    .line 24671
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24672
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cN(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24673
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24663
    :pswitch_6e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_disable"

    .line 24664
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24665
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cM(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24666
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24656
    :pswitch_6f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_create"

    .line 24657
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24658
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cL(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24659
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24649
    :pswitch_70
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_copy"

    .line 24650
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24651
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cK(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24652
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24642
    :pswitch_71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_visibility"

    .line 24643
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24644
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cJ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24645
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24635
    :pswitch_72
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_expiry"

    .line 24636
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24637
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cI(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24638
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24628
    :pswitch_73
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_add_expiry"

    .line 24629
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24630
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cH(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24631
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24621
    :pswitch_74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_unmount"

    .line 24622
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24623
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cG(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24624
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24614
    :pswitch_75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_transfer_ownership"

    .line 24615
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24616
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cF(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24617
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24607
    :pswitch_76
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_nest"

    .line 24608
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24609
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cE(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderNestType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24610
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24600
    :pswitch_77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_mount"

    .line 24601
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24602
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cD(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderMountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24603
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24593
    :pswitch_78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_decline_invitation"

    .line 24594
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cC(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24596
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24586
    :pswitch_79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_create"

    .line 24587
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24588
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cB(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24589
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24579
    :pswitch_7a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_policy"

    .line 24580
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24581
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cA(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24582
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24572
    :pswitch_7b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_management_policy"

    .line 24573
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24574
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cz(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24575
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24565
    :pswitch_7c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_inheritance_policy"

    .line 24566
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24567
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cy(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24568
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24558
    :pswitch_7d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_link_policy"

    .line 24559
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24560
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cx(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24561
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24551
    :pswitch_7e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_view"

    .line 24552
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24553
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cw(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentViewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24554
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24544
    :pswitch_7f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_unshare"

    .line 24545
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24546
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cv(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24547
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24537
    :pswitch_80
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_request_access"

    .line 24538
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24539
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cu(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24540
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24530
    :pswitch_81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_member"

    .line 24531
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24532
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ct(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24533
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24523
    :pswitch_82
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_password"

    .line 24524
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cs(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24526
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24516
    :pswitch_83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_expiry"

    .line 24517
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cr(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24519
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24509
    :pswitch_84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_invitees"

    .line 24510
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24511
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cq(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24512
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24502
    :pswitch_85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_relinquish_membership"

    .line 24503
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24504
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cp(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24505
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24495
    :pswitch_86
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_download"

    .line 24496
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24497
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->co(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24498
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24488
    :pswitch_87
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_copy"

    .line 24489
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cn(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24491
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24481
    :pswitch_88
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_claim_invitation"

    .line 24482
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24483
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cm(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24484
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24474
    :pswitch_89
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_viewer_info_policy"

    .line 24475
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24476
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cl(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24477
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24467
    :pswitch_8a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_member_role"

    .line 24468
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24469
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ck(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24470
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24460
    :pswitch_8b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_password"

    .line 24461
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24462
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cj(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24463
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24453
    :pswitch_8c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_expiry"

    .line 24454
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24455
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ci(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24456
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24446
    :pswitch_8d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_audience"

    .line 24447
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24448
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ch(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24449
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24439
    :pswitch_8e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_invitee_role"

    .line 24440
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24441
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cg(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24432
    :pswitch_8f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_downloads_policy"

    .line 24433
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24434
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cf(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24435
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24425
    :pswitch_90
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_member"

    .line 24426
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24427
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ce(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24428
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24418
    :pswitch_91
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_password"

    .line 24419
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24420
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cd(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24421
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24411
    :pswitch_92
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_expiry"

    .line 24412
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24413
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cc(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24414
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24404
    :pswitch_93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_invitees"

    .line 24405
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24406
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->cb(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24407
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24397
    :pswitch_94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_uninvite"

    .line 24398
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24399
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ca(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24400
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24390
    :pswitch_95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_from_oob_link"

    .line 24391
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24392
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bZ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24393
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24383
    :pswitch_96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join"

    .line 24384
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24385
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bY(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamJoinType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24386
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24376
    :pswitch_97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_change_role"

    .line 24377
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24378
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bX(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24369
    :pswitch_98
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite"

    .line 24370
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24371
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bW(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24372
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24362
    :pswitch_99
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_grant_access"

    .line 24363
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bV(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24365
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24355
    :pswitch_9a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_invite_group"

    .line 24356
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->a:Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bU(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupType$a;->a(Lcom/dropbox/core/v2/teamlog/SfInviteGroupType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24358
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24348
    :pswitch_9b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_uninvite"

    .line 24349
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24350
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bT(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteType$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbUninviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24351
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24341
    :pswitch_9c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_change_role"

    .line 24342
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24343
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bS(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24334
    :pswitch_9d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite"

    .line 24335
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bR(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfFbInviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteType$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24337
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24327
    :pswitch_9e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_external_invite_warn"

    .line 24328
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24329
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->a:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bQ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType$a;->a(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24330
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24320
    :pswitch_9f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_allow_non_members_to_view_shared_links"

    .line 24321
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24322
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->a:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bP(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType$a;->a(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24313
    :pswitch_a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_add_group"

    .line 24314
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24315
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->a:Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bO(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SfAddGroupType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupType$a;->a(Lcom/dropbox/core/v2/teamlog/SfAddGroupType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24306
    :pswitch_a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "open_note_shared"

    .line 24307
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24308
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->a:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bN(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType$a;->a(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24309
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24299
    :pswitch_a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_share_receive"

    .line 24300
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24301
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bM(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType$a;->a(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24302
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24292
    :pswitch_a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_shared"

    .line 24293
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24294
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bL(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteSharedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedType$a;->a(Lcom/dropbox/core/v2/teamlog/NoteSharedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24295
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24285
    :pswitch_a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_team_link"

    .line 24286
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24287
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bK(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24288
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24278
    :pswitch_a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_link"

    .line 24279
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24280
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bJ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkType$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclLinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24281
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24271
    :pswitch_a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_invite_only"

    .line 24272
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24273
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bI(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24274
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24264
    :pswitch_a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "collection_share"

    .line 24265
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24266
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->a:Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bH(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CollectionShareType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareType$a;->a(Lcom/dropbox/core/v2/teamlog/CollectionShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24267
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24257
    :pswitch_a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report"

    .line 24258
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->a:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bG(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType$a;->a(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24250
    :pswitch_a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_create_admin_privilege_report"

    .line 24251
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24252
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bF(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24253
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24243
    :pswitch_aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_admin_export_start"

    .line 24244
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24245
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bE(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24246
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24236
    :pswitch_ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report"

    .line 24237
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24238
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->a:Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bD(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportType$a;->a(Lcom/dropbox/core/v2/teamlog/ExportMembersReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24239
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24229
    :pswitch_ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_usage_report"

    .line 24230
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24231
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bC(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24232
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24222
    :pswitch_ad
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_exceptions_report"

    .line 24223
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bB(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24225
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24215
    :pswitch_ae
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_all"

    .line 24216
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24217
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bA(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllType$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordResetAllType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24218
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24208
    :pswitch_af
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset"

    .line 24209
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24210
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bz(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordResetType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetType$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordResetType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24211
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24201
    :pswitch_b0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_change"

    .line 24202
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24203
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->by(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PasswordChangeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeType$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordChangeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24204
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24194
    :pswitch_b1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_team_invite"

    .line 24195
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24196
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bx(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24197
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24187
    :pswitch_b2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_followed"

    .line 24188
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bw(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24180
    :pswitch_b3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_deleted"

    .line 24181
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24182
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bv(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24183
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24173
    :pswitch_b4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_change_subscription"

    .line 24174
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24175
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bu(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24166
    :pswitch_b5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_forbid"

    .line 24167
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24168
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bt(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24169
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24159
    :pswitch_b6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_default_team"

    .line 24160
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bs(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24162
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24152
    :pswitch_b7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_allow"

    .line 24153
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->br(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24155
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24145
    :pswitch_b8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_view"

    .line 24146
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24147
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bq(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocViewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocViewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24138
    :pswitch_b9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_untrashed"

    .line 24139
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24140
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bp(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24131
    :pswitch_ba
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_unresolve_comment"

    .line 24132
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24133
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bo(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24124
    :pswitch_bb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_trashed"

    .line 24125
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bn(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24117
    :pswitch_bc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_team_invite"

    .line 24118
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bm(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24110
    :pswitch_bd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_slack_share"

    .line 24111
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bl(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24103
    :pswitch_be
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_revert"

    .line 24104
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bk(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocRevertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24096
    :pswitch_bf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_resolve_comment"

    .line 24097
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24098
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bj(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24099
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24089
    :pswitch_c0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_request_access"

    .line 24090
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24091
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bi(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24092
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24082
    :pswitch_c1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_mention"

    .line 24083
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bh(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocMentionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24085
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24075
    :pswitch_c2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_followed"

    .line 24076
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24077
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bg(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24078
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24068
    :pswitch_c3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_comment"

    .line 24069
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24070
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bf(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24071
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24061
    :pswitch_c4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit"

    .line 24062
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24063
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->be(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocEditType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocEditType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24064
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24054
    :pswitch_c5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_download"

    .line 24055
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24056
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bd(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24057
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24047
    :pswitch_c6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_delete_comment"

    .line 24048
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24049
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bc(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24050
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24040
    :pswitch_c7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_deleted"

    .line 24041
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24042
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->bb(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24043
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24033
    :pswitch_c8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_subscription"

    .line 24034
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24035
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ba(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24036
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24026
    :pswitch_c9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_sharing_policy"

    .line 24027
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24028
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aZ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24029
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24019
    :pswitch_ca
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_member_role"

    .line 24020
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aY(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24022
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24012
    :pswitch_cb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_add_comment"

    .line 24013
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24014
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aX(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24015
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 24005
    :pswitch_cc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_restore"

    .line 24006
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24007
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aW(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24008
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23998
    :pswitch_cd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_rename"

    .line 23999
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 24000
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aV(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 24001
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23991
    :pswitch_ce
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_member"

    .line 23992
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23993
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aU(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23994
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23984
    :pswitch_cf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_from_folder"

    .line 23985
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23986
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aT(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23987
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23977
    :pswitch_d0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_permanently_delete"

    .line 23978
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aS(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23980
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23970
    :pswitch_d1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_create"

    .line 23971
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23972
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aR(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23973
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23963
    :pswitch_d2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_archive"

    .line 23964
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23965
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aQ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23966
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23956
    :pswitch_d3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_to_folder"

    .line 23957
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23958
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aP(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23959
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23949
    :pswitch_d4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_member"

    .line 23950
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23951
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aO(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23952
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23942
    :pswitch_d5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_mails_policy_changed"

    .line 23943
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23944
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->a:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aN(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType$a;->a(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23945
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23935
    :pswitch_d6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_transfer_account_contents"

    .line 23936
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23937
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aM(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23938
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23928
    :pswitch_d7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggest"

    .line 23929
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23930
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aL(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSuggestType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSuggestType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23931
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23921
    :pswitch_d8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_custom_quota"

    .line 23922
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23923
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aK(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23924
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23914
    :pswitch_d9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_status"

    .line 23915
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aJ(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23917
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23907
    :pswitch_da
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_custom_quota"

    .line 23908
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23909
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aI(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23910
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23900
    :pswitch_db
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_custom_quota"

    .line 23901
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23902
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aH(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23903
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23893
    :pswitch_dc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_permanently_delete_account_contents"

    .line 23894
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aG(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23896
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23886
    :pswitch_dd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_status"

    .line 23887
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23888
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aF(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23889
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23879
    :pswitch_de
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_name"

    .line 23880
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23881
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aE(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23882
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23872
    :pswitch_df
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_membership_type"

    .line 23873
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23874
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aD(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23875
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23865
    :pswitch_e0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_email"

    .line 23866
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23867
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aC(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23868
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23858
    :pswitch_e1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_admin_role"

    .line 23859
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23860
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aB(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23861
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23851
    :pswitch_e2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_name"

    .line 23852
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23853
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->a:Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aA(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/MemberAddNameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameType$a;->a(Lcom/dropbox/core/v2/teamlog/MemberAddNameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23854
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23844
    :pswitch_e3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_error"

    .line 23845
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23846
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->a:Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->az(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SsoErrorType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorType$a;->a(Lcom/dropbox/core/v2/teamlog/SsoErrorType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23847
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23837
    :pswitch_e4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_start"

    .line 23838
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23839
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ay(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType$a;->a(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23840
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23830
    :pswitch_e5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_end"

    .line 23831
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23832
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ax(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType$a;->a(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23833
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23823
    :pswitch_e6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_start"

    .line 23824
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23825
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aw(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType$a;->a(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23826
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23816
    :pswitch_e7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_end"

    .line 23817
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23818
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->av(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType$a;->a(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23819
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23809
    :pswitch_e8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "logout"

    .line 23810
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23811
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->a:Lcom/dropbox/core/v2/teamlog/LogoutType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->au(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LogoutType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LogoutType$a;->a(Lcom/dropbox/core/v2/teamlog/LogoutType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23812
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23802
    :pswitch_e9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_success"

    .line 23803
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23804
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->at(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LoginSuccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessType$a;->a(Lcom/dropbox/core/v2/teamlog/LoginSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23805
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23795
    :pswitch_ea
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_fail"

    .line 23796
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23797
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->as(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/LoginFailType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailType$a;->a(Lcom/dropbox/core/v2/teamlog/LoginFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23798
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23788
    :pswitch_eb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_error"

    .line 23789
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23790
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ar(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmErrorType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmErrorType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23791
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23781
    :pswitch_ec
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_rename"

    .line 23782
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23783
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aq(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRenameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23784
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23774
    :pswitch_ed
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_member"

    .line 23775
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23776
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ap(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23777
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23767
    :pswitch_ee
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_external_id"

    .line 23768
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23769
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ao(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23770
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23760
    :pswitch_ef
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_moved"

    .line 23761
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23762
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->an(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupMovedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupMovedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23763
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23753
    :pswitch_f0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_join_policy_updated"

    .line 23754
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23755
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->am(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23756
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23746
    :pswitch_f1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_description_updated"

    .line 23747
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23748
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->al(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23749
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23739
    :pswitch_f2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_delete"

    .line 23740
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23741
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ak(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupDeleteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23742
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23732
    :pswitch_f3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_create"

    .line 23733
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23734
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aj(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23735
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23725
    :pswitch_f4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_member_role"

    .line 23726
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23727
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ai(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23728
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23718
    :pswitch_f5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_management_type"

    .line 23719
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23720
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ah(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23721
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23711
    :pswitch_f6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_external_id"

    .line 23712
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23713
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ag(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23714
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23704
    :pswitch_f7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_member"

    .line 23705
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23706
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->af(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupAddMemberType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23707
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23697
    :pswitch_f8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_external_id"

    .line 23698
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23699
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ae(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType$a;->a(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23700
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23690
    :pswitch_f9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_receive_file"

    .line 23691
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23692
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ad(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23693
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23683
    :pswitch_fa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_create"

    .line 23684
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23685
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ac(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestCreateType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23686
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23676
    :pswitch_fb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_close"

    .line 23677
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23678
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ab(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestCloseType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23679
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23669
    :pswitch_fc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_change"

    .line 23670
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23671
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->aa(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestChangeType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23672
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23662
    :pswitch_fd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_save_copy_reference"

    .line 23663
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23664
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->a:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Z(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType$a;->a(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23665
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23655
    :pswitch_fe
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rollback_changes"

    .line 23656
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23657
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Y(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23658
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23648
    :pswitch_ff
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_revert"

    .line 23649
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23650
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRevertType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->X(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRevertType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRevertType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23651
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23641
    :pswitch_100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_restore"

    .line 23642
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23643
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->W(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRestoreType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRestoreType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23644
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23634
    :pswitch_101
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rename"

    .line 23635
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23636
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->a:Lcom/dropbox/core/v2/teamlog/FileRenameType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->V(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileRenameType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameType$a;->a(Lcom/dropbox/core/v2/teamlog/FileRenameType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23637
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23627
    :pswitch_102
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_preview"

    .line 23628
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23629
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->a:Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->U(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FilePreviewType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewType$a;->a(Lcom/dropbox/core/v2/teamlog/FilePreviewType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23630
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23620
    :pswitch_103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_permanently_delete"

    .line 23621
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23622
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->T(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType$a;->a(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23623
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23613
    :pswitch_104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_move"

    .line 23614
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23615
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->a:Lcom/dropbox/core/v2/teamlog/FileMoveType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->S(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileMoveType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveType$a;->a(Lcom/dropbox/core/v2/teamlog/FileMoveType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23616
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23606
    :pswitch_105
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_get_copy_reference"

    .line 23607
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23608
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->a:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->R(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType$a;->a(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23609
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23599
    :pswitch_106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit"

    .line 23600
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23601
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->a:Lcom/dropbox/core/v2/teamlog/FileEditType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->Q(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileEditType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditType$a;->a(Lcom/dropbox/core/v2/teamlog/FileEditType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23602
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23592
    :pswitch_107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_download"

    .line 23593
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23594
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->P(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDownloadType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadType$a;->a(Lcom/dropbox/core/v2/teamlog/FileDownloadType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23595
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23585
    :pswitch_108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete"

    .line 23586
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23587
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->O(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDeleteType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteType$a;->a(Lcom/dropbox/core/v2/teamlog/FileDeleteType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23588
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23578
    :pswitch_109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_copy"

    .line 23579
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->a:Lcom/dropbox/core/v2/teamlog/FileCopyType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->N(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileCopyType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyType$a;->a(Lcom/dropbox/core/v2/teamlog/FileCopyType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23581
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23571
    :pswitch_10a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add"

    .line 23572
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23573
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->M(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileAddType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddType$a;->a(Lcom/dropbox/core/v2/teamlog/FileAddType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23574
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23564
    :pswitch_10b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_folder"

    .line 23565
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23566
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->a:Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->L(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/CreateFolderType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderType$a;->a(Lcom/dropbox/core/v2/teamlog/CreateFolderType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23567
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23557
    :pswitch_10c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enabled_domain_invites"

    .line 23558
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23559
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->a:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->K(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType$a;->a(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23560
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23550
    :pswitch_10d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_remove_domain"

    .line 23551
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23552
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->J(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23553
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23543
    :pswitch_10e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_success"

    .line 23544
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23545
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->I(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23546
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23536
    :pswitch_10f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_fail"

    .line 23537
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23538
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->H(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23539
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23529
    :pswitch_110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_yes"

    .line 23530
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23531
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->G(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23532
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23522
    :pswitch_111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_no"

    .line 23523
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23524
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->F(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23525
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23515
    :pswitch_112
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_request_to_join_team"

    .line 23516
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23517
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->E(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23518
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23508
    :pswitch_113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_email_existing_users"

    .line 23509
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23510
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->D(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23511
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23501
    :pswitch_114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_decline_request_to_join_team"

    .line 23502
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23503
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->C(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23504
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23494
    :pswitch_115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_approve_request_to_join_team"

    .line 23495
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23496
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->B(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23497
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23487
    :pswitch_116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "disabled_domain_invites"

    .line 23488
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23489
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->a:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->A(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType$a;->a(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23490
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23480
    :pswitch_117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_relinquish_account"

    .line 23481
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23482
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->z(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23483
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23473
    :pswitch_118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_notification_emails_sent"

    .line 23474
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23475
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->y(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23476
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23466
    :pswitch_119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_migrate_account"

    .line 23467
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23468
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->x(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23469
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23459
    :pswitch_11a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_availability"

    .line 23460
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23461
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->w(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23462
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23452
    :pswitch_11b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_refresh_auth_token"

    .line 23453
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23454
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->v(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType$a;->a(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23455
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23445
    :pswitch_11c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_unlink"

    .line 23446
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23447
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->u(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23448
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23438
    :pswitch_11d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_enabled"

    .line 23439
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23440
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->t(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23441
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23431
    :pswitch_11e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_disabled"

    .line 23432
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23433
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->s(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23434
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23424
    :pswitch_11f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_success"

    .line 23425
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23426
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->r(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23427
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23417
    :pswitch_120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_fail"

    .line 23418
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23419
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->q(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23420
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23410
    :pswitch_121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_success"

    .line 23411
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23412
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->p(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23413
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23403
    :pswitch_122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_fail"

    .line 23404
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23405
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->o(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23406
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23396
    :pswitch_123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_web"

    .line 23397
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23398
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->n(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23399
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23389
    :pswitch_124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_mobile"

    .line 23390
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23391
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->m(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23392
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23382
    :pswitch_125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_desktop"

    .line 23383
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23384
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->l(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23385
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23375
    :pswitch_126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unresolve_comment"

    .line 23376
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23377
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->k(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23378
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23368
    :pswitch_127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unlike_comment"

    .line 23369
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23370
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->j(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23371
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23361
    :pswitch_128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_resolve_comment"

    .line 23362
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23363
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->i(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileResolveCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23364
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23354
    :pswitch_129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_like_comment"

    .line 23355
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23356
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->h(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileLikeCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23357
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23347
    :pswitch_12a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_comment"

    .line 23348
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23349
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->g(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23350
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23340
    :pswitch_12b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_change_comment_subscription"

    .line 23341
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23342
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->a:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->f(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType$a;->a(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23343
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 23333
    :pswitch_12c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_comment"

    .line 23334
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23335
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->e(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/FileAddCommentType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentType$a;->a(Lcom/dropbox/core/v2/teamlog/FileAddCommentType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23336
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 23326
    :pswitch_12d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_user"

    .line 23327
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23328
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->d(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType$a;->a(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23329
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 23319
    :pswitch_12e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_team"

    .line 23320
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23321
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->c(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23322
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 23312
    :pswitch_12f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_user"

    .line 23313
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23314
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->b(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppLinkUserType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserType$a;->a(Lcom/dropbox/core/v2/teamlog/AppLinkUserType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23315
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 23305
    :pswitch_130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_team"

    .line 23306
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23307
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->a(Lcom/dropbox/core/v2/teamlog/EventType;)Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamType$a;->a(Lcom/dropbox/core/v2/teamlog/AppLinkTeamType;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23308
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 23298
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventType$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 23298
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventType$a;->a(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
