.class Lcom/dropbox/core/v2/teamlog/EventDetails$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/teamlog/EventDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/EventDetails$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21516
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventDetails$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EventDetails$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21515
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 23674
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 23676
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 23677
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23681
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 23682
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_134

    const-string v3, "app_link_team_details"

    .line 23687
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23689
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object v0

    .line 23690
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v3, "app_link_user_details"

    .line 23692
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23694
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object v0

    .line 23695
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    const-string v3, "app_unlink_team_details"

    .line 23697
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23699
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object v0

    .line 23700
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-string v3, "app_unlink_user_details"

    .line 23702
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23704
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object v0

    .line 23705
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-string v3, "file_add_comment_details"

    .line 23707
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23709
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object v0

    .line 23710
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddCommentDetails(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-string v3, "file_change_comment_subscription_details"

    .line 23712
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23714
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object v0

    .line 23715
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileChangeCommentSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const-string v3, "file_delete_comment_details"

    .line 23717
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 23719
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object v0

    .line 23720
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const-string v3, "file_like_comment_details"

    .line 23722
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 23724
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object v0

    .line 23725
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileLikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string v3, "file_resolve_comment_details"

    .line 23727
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 23729
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object v0

    .line 23730
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string v3, "file_unlike_comment_details"

    .line 23732
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 23734
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object v0

    .line 23735
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnlikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    const-string v3, "file_unresolve_comment_details"

    .line 23737
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 23739
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object v0

    .line 23740
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-string v3, "device_change_ip_desktop_details"

    .line 23742
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 23744
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object v0

    .line 23745
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpDesktopDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    const-string v3, "device_change_ip_mobile_details"

    .line 23747
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 23749
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object v0

    .line 23750
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpMobileDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    const-string v3, "device_change_ip_web_details"

    .line 23752
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 23754
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object v0

    .line 23755
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpWebDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const-string v3, "device_delete_on_unlink_fail_details"

    .line 23757
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 23759
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object v0

    .line 23760
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    const-string v3, "device_delete_on_unlink_success_details"

    .line 23762
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 23764
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object v0

    .line 23765
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const-string v3, "device_link_fail_details"

    .line 23767
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 23769
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object v0

    .line 23770
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    const-string v3, "device_link_success_details"

    .line 23772
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 23774
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object v0

    .line 23775
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    const-string v3, "device_management_disabled_details"

    .line 23777
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 23779
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object v0

    .line 23780
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementDisabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    const-string v3, "device_management_enabled_details"

    .line 23782
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 23784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object v0

    .line 23785
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementEnabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    const-string v3, "device_unlink_details"

    .line 23787
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 23789
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object v0

    .line 23790
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceUnlinkDetails(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    const-string v3, "emm_refresh_auth_token_details"

    .line 23792
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 23794
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object v0

    .line 23795
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRefreshAuthTokenDetails(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    const-string v3, "account_capture_change_availability_details"

    .line 23797
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 23799
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object v0

    .line 23800
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangeAvailabilityDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    const-string v3, "account_capture_migrate_account_details"

    .line 23802
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 23804
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object v0

    .line 23805
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureMigrateAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    const-string v3, "account_capture_notification_emails_sent_details"

    .line 23807
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 23809
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;

    move-result-object v0

    .line 23810
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureNotificationEmailsSentDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    const-string v3, "account_capture_relinquish_account_details"

    .line 23812
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 23814
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object v0

    .line 23815
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureRelinquishAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    const-string v3, "disabled_domain_invites_details"

    .line 23817
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 23819
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object v0

    .line 23820
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->disabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    const-string v3, "domain_invites_approve_request_to_join_team_details"

    .line 23822
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 23824
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object v0

    .line 23825
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesApproveRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1c
    const-string v3, "domain_invites_decline_request_to_join_team_details"

    .line 23827
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 23829
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object v0

    .line 23830
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesDeclineRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const-string v3, "domain_invites_email_existing_users_details"

    .line 23832
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 23834
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object v0

    .line 23835
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesEmailExistingUsersDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1e
    const-string v3, "domain_invites_request_to_join_team_details"

    .line 23837
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 23839
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object v0

    .line 23840
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_1f
    const-string v3, "domain_invites_set_invite_new_user_pref_to_no_details"

    .line 23842
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 23844
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object v0

    .line 23845
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToNoDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_20
    const-string v3, "domain_invites_set_invite_new_user_pref_to_yes_details"

    .line 23847
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 23849
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object v0

    .line 23850
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToYesDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    const-string v3, "domain_verification_add_domain_fail_details"

    .line 23852
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 23854
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object v0

    .line 23855
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainFailDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_22
    const-string v3, "domain_verification_add_domain_success_details"

    .line 23857
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 23859
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object v0

    .line 23860
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainSuccessDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    const-string v3, "domain_verification_remove_domain_details"

    .line 23862
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 23864
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object v0

    .line 23865
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationRemoveDomainDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_24
    const-string v3, "enabled_domain_invites_details"

    .line 23867
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 23869
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object v0

    .line 23870
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->enabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_25
    const-string v3, "create_folder_details"

    .line 23872
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 23874
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object v0

    .line 23875
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->createFolderDetails(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_26
    const-string v3, "file_add_details"

    .line 23877
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 23879
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object v0

    .line 23880
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddDetails(Lcom/dropbox/core/v2/teamlog/FileAddDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_27
    const-string v3, "file_copy_details"

    .line 23882
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 23884
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object v0

    .line 23885
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCopyDetails(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_28
    const-string v3, "file_delete_details"

    .line 23887
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 23889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object v0

    .line 23890
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_29
    const-string v3, "file_download_details"

    .line 23892
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 23894
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object v0

    .line 23895
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDownloadDetails(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2a
    const-string v3, "file_edit_details"

    .line 23897
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 23899
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object v0

    .line 23900
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileEditDetails(Lcom/dropbox/core/v2/teamlog/FileEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2b
    const-string v3, "file_get_copy_reference_details"

    .line 23902
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 23904
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object v0

    .line 23905
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileGetCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2c
    const-string v3, "file_move_details"

    .line 23907
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 23909
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object v0

    .line 23910
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileMoveDetails(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2d
    const-string v3, "file_permanently_delete_details"

    .line 23912
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 23914
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object v0

    .line 23915
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2e
    const-string v3, "file_preview_details"

    .line 23917
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 23919
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object v0

    .line 23920
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePreviewDetails(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_2f
    const-string v3, "file_rename_details"

    .line 23922
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 23924
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object v0

    .line 23925
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRenameDetails(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_30
    const-string v3, "file_restore_details"

    .line 23927
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 23929
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object v0

    .line 23930
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRestoreDetails(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_31
    const-string v3, "file_revert_details"

    .line 23932
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 23934
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object v0

    .line 23935
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRevertDetails(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_32
    const-string v3, "file_rollback_changes_details"

    .line 23937
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 23939
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object v0

    .line 23940
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRollbackChangesDetails(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_33
    const-string v3, "file_save_copy_reference_details"

    .line 23942
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 23944
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object v0

    .line 23945
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileSaveCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_34
    const-string v3, "file_request_change_details"

    .line 23947
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 23949
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;

    move-result-object v0

    .line 23950
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestChangeDetails(Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_35
    const-string v3, "file_request_close_details"

    .line 23952
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 23954
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object v0

    .line 23955
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCloseDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_36
    const-string v3, "file_request_create_details"

    .line 23957
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 23959
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object v0

    .line 23960
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCreateDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_37
    const-string v3, "file_request_receive_file_details"

    .line 23962
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 23964
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object v0

    .line 23965
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestReceiveFileDetails(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_38
    const-string v3, "group_add_external_id_details"

    .line 23967
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 23969
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object v0

    .line 23970
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_39
    const-string v3, "group_add_member_details"

    .line 23972
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 23974
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object v0

    .line 23975
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3a
    const-string v3, "group_change_external_id_details"

    .line 23977
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 23979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object v0

    .line 23980
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3b
    const-string v3, "group_change_management_type_details"

    .line 23982
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 23984
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object v0

    .line 23985
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeManagementTypeDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3c
    const-string v3, "group_change_member_role_details"

    .line 23987
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 23989
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object v0

    .line 23990
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3d
    const-string v3, "group_create_details"

    .line 23992
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 23994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object v0

    .line 23995
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupCreateDetails(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3e
    const-string v3, "group_delete_details"

    .line 23997
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 23999
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object v0

    .line 24000
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupDeleteDetails(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_3f
    const-string v3, "group_description_updated_details"

    .line 24002
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 24004
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;

    move-result-object v0

    .line 24005
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupDescriptionUpdatedDetails(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_40
    const-string v3, "group_join_policy_updated_details"

    .line 24007
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 24009
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;

    move-result-object v0

    .line 24010
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupJoinPolicyUpdatedDetails(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_41
    const-string v3, "group_moved_details"

    .line 24012
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 24014
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object v0

    .line 24015
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupMovedDetails(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_42
    const-string v3, "group_remove_external_id_details"

    .line 24017
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 24019
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object v0

    .line 24020
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_43
    const-string v3, "group_remove_member_details"

    .line 24022
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 24024
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object v0

    .line 24025
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_44
    const-string v3, "group_rename_details"

    .line 24027
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 24029
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object v0

    .line 24030
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRenameDetails(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_45
    const-string v3, "emm_error_details"

    .line 24032
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 24034
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;

    move-result-object v0

    .line 24035
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmErrorDetails(Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_46
    const-string v3, "login_fail_details"

    .line 24037
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 24039
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    move-result-object v0

    .line 24040
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->loginFailDetails(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_47
    const-string v3, "login_success_details"

    .line 24042
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 24044
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;

    move-result-object v0

    .line 24045
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->loginSuccessDetails(Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_48
    const-string v3, "logout_details"

    .line 24047
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 24049
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object v0

    .line 24050
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->logoutDetails(Lcom/dropbox/core/v2/teamlog/LogoutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_49
    const-string v3, "reseller_support_session_end_details"

    .line 24052
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 24054
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object v0

    .line 24055
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionEndDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4a
    const-string v3, "reseller_support_session_start_details"

    .line 24057
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 24059
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object v0

    .line 24060
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionStartDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4b
    const-string v3, "sign_in_as_session_end_details"

    .line 24062
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 24064
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object v0

    .line 24065
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionEndDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4c
    const-string v3, "sign_in_as_session_start_details"

    .line 24067
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 24069
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object v0

    .line 24070
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionStartDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4d
    const-string v3, "sso_error_details"

    .line 24072
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 24074
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;

    move-result-object v0

    .line 24075
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoErrorDetails(Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4e
    const-string v3, "member_add_name_details"

    .line 24077
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 24079
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object v0

    .line 24080
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberAddNameDetails(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_4f
    const-string v3, "member_change_admin_role_details"

    .line 24082
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 24084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object v0

    .line 24085
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeAdminRoleDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_50
    const-string v3, "member_change_email_details"

    .line 24087
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 24089
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object v0

    .line 24090
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeEmailDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_51
    const-string v3, "member_change_membership_type_details"

    .line 24092
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 24094
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object v0

    .line 24095
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeMembershipTypeDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_52
    const-string v3, "member_change_name_details"

    .line 24097
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 24099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object v0

    .line 24100
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeNameDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_53
    const-string v3, "member_change_status_details"

    .line 24102
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 24104
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object v0

    .line 24105
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_54
    const-string v3, "member_permanently_delete_account_contents_details"

    .line 24107
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 24109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object v0

    .line 24110
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberPermanentlyDeleteAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_55
    const-string v3, "member_space_limits_add_custom_quota_details"

    .line 24112
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 24114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;

    move-result-object v0

    .line 24115
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsAddCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_56
    const-string v3, "member_space_limits_change_custom_quota_details"

    .line 24117
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 24119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;

    move-result-object v0

    .line 24120
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_57
    const-string v3, "member_space_limits_change_status_details"

    .line 24122
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 24124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object v0

    .line 24125
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_58
    const-string v3, "member_space_limits_remove_custom_quota_details"

    .line 24127
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 24129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;

    move-result-object v0

    .line 24130
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsRemoveCustomQuotaDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_59
    const-string v3, "member_suggest_details"

    .line 24132
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 24134
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object v0

    .line 24135
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5a
    const-string v3, "member_transfer_account_contents_details"

    .line 24137
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 24139
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object v0

    .line 24140
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberTransferAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5b
    const-string v3, "secondary_mails_policy_changed_details"

    .line 24142
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 24144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;

    move-result-object v0

    .line 24145
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->secondaryMailsPolicyChangedDetails(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5c
    const-string v3, "paper_content_add_member_details"

    .line 24147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 24149
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object v0

    .line 24150
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5d
    const-string v3, "paper_content_add_to_folder_details"

    .line 24152
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 24154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object v0

    .line 24155
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddToFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5e
    const-string v3, "paper_content_archive_details"

    .line 24157
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 24159
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object v0

    .line 24160
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentArchiveDetails(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_5f
    const-string v3, "paper_content_create_details"

    .line 24162
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 24164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object v0

    .line 24165
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentCreateDetails(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_60
    const-string v3, "paper_content_permanently_delete_details"

    .line 24167
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 24169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object v0

    .line 24170
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_61
    const-string v3, "paper_content_remove_from_folder_details"

    .line 24172
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 24174
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object v0

    .line 24175
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveFromFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_62
    const-string v3, "paper_content_remove_member_details"

    .line 24177
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 24179
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object v0

    .line 24180
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_63
    const-string v3, "paper_content_rename_details"

    .line 24182
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 24184
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object v0

    .line 24185
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRenameDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_64
    const-string v3, "paper_content_restore_details"

    .line 24187
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 24189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object v0

    .line 24190
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRestoreDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_65
    const-string v3, "paper_doc_add_comment_details"

    .line 24192
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 24194
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object v0

    .line 24195
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocAddCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_66
    const-string v3, "paper_doc_change_member_role_details"

    .line 24197
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 24199
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object v0

    .line 24200
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_67
    const-string v3, "paper_doc_change_sharing_policy_details"

    .line 24202
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 24204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object v0

    .line 24205
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSharingPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_68
    const-string v3, "paper_doc_change_subscription_details"

    .line 24207
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 24209
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object v0

    .line 24210
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_69
    const-string v3, "paper_doc_deleted_details"

    .line 24212
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 24214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object v0

    .line 24215
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6a
    const-string v3, "paper_doc_delete_comment_details"

    .line 24217
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 24219
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object v0

    .line 24220
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6b
    const-string v3, "paper_doc_download_details"

    .line 24222
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 24224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object v0

    .line 24225
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDownloadDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6c
    const-string v3, "paper_doc_edit_details"

    .line 24227
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 24229
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object v0

    .line 24230
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6d
    const-string v3, "paper_doc_edit_comment_details"

    .line 24232
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 24234
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object v0

    .line 24235
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6e
    const-string v3, "paper_doc_followed_details"

    .line 24237
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 24239
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object v0

    .line 24240
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_6f
    const-string v3, "paper_doc_mention_details"

    .line 24242
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 24244
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object v0

    .line 24245
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocMentionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_70
    const-string v3, "paper_doc_request_access_details"

    .line 24247
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 24249
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object v0

    .line 24250
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_71
    const-string v3, "paper_doc_resolve_comment_details"

    .line 24252
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 24254
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object v0

    .line 24255
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_72
    const-string v3, "paper_doc_revert_details"

    .line 24257
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 24259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object v0

    .line 24260
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRevertDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_73
    const-string v3, "paper_doc_slack_share_details"

    .line 24262
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 24264
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object v0

    .line 24265
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocSlackShareDetails(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_74
    const-string v3, "paper_doc_team_invite_details"

    .line 24267
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 24269
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object v0

    .line 24270
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_75
    const-string v3, "paper_doc_trashed_details"

    .line 24272
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 24274
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object v0

    .line 24275
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_76
    const-string v3, "paper_doc_unresolve_comment_details"

    .line 24277
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 24279
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object v0

    .line 24280
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_77
    const-string v3, "paper_doc_untrashed_details"

    .line 24282
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 24284
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object v0

    .line 24285
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUntrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_78
    const-string v3, "paper_doc_view_details"

    .line 24287
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 24289
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object v0

    .line 24290
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocViewDetails(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_79
    const-string v3, "paper_external_view_allow_details"

    .line 24292
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 24294
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object v0

    .line 24295
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewAllowDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7a
    const-string v3, "paper_external_view_default_team_details"

    .line 24297
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 24299
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object v0

    .line 24300
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewDefaultTeamDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7b
    const-string v3, "paper_external_view_forbid_details"

    .line 24302
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 24304
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object v0

    .line 24305
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewForbidDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7c
    const-string v3, "paper_folder_change_subscription_details"

    .line 24307
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 24309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object v0

    .line 24310
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7d
    const-string v3, "paper_folder_deleted_details"

    .line 24312
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 24314
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object v0

    .line 24315
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7e
    const-string v3, "paper_folder_followed_details"

    .line 24317
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 24319
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object v0

    .line 24320
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_7f
    const-string v3, "paper_folder_team_invite_details"

    .line 24322
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 24324
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object v0

    .line 24325
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_80
    const-string v3, "password_change_details"

    .line 24327
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 24329
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object v0

    .line 24330
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordChangeDetails(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_81
    const-string v3, "password_reset_details"

    .line 24332
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 24334
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object v0

    .line 24335
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_82
    const-string v3, "password_reset_all_details"

    .line 24337
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 24339
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object v0

    .line 24340
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetAllDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_83
    const-string v3, "emm_create_exceptions_report_details"

    .line 24342
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 24344
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object v0

    .line 24345
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateExceptionsReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_84
    const-string v3, "emm_create_usage_report_details"

    .line 24347
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 24349
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object v0

    .line 24350
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateUsageReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_85
    const-string v3, "export_members_report_details"

    .line 24352
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 24354
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;

    move-result-object v0

    .line 24355
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->exportMembersReportDetails(Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_86
    const-string v3, "paper_admin_export_start_details"

    .line 24357
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 24359
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object v0

    .line 24360
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperAdminExportStartDetails(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_87
    const-string v3, "smart_sync_create_admin_privilege_report_details"

    .line 24362
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 24364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object v0

    .line 24365
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncCreateAdminPrivilegeReportDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_88
    const-string v3, "team_activity_create_report_details"

    .line 24367
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 24369
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object v0

    .line 24370
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamActivityCreateReportDetails(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_89
    const-string v3, "collection_share_details"

    .line 24372
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 24374
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object v0

    .line 24375
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->collectionShareDetails(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8a
    const-string v3, "note_acl_invite_only_details"

    .line 24377
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 24379
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object v0

    .line 24380
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclInviteOnlyDetails(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8b
    const-string v3, "note_acl_link_details"

    .line 24382
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 24384
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object v0

    .line 24385
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8c
    const-string v3, "note_acl_team_link_details"

    .line 24387
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 24389
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object v0

    .line 24390
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclTeamLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8d
    const-string v3, "note_shared_details"

    .line 24392
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 24394
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object v0

    .line 24395
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteSharedDetails(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8e
    const-string v3, "note_share_receive_details"

    .line 24397
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 24399
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object v0

    .line 24400
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteShareReceiveDetails(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_8f
    const-string v3, "open_note_shared_details"

    .line 24402
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 24404
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object v0

    .line 24405
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->openNoteSharedDetails(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_90
    const-string v3, "sf_add_group_details"

    .line 24407
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 24409
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object v0

    .line 24410
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAddGroupDetails(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_91
    const-string v3, "sf_allow_non_members_to_view_shared_links_details"

    .line 24412
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 24414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object v0

    .line 24415
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAllowNonMembersToViewSharedLinksDetails(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_92
    const-string v3, "sf_external_invite_warn_details"

    .line 24417
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 24419
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object v0

    .line 24420
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfExternalInviteWarnDetails(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_93
    const-string v3, "sf_fb_invite_details"

    .line 24422
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 24424
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;

    move-result-object v0

    .line 24425
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbInviteDetails(Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_94
    const-string v3, "sf_fb_invite_change_role_details"

    .line 24427
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 24429
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;

    move-result-object v0

    .line 24430
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbInviteChangeRoleDetails(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_95
    const-string v3, "sf_fb_uninvite_details"

    .line 24432
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 24434
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;

    move-result-object v0

    .line 24435
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfFbUninviteDetails(Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_96
    const-string v3, "sf_invite_group_details"

    .line 24437
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 24439
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object v0

    .line 24440
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfInviteGroupDetails(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_97
    const-string v3, "sf_team_grant_access_details"

    .line 24442
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 24444
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object v0

    .line 24445
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamGrantAccessDetails(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_98
    const-string v3, "sf_team_invite_details"

    .line 24447
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 24449
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object v0

    .line 24450
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_99
    const-string v3, "sf_team_invite_change_role_details"

    .line 24452
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 24454
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object v0

    .line 24455
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteChangeRoleDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9a
    const-string v3, "sf_team_join_details"

    .line 24457
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 24459
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object v0

    .line 24460
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9b
    const-string v3, "sf_team_join_from_oob_link_details"

    .line 24462
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 24464
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object v0

    .line 24465
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinFromOobLinkDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9c
    const-string v3, "sf_team_uninvite_details"

    .line 24467
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 24469
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object v0

    .line 24470
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamUninviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9d
    const-string v3, "shared_content_add_invitees_details"

    .line 24472
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 24474
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object v0

    .line 24475
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9e
    const-string v3, "shared_content_add_link_expiry_details"

    .line 24477
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 24479
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object v0

    .line 24480
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_9f
    const-string v3, "shared_content_add_link_password_details"

    .line 24482
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 24484
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object v0

    .line 24485
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a0
    const-string v3, "shared_content_add_member_details"

    .line 24487
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 24489
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object v0

    .line 24490
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a1
    const-string v3, "shared_content_change_downloads_policy_details"

    .line 24492
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 24494
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object v0

    .line 24495
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeDownloadsPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a2
    const-string v3, "shared_content_change_invitee_role_details"

    .line 24497
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 24499
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object v0

    .line 24500
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeInviteeRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a3
    const-string v3, "shared_content_change_link_audience_details"

    .line 24502
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 24504
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object v0

    .line 24505
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkAudienceDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a4
    const-string v3, "shared_content_change_link_expiry_details"

    .line 24507
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 24509
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object v0

    .line 24510
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a5
    const-string v3, "shared_content_change_link_password_details"

    .line 24512
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 24514
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object v0

    .line 24515
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a6
    const-string v3, "shared_content_change_member_role_details"

    .line 24517
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 24519
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object v0

    .line 24520
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a7
    const-string v3, "shared_content_change_viewer_info_policy_details"

    .line 24522
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 24524
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object v0

    .line 24525
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeViewerInfoPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a8
    const-string v3, "shared_content_claim_invitation_details"

    .line 24527
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 24529
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object v0

    .line 24530
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentClaimInvitationDetails(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_a9
    const-string v3, "shared_content_copy_details"

    .line 24532
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 24534
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object v0

    .line 24535
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentCopyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_aa
    const-string v3, "shared_content_download_details"

    .line 24537
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 24539
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object v0

    .line 24540
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentDownloadDetails(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ab
    const-string v3, "shared_content_relinquish_membership_details"

    .line 24542
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 24544
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object v0

    .line 24545
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRelinquishMembershipDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ac
    const-string v3, "shared_content_remove_invitees_details"

    .line 24547
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 24549
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;

    move-result-object v0

    .line 24550
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ad
    const-string v3, "shared_content_remove_link_expiry_details"

    .line 24552
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 24554
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object v0

    .line 24555
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ae
    const-string v3, "shared_content_remove_link_password_details"

    .line 24557
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 24559
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object v0

    .line 24560
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_af
    const-string v3, "shared_content_remove_member_details"

    .line 24562
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 24564
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object v0

    .line 24565
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b0
    const-string v3, "shared_content_request_access_details"

    .line 24567
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 24569
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object v0

    .line 24570
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b1
    const-string v3, "shared_content_unshare_details"

    .line 24572
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 24574
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object v0

    .line 24575
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentUnshareDetails(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b2
    const-string v3, "shared_content_view_details"

    .line 24577
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 24579
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object v0

    .line 24580
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentViewDetails(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b3
    const-string v3, "shared_folder_change_link_policy_details"

    .line 24582
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 24584
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object v0

    .line 24585
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b4
    const-string v3, "shared_folder_change_members_inheritance_policy_details"

    .line 24587
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 24589
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;

    move-result-object v0

    .line 24590
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersInheritancePolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b5
    const-string v3, "shared_folder_change_members_management_policy_details"

    .line 24592
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 24594
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;

    move-result-object v0

    .line 24595
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersManagementPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b6
    const-string v3, "shared_folder_change_members_policy_details"

    .line 24597
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 24599
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;

    move-result-object v0

    .line 24600
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMembersPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b7
    const-string v3, "shared_folder_create_details"

    .line 24602
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 24604
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object v0

    .line 24605
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b8
    const-string v3, "shared_folder_decline_invitation_details"

    .line 24607
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 24609
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;

    move-result-object v0

    .line 24610
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderDeclineInvitationDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_b9
    const-string v3, "shared_folder_mount_details"

    .line 24612
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 24614
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object v0

    .line 24615
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderMountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ba
    const-string v3, "shared_folder_nest_details"

    .line 24617
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 24619
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    move-result-object v0

    .line 24620
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderNestDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_bb
    const-string v3, "shared_folder_transfer_ownership_details"

    .line 24622
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 24624
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object v0

    .line 24625
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderTransferOwnershipDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_bc
    const-string v3, "shared_folder_unmount_details"

    .line 24627
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 24629
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object v0

    .line 24630
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderUnmountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_bd
    const-string v3, "shared_link_add_expiry_details"

    .line 24632
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 24634
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;

    move-result-object v0

    .line 24635
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkAddExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_be
    const-string v3, "shared_link_change_expiry_details"

    .line 24637
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 24639
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    move-result-object v0

    .line 24640
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkChangeExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_bf
    const-string v3, "shared_link_change_visibility_details"

    .line 24642
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 24644
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;

    move-result-object v0

    .line 24645
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkChangeVisibilityDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c0
    const-string v3, "shared_link_copy_details"

    .line 24647
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 24649
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;

    move-result-object v0

    .line 24650
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkCopyDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c1
    const-string v3, "shared_link_create_details"

    .line 24652
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 24654
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;

    move-result-object v0

    .line 24655
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkCreateDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c2
    const-string v3, "shared_link_disable_details"

    .line 24657
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 24659
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;

    move-result-object v0

    .line 24660
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkDisableDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c3
    const-string v3, "shared_link_download_details"

    .line 24662
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 24664
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;

    move-result-object v0

    .line 24665
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkDownloadDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c4
    const-string v3, "shared_link_remove_expiry_details"

    .line 24667
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 24669
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;

    move-result-object v0

    .line 24670
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkRemoveExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c5
    const-string v3, "shared_link_share_details"

    .line 24672
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 24674
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;

    move-result-object v0

    .line 24675
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkShareDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c6
    const-string v3, "shared_link_view_details"

    .line 24677
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 24679
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;

    move-result-object v0

    .line 24680
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedLinkViewDetails(Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c7
    const-string v3, "shared_note_opened_details"

    .line 24682
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 24684
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object v0

    .line 24685
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedNoteOpenedDetails(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c8
    const-string v3, "shmodel_group_share_details"

    .line 24687
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 24689
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object v0

    .line 24690
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelGroupShareDetails(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_c9
    const-string v3, "showcase_access_granted_details"

    .line 24692
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 24694
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;

    move-result-object v0

    .line 24695
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseAccessGrantedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ca
    const-string v3, "showcase_add_member_details"

    .line 24697
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 24699
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;

    move-result-object v0

    .line 24700
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseAddMemberDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_cb
    const-string v3, "showcase_archived_details"

    .line 24702
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 24704
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;

    move-result-object v0

    .line 24705
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseArchivedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_cc
    const-string v3, "showcase_created_details"

    .line 24707
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 24709
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;

    move-result-object v0

    .line 24710
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseCreatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_cd
    const-string v3, "showcase_delete_comment_details"

    .line 24712
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 24714
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;

    move-result-object v0

    .line 24715
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ce
    const-string v3, "showcase_edited_details"

    .line 24717
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 24719
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;

    move-result-object v0

    .line 24720
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseEditedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_cf
    const-string v3, "showcase_edit_comment_details"

    .line 24722
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 24724
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;

    move-result-object v0

    .line 24725
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseEditCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d0
    const-string v3, "showcase_file_added_details"

    .line 24727
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 24729
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;

    move-result-object v0

    .line 24730
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileAddedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d1
    const-string v3, "showcase_file_download_details"

    .line 24732
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 24734
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;

    move-result-object v0

    .line 24735
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileDownloadDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d2
    const-string v3, "showcase_file_removed_details"

    .line 24737
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 24739
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;

    move-result-object v0

    .line 24740
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileRemovedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d3
    const-string v3, "showcase_file_view_details"

    .line 24742
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 24744
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;

    move-result-object v0

    .line 24745
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseFileViewDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d4
    const-string v3, "showcase_permanently_deleted_details"

    .line 24747
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 24749
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;

    move-result-object v0

    .line 24750
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcasePermanentlyDeletedDetails(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d5
    const-string v3, "showcase_post_comment_details"

    .line 24752
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 24754
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;

    move-result-object v0

    .line 24755
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcasePostCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d6
    const-string v3, "showcase_remove_member_details"

    .line 24757
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 24759
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;

    move-result-object v0

    .line 24760
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d7
    const-string v3, "showcase_renamed_details"

    .line 24762
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 24764
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;

    move-result-object v0

    .line 24765
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRenamedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d8
    const-string v3, "showcase_request_access_details"

    .line 24767
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 24769
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;

    move-result-object v0

    .line 24770
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_d9
    const-string v3, "showcase_resolve_comment_details"

    .line 24772
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 24774
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;

    move-result-object v0

    .line 24775
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_da
    const-string v3, "showcase_restored_details"

    .line 24777
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 24779
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;

    move-result-object v0

    .line 24780
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseRestoredDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_db
    const-string v3, "showcase_trashed_details"

    .line 24782
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 24784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;

    move-result-object v0

    .line 24785
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseTrashedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_dc
    const-string v3, "showcase_trashed_deprecated_details"

    .line 24787
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 24789
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;

    move-result-object v0

    .line 24790
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseTrashedDeprecatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_dd
    const-string v3, "showcase_unresolve_comment_details"

    .line 24792
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 24794
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;

    move-result-object v0

    .line 24795
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_de
    const-string v3, "showcase_untrashed_details"

    .line 24797
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 24799
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;

    move-result-object v0

    .line 24800
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUntrashedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_df
    const-string v3, "showcase_untrashed_deprecated_details"

    .line 24802
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 24804
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;

    move-result-object v0

    .line 24805
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseUntrashedDeprecatedDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e0
    const-string v3, "showcase_view_details"

    .line 24807
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 24809
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;

    move-result-object v0

    .line 24810
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseViewDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e1
    const-string v3, "sso_add_cert_details"

    .line 24812
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 24814
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object v0

    .line 24815
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddCertDetails(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e2
    const-string v3, "sso_add_login_url_details"

    .line 24817
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 24819
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object v0

    .line 24820
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e3
    const-string v3, "sso_add_logout_url_details"

    .line 24822
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 24824
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object v0

    .line 24825
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e4
    const-string v3, "sso_change_cert_details"

    .line 24827
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 24829
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object v0

    .line 24830
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeCertDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e5
    const-string v3, "sso_change_login_url_details"

    .line 24832
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 24834
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object v0

    .line 24835
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e6
    const-string v3, "sso_change_logout_url_details"

    .line 24837
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 24839
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object v0

    .line 24840
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e7
    const-string v3, "sso_change_saml_identity_mode_details"

    .line 24842
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 24844
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object v0

    .line 24845
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeSamlIdentityModeDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e8
    const-string v3, "sso_remove_cert_details"

    .line 24847
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 24849
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object v0

    .line 24850
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveCertDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_e9
    const-string v3, "sso_remove_login_url_details"

    .line 24852
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 24854
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object v0

    .line 24855
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ea
    const-string v3, "sso_remove_logout_url_details"

    .line 24857
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 24859
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object v0

    .line 24860
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_eb
    const-string v3, "team_folder_change_status_details"

    .line 24862
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 24864
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object v0

    .line 24865
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ec
    const-string v3, "team_folder_create_details"

    .line 24867
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 24869
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object v0

    .line 24870
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ed
    const-string v3, "team_folder_downgrade_details"

    .line 24872
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 24874
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object v0

    .line 24875
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderDowngradeDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ee
    const-string v3, "team_folder_permanently_delete_details"

    .line 24877
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 24879
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object v0

    .line 24880
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ef
    const-string v3, "team_folder_rename_details"

    .line 24882
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 24884
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object v0

    .line 24885
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderRenameDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f0
    const-string v3, "team_selective_sync_settings_changed_details"

    .line 24887
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 24889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;

    move-result-object v0

    .line 24890
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamSelectiveSyncSettingsChangedDetails(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f1
    const-string v3, "account_capture_change_policy_details"

    .line 24892
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 24894
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object v0

    .line 24895
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f2
    const-string v3, "allow_download_disabled_details"

    .line 24897
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 24899
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object v0

    .line 24900
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadDisabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f3
    const-string v3, "allow_download_enabled_details"

    .line 24902
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 24904
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object v0

    .line 24905
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadEnabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f4
    const-string v3, "data_placement_restriction_change_policy_details"

    .line 24907
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 24909
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object v0

    .line 24910
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f5
    const-string v3, "data_placement_restriction_satisfy_policy_details"

    .line 24912
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 24914
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object v0

    .line 24915
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionSatisfyPolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f6
    const-string v3, "device_approvals_change_desktop_policy_details"

    .line 24917
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 24919
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object v0

    .line 24920
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeDesktopPolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f7
    const-string v3, "device_approvals_change_mobile_policy_details"

    .line 24922
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 24924
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object v0

    .line 24925
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeMobilePolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f8
    const-string v3, "device_approvals_change_overage_action_details"

    .line 24927
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 24929
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object v0

    .line 24930
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeOverageActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_f9
    const-string v3, "device_approvals_change_unlink_action_details"

    .line 24932
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 24934
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object v0

    .line 24935
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeUnlinkActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_fa
    const-string v3, "directory_restrictions_add_members_details"

    .line 24937
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 24939
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;

    move-result-object v0

    .line 24940
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->directoryRestrictionsAddMembersDetails(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_fb
    const-string v3, "directory_restrictions_remove_members_details"

    .line 24942
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 24944
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;

    move-result-object v0

    .line 24945
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->directoryRestrictionsRemoveMembersDetails(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_fc
    const-string v3, "emm_add_exception_details"

    .line 24947
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 24949
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object v0

    .line 24950
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_fd
    const-string v3, "emm_change_policy_details"

    .line 24952
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 24954
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object v0

    .line 24955
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_fe
    const-string v3, "emm_remove_exception_details"

    .line 24957
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 24959
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object v0

    .line 24960
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_ff
    const-string v3, "extended_version_history_change_policy_details"

    .line 24962
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 24964
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object v0

    .line 24965
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->extendedVersionHistoryChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_100
    const-string v3, "file_comments_change_policy_details"

    .line 24967
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 24969
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object v0

    .line 24970
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCommentsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_101
    const-string v3, "file_requests_change_policy_details"

    .line 24972
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 24974
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object v0

    .line 24975
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_102
    const-string v3, "file_requests_emails_enabled_details"

    .line 24977
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 24979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object v0

    .line 24980
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsEnabledDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_103
    const-string v3, "file_requests_emails_restricted_to_team_only_details"

    .line 24982
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 24984
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object v0

    .line 24985
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsRestrictedToTeamOnlyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_104
    const-string v3, "google_sso_change_policy_details"

    .line 24987
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 24989
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object v0

    .line 24990
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->googleSsoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_105
    const-string v3, "group_user_management_change_policy_details"

    .line 24992
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 24994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object v0

    .line 24995
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupUserManagementChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_106
    const-string v3, "member_requests_change_policy_details"

    .line 24997
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 24999
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object v0

    .line 25000
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_107
    const-string v3, "member_space_limits_add_exception_details"

    .line 25002
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 25004
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object v0

    .line 25005
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_108
    const-string v3, "member_space_limits_change_caps_type_policy_details"

    .line 25007
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 25009
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;

    move-result-object v0

    .line 25010
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeCapsTypePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_109
    const-string v3, "member_space_limits_change_policy_details"

    .line 25012
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 25014
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object v0

    .line 25015
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10a
    const-string v3, "member_space_limits_remove_exception_details"

    .line 25017
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 25019
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object v0

    .line 25020
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10b
    const-string v3, "member_suggestions_change_policy_details"

    .line 25022
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 25024
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object v0

    .line 25025
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestionsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10c
    const-string v3, "microsoft_office_addin_change_policy_details"

    .line 25027
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 25029
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object v0

    .line 25030
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->microsoftOfficeAddinChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10d
    const-string v3, "network_control_change_policy_details"

    .line 25032
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 25034
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object v0

    .line 25035
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->networkControlChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10e
    const-string v3, "paper_change_deployment_policy_details"

    .line 25037
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 25039
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object v0

    .line 25040
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeDeploymentPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_10f
    const-string v3, "paper_change_member_link_policy_details"

    .line 25042
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 25044
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object v0

    .line 25045
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_110
    const-string v3, "paper_change_member_policy_details"

    .line 25047
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 25049
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object v0

    .line 25050
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_111
    const-string v3, "paper_change_policy_details"

    .line 25052
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 25054
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object v0

    .line 25055
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_112
    const-string v3, "paper_enabled_users_group_addition_details"

    .line 25057
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 25059
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object v0

    .line 25060
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupAdditionDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_113
    const-string v3, "paper_enabled_users_group_removal_details"

    .line 25062
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 25064
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object v0

    .line 25065
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupRemovalDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_114
    const-string v3, "permanent_delete_change_policy_details"

    .line 25067
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 25069
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object v0

    .line 25070
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->permanentDeleteChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_115
    const-string v3, "sharing_change_folder_join_policy_details"

    .line 25072
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 25074
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object v0

    .line 25075
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeFolderJoinPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_116
    const-string v3, "sharing_change_link_policy_details"

    .line 25077
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 25079
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object v0

    .line 25080
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_117
    const-string v3, "sharing_change_member_policy_details"

    .line 25082
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 25084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object v0

    .line 25085
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_118
    const-string v3, "showcase_change_download_policy_details"

    .line 25087
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 25089
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;

    move-result-object v0

    .line 25090
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeDownloadPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_119
    const-string v3, "showcase_change_enabled_policy_details"

    .line 25092
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 25094
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;

    move-result-object v0

    .line 25095
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeEnabledPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11a
    const-string v3, "showcase_change_external_sharing_policy_details"

    .line 25097
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 25099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;

    move-result-object v0

    .line 25100
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->showcaseChangeExternalSharingPolicyDetails(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11b
    const-string v3, "smart_sync_change_policy_details"

    .line 25102
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 25104
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object v0

    .line 25105
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11c
    const-string v3, "smart_sync_not_opt_out_details"

    .line 25107
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 25109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object v0

    .line 25110
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncNotOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11d
    const-string v3, "smart_sync_opt_out_details"

    .line 25112
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 25114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object v0

    .line 25115
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11e
    const-string v3, "sso_change_policy_details"

    .line 25117
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 25119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object v0

    .line 25120
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_11f
    const-string v3, "tfa_change_policy_details"

    .line 25122
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 25124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object v0

    .line 25125
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_120
    const-string v3, "two_account_change_policy_details"

    .line 25127
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 25129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object v0

    .line 25130
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->twoAccountChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_121
    const-string v3, "web_sessions_change_fixed_length_policy_details"

    .line 25132
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 25134
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object v0

    .line 25135
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeFixedLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_122
    const-string v3, "web_sessions_change_idle_length_policy_details"

    .line 25137
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 25139
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object v0

    .line 25140
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeIdleLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_123
    const-string v3, "team_merge_from_details"

    .line 25142
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 25144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object v0

    .line 25145
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeFromDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_124
    const-string v3, "team_merge_to_details"

    .line 25147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 25149
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object v0

    .line 25150
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeToDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_125
    const-string v3, "team_profile_add_logo_details"

    .line 25152
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 25154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object v0

    .line 25155
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileAddLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_126
    const-string v3, "team_profile_change_default_language_details"

    .line 25157
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 25159
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object v0

    .line 25160
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeDefaultLanguageDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_127
    const-string v3, "team_profile_change_logo_details"

    .line 25162
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 25164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object v0

    .line 25165
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_128
    const-string v3, "team_profile_change_name_details"

    .line 25167
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 25169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object v0

    .line 25170
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeNameDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_129
    const-string v3, "team_profile_remove_logo_details"

    .line 25172
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 25174
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object v0

    .line 25175
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileRemoveLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_12a
    const-string v3, "tfa_add_backup_phone_details"

    .line 25177
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 25179
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object v0

    .line 25180
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_12b
    const-string v3, "tfa_add_security_key_details"

    .line 25182
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 25184
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object v0

    .line 25185
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    :cond_12c
    const-string v3, "tfa_change_backup_phone_details"

    .line 25187
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 25189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object v0

    .line 25190
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    :cond_12d
    const-string v3, "tfa_change_status_details"

    .line 25192
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 25194
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object v0

    .line 25195
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    :cond_12e
    const-string v3, "tfa_remove_backup_phone_details"

    .line 25197
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 25199
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object v0

    .line 25200
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    :cond_12f
    const-string v3, "tfa_remove_security_key_details"

    .line 25202
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 25204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object v0

    .line 25205
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    :cond_130
    const-string v3, "tfa_reset_details"

    .line 25207
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 25209
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object v0

    .line 25210
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaResetDetails(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    :cond_131
    const-string v3, "missing_details"

    .line 25212
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 25214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MissingDetails$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object v0

    .line 25215
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->missingDetails(Lcom/dropbox/core/v2/teamlog/MissingDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 25218
    :cond_132
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/EventDetails;

    :goto_1
    if-nez v1, :cond_133

    .line 25221
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 25222
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_133
    return-object v0

    .line 23685
    :cond_134
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 21520
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tag()Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 23664
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23657
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "missing_details"

    .line 23658
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23659
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MissingDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eT(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MissingDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MissingDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23660
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23650
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_reset_details"

    .line 23651
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23652
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eS(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23653
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23643
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_security_key_details"

    .line 23644
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23645
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eR(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23646
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23636
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_remove_backup_phone_details"

    .line 23637
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23638
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eQ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23639
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23629
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_status_details"

    .line 23630
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23631
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eP(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23632
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23622
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_backup_phone_details"

    .line 23623
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23624
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eO(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23625
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23615
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_security_key_details"

    .line 23616
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23617
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eN(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23618
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23608
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_add_backup_phone_details"

    .line 23609
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23610
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eM(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23611
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23601
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_remove_logo_details"

    .line 23602
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23603
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eL(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23604
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23594
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_name_details"

    .line 23595
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23596
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eK(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23597
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23587
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_logo_details"

    .line 23588
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23589
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eJ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23590
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23580
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_change_default_language_details"

    .line 23581
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23582
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eI(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23583
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23573
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_profile_add_logo_details"

    .line 23574
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23575
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eH(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23576
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23566
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_to_details"

    .line 23567
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23568
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eG(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23569
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23559
    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_merge_from_details"

    .line 23560
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23561
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eF(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23562
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23552
    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_idle_length_policy_details"

    .line 23553
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23554
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eE(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23555
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23545
    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "web_sessions_change_fixed_length_policy_details"

    .line 23546
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23547
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eD(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23548
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23538
    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "two_account_change_policy_details"

    .line 23539
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23540
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eC(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23541
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23531
    :pswitch_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "tfa_change_policy_details"

    .line 23532
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23533
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eB(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23534
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23524
    :pswitch_13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_policy_details"

    .line 23525
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23526
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eA(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23527
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23517
    :pswitch_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_opt_out_details"

    .line 23518
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23519
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ez(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23520
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23510
    :pswitch_15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_not_opt_out_details"

    .line 23511
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23512
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ey(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23513
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23503
    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_change_policy_details"

    .line 23504
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23505
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ex(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23506
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23496
    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_external_sharing_policy_details"

    .line 23497
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23498
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ew(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeExternalSharingPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23499
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23489
    :pswitch_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_enabled_policy_details"

    .line 23490
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23491
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ev(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeEnabledPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23492
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23482
    :pswitch_19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_change_download_policy_details"

    .line 23483
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23484
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eu(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseChangeDownloadPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23485
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23475
    :pswitch_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_member_policy_details"

    .line 23476
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23477
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->et(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23478
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23468
    :pswitch_1b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_link_policy_details"

    .line 23469
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23470
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->es(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23471
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23461
    :pswitch_1c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sharing_change_folder_join_policy_details"

    .line 23462
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23463
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->er(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23464
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23454
    :pswitch_1d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "permanent_delete_change_policy_details"

    .line 23455
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23456
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eq(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23457
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23447
    :pswitch_1e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_removal_details"

    .line 23448
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23449
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ep(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23450
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23440
    :pswitch_1f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_enabled_users_group_addition_details"

    .line 23441
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23442
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eo(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23443
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23433
    :pswitch_20
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_policy_details"

    .line 23434
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23435
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->en(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23436
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23426
    :pswitch_21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_policy_details"

    .line 23427
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23428
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->em(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23429
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23419
    :pswitch_22
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_member_link_policy_details"

    .line 23420
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23421
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->el(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23422
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23412
    :pswitch_23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_change_deployment_policy_details"

    .line 23413
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ek(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23415
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23405
    :pswitch_24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "network_control_change_policy_details"

    .line 23406
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23407
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ej(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23408
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23398
    :pswitch_25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "microsoft_office_addin_change_policy_details"

    .line 23399
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23400
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ei(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23391
    :pswitch_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggestions_change_policy_details"

    .line 23392
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23393
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eh(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23394
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23384
    :pswitch_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_exception_details"

    .line 23385
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23386
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eg(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23387
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23377
    :pswitch_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_policy_details"

    .line 23378
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23379
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ef(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23380
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23370
    :pswitch_29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_caps_type_policy_details"

    .line 23371
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23372
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ee(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCapsTypePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23373
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23363
    :pswitch_2a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_exception_details"

    .line 23364
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23365
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ed(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23366
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23356
    :pswitch_2b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_requests_change_policy_details"

    .line 23357
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23358
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ec(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23349
    :pswitch_2c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_user_management_change_policy_details"

    .line 23350
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->eb(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23342
    :pswitch_2d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "google_sso_change_policy_details"

    .line 23343
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23344
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ea(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23335
    :pswitch_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_restricted_to_team_only_details"

    .line 23336
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23337
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dZ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23338
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23328
    :pswitch_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_emails_enabled_details"

    .line 23329
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dY(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23331
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23321
    :pswitch_30
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_requests_change_policy_details"

    .line 23322
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23323
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dX(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23324
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23314
    :pswitch_31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_comments_change_policy_details"

    .line 23315
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dW(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23307
    :pswitch_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "extended_version_history_change_policy_details"

    .line 23308
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dV(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23310
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23300
    :pswitch_33
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_remove_exception_details"

    .line 23301
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23302
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dU(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23303
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23293
    :pswitch_34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_change_policy_details"

    .line 23294
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23295
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dT(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23296
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23286
    :pswitch_35
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_add_exception_details"

    .line 23287
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23288
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dS(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23289
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23279
    :pswitch_36
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_remove_members_details"

    .line 23280
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23281
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dR(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsRemoveMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23282
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23272
    :pswitch_37
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "directory_restrictions_add_members_details"

    .line 23273
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23274
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dQ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DirectoryRestrictionsAddMembersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23275
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23265
    :pswitch_38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_unlink_action_details"

    .line 23266
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23267
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dP(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23258
    :pswitch_39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_overage_action_details"

    .line 23259
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23260
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dO(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23251
    :pswitch_3a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_mobile_policy_details"

    .line 23252
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23253
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dN(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23254
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23244
    :pswitch_3b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_approvals_change_desktop_policy_details"

    .line 23245
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dM(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23247
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23237
    :pswitch_3c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_satisfy_policy_details"

    .line 23238
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23239
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dL(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23240
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23230
    :pswitch_3d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "data_placement_restriction_change_policy_details"

    .line 23231
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23232
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dK(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23233
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23223
    :pswitch_3e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_enabled_details"

    .line 23224
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23225
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dJ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23226
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23216
    :pswitch_3f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "allow_download_disabled_details"

    .line 23217
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23218
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dI(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23209
    :pswitch_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_policy_details"

    .line 23210
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23211
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dH(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23212
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23202
    :pswitch_41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_selective_sync_settings_changed_details"

    .line 23203
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dG(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamSelectiveSyncSettingsChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23195
    :pswitch_42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_rename_details"

    .line 23196
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23197
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dF(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23198
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23188
    :pswitch_43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_permanently_delete_details"

    .line 23189
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23190
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dE(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23191
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23181
    :pswitch_44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_downgrade_details"

    .line 23182
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dD(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23174
    :pswitch_45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_create_details"

    .line 23175
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dC(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23167
    :pswitch_46
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_folder_change_status_details"

    .line 23168
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dB(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23170
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23160
    :pswitch_47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_logout_url_details"

    .line 23161
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23162
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dA(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23163
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23153
    :pswitch_48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_login_url_details"

    .line 23154
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dz(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23156
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23146
    :pswitch_49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_remove_cert_details"

    .line 23147
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23148
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dy(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23149
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23139
    :pswitch_4a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_saml_identity_mode_details"

    .line 23140
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dx(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23132
    :pswitch_4b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_logout_url_details"

    .line 23133
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23134
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dw(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23125
    :pswitch_4c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_login_url_details"

    .line 23126
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dv(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23118
    :pswitch_4d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_change_cert_details"

    .line 23119
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->du(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23111
    :pswitch_4e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_logout_url_details"

    .line 23112
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23113
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dt(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23104
    :pswitch_4f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_login_url_details"

    .line 23105
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ds(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23097
    :pswitch_50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_add_cert_details"

    .line 23098
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dr(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23090
    :pswitch_51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_view_details"

    .line 23091
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23092
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dq(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23093
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23083
    :pswitch_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_deprecated_details"

    .line 23084
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23085
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dp(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDeprecatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23086
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23076
    :pswitch_53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_untrashed_details"

    .line 23077
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23078
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->do(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUntrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23079
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23069
    :pswitch_54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_unresolve_comment_details"

    .line 23070
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23071
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dn(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23072
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23062
    :pswitch_55
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_deprecated_details"

    .line 23063
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23064
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dm(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDeprecatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23065
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23055
    :pswitch_56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_trashed_details"

    .line 23056
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23057
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dl(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseTrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23058
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23048
    :pswitch_57
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_restored_details"

    .line 23049
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23050
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dk(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRestoredDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23051
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23041
    :pswitch_58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_resolve_comment_details"

    .line 23042
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23043
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dj(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23044
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23034
    :pswitch_59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_request_access_details"

    .line 23035
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->di(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23037
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23027
    :pswitch_5a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_renamed_details"

    .line 23028
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23029
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dh(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRenamedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23030
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23020
    :pswitch_5b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_remove_member_details"

    .line 23021
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23022
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dg(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23023
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23013
    :pswitch_5c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_post_comment_details"

    .line 23014
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23015
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->df(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcasePostCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23016
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 23006
    :pswitch_5d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_permanently_deleted_details"

    .line 23007
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23008
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->de(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcasePermanentlyDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23009
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22999
    :pswitch_5e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_view_details"

    .line 23000
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23001
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dd(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 23002
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22992
    :pswitch_5f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_removed_details"

    .line 22993
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dc(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileRemovedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22995
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22985
    :pswitch_60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_download_details"

    .line 22986
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22987
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->db(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22988
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22978
    :pswitch_61
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_file_added_details"

    .line 22979
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22980
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->da(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseFileAddedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22981
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22971
    :pswitch_62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edit_comment_details"

    .line 22972
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22973
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cZ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseEditCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22974
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22964
    :pswitch_63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_edited_details"

    .line 22965
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22966
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cY(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseEditedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22967
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22957
    :pswitch_64
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_delete_comment_details"

    .line 22958
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22959
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cX(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22960
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22950
    :pswitch_65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_created_details"

    .line 22951
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22952
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cW(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseCreatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22953
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22943
    :pswitch_66
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_archived_details"

    .line 22944
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22945
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cV(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseArchivedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22946
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22936
    :pswitch_67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_add_member_details"

    .line 22937
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22938
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cU(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22939
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22929
    :pswitch_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "showcase_access_granted_details"

    .line 22930
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cT(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShowcaseAccessGrantedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22932
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22922
    :pswitch_69
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shmodel_group_share_details"

    .line 22923
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22924
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cS(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22925
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22915
    :pswitch_6a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_note_opened_details"

    .line 22916
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22917
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cR(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22918
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22908
    :pswitch_6b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_view_details"

    .line 22909
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cQ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22911
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22901
    :pswitch_6c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_share_details"

    .line 22902
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22903
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cP(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22904
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22894
    :pswitch_6d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_remove_expiry_details"

    .line 22895
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22896
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cO(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkRemoveExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22897
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22887
    :pswitch_6e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_download_details"

    .line 22888
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cN(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22890
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22880
    :pswitch_6f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_disable_details"

    .line 22881
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22882
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cM(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkDisableDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22883
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22873
    :pswitch_70
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_create_details"

    .line 22874
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22875
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cL(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22876
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22866
    :pswitch_71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_copy_details"

    .line 22867
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22868
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cK(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22869
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22859
    :pswitch_72
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_visibility_details"

    .line 22860
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22861
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cJ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeVisibilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22862
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22852
    :pswitch_73
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_change_expiry_details"

    .line 22853
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22854
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cI(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkChangeExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22855
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22845
    :pswitch_74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_add_expiry_details"

    .line 22846
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22847
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cH(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedLinkAddExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22848
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22838
    :pswitch_75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_unmount_details"

    .line 22839
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22840
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cG(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22841
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22831
    :pswitch_76
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_transfer_ownership_details"

    .line 22832
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22833
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cF(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22834
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22824
    :pswitch_77
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_nest_details"

    .line 22825
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cE(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderNestDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22827
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22817
    :pswitch_78
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_mount_details"

    .line 22818
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22819
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cD(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22820
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22810
    :pswitch_79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_decline_invitation_details"

    .line 22811
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22812
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cC(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderDeclineInvitationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22813
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22803
    :pswitch_7a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_create_details"

    .line 22804
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cB(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22806
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22796
    :pswitch_7b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_policy_details"

    .line 22797
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22798
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cA(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22799
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22789
    :pswitch_7c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_management_policy_details"

    .line 22790
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22791
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cz(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersManagementPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22792
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22782
    :pswitch_7d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_members_inheritance_policy_details"

    .line 22783
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cy(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMembersInheritancePolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22785
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22775
    :pswitch_7e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_folder_change_link_policy_details"

    .line 22776
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22777
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cx(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22778
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22768
    :pswitch_7f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_view_details"

    .line 22769
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22770
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cw(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22771
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22761
    :pswitch_80
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_unshare_details"

    .line 22762
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22763
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cv(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22764
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22754
    :pswitch_81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_request_access_details"

    .line 22755
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22756
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cu(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22757
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22747
    :pswitch_82
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_member_details"

    .line 22748
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22749
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ct(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22750
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22740
    :pswitch_83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_password_details"

    .line 22741
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22742
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cs(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22743
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22733
    :pswitch_84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_link_expiry_details"

    .line 22734
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22735
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cr(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22736
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22726
    :pswitch_85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_remove_invitees_details"

    .line 22727
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22728
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cq(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22729
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22719
    :pswitch_86
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_relinquish_membership_details"

    .line 22720
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22721
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cp(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22722
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22712
    :pswitch_87
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_download_details"

    .line 22713
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22714
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->co(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22715
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22705
    :pswitch_88
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_copy_details"

    .line 22706
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22707
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cn(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22708
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22698
    :pswitch_89
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_claim_invitation_details"

    .line 22699
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cm(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22701
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22691
    :pswitch_8a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_viewer_info_policy_details"

    .line 22692
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22693
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cl(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22694
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22684
    :pswitch_8b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_member_role_details"

    .line 22685
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22686
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ck(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22687
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22677
    :pswitch_8c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_password_details"

    .line 22678
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22679
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cj(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22680
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22670
    :pswitch_8d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_expiry_details"

    .line 22671
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22672
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ci(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22673
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22663
    :pswitch_8e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_link_audience_details"

    .line 22664
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22665
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ch(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22666
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22656
    :pswitch_8f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_invitee_role_details"

    .line 22657
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22658
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cg(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22659
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22649
    :pswitch_90
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_change_downloads_policy_details"

    .line 22650
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22651
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cf(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22652
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22642
    :pswitch_91
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_member_details"

    .line 22643
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22644
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ce(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22645
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22635
    :pswitch_92
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_password_details"

    .line 22636
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22637
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cd(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22638
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22628
    :pswitch_93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_link_expiry_details"

    .line 22629
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22630
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cc(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22631
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22621
    :pswitch_94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_content_add_invitees_details"

    .line 22622
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22623
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->cb(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22624
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22614
    :pswitch_95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_uninvite_details"

    .line 22615
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22616
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ca(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22617
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22607
    :pswitch_96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_from_oob_link_details"

    .line 22608
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22609
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bZ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22610
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22600
    :pswitch_97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_join_details"

    .line 22601
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22602
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bY(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22603
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22593
    :pswitch_98
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_change_role_details"

    .line 22594
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bX(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22596
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22586
    :pswitch_99
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_invite_details"

    .line 22587
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22588
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bW(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22589
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22579
    :pswitch_9a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_team_grant_access_details"

    .line 22580
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22581
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bV(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22582
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22572
    :pswitch_9b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_invite_group_details"

    .line 22573
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22574
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bU(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22575
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22565
    :pswitch_9c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_uninvite_details"

    .line 22566
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22567
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bT(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbUninviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22568
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22558
    :pswitch_9d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_change_role_details"

    .line 22559
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22560
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bS(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22561
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22551
    :pswitch_9e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_fb_invite_details"

    .line 22552
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22553
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bR(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfFbInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22554
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22544
    :pswitch_9f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_external_invite_warn_details"

    .line 22545
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22546
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bQ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22547
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22537
    :pswitch_a0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_allow_non_members_to_view_shared_links_details"

    .line 22538
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22539
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bP(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22540
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22530
    :pswitch_a1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sf_add_group_details"

    .line 22531
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22532
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bO(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22533
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22523
    :pswitch_a2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "open_note_shared_details"

    .line 22524
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bN(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22526
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22516
    :pswitch_a3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_share_receive_details"

    .line 22517
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bM(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22519
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22509
    :pswitch_a4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_shared_details"

    .line 22510
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22511
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bL(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22512
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22502
    :pswitch_a5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_team_link_details"

    .line 22503
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22504
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bK(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22505
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22495
    :pswitch_a6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_link_details"

    .line 22496
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22497
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bJ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22498
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22488
    :pswitch_a7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "note_acl_invite_only_details"

    .line 22489
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bI(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22491
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22481
    :pswitch_a8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "collection_share_details"

    .line 22482
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22483
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bH(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$a;->a(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22484
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22474
    :pswitch_a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_activity_create_report_details"

    .line 22475
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22476
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bG(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$a;->a(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22477
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22467
    :pswitch_aa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "smart_sync_create_admin_privilege_report_details"

    .line 22468
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22469
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bF(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22470
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22460
    :pswitch_ab
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_admin_export_start_details"

    .line 22461
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22462
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bE(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22463
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22453
    :pswitch_ac
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "export_members_report_details"

    .line 22454
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22455
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bD(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ExportMembersReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22456
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22446
    :pswitch_ad
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_usage_report_details"

    .line 22447
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22448
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bC(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22449
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22439
    :pswitch_ae
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_create_exceptions_report_details"

    .line 22440
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22441
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bB(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22432
    :pswitch_af
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_all_details"

    .line 22433
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22434
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bA(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22435
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22425
    :pswitch_b0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_reset_details"

    .line 22426
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22427
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bz(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22428
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22418
    :pswitch_b1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "password_change_details"

    .line 22419
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22420
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->by(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22421
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22411
    :pswitch_b2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_team_invite_details"

    .line 22412
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22413
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bx(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22414
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22404
    :pswitch_b3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_followed_details"

    .line 22405
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22406
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bw(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22407
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22397
    :pswitch_b4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_deleted_details"

    .line 22398
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22399
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bv(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22400
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22390
    :pswitch_b5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_folder_change_subscription_details"

    .line 22391
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22392
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bu(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22393
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22383
    :pswitch_b6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_forbid_details"

    .line 22384
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22385
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bt(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22386
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22376
    :pswitch_b7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_default_team_details"

    .line 22377
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22378
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bs(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22379
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22369
    :pswitch_b8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_external_view_allow_details"

    .line 22370
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22371
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->br(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22372
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22362
    :pswitch_b9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_view_details"

    .line 22363
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bq(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22365
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22355
    :pswitch_ba
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_untrashed_details"

    .line 22356
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bp(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22358
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22348
    :pswitch_bb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_unresolve_comment_details"

    .line 22349
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22350
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bo(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22351
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22341
    :pswitch_bc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_trashed_details"

    .line 22342
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22343
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bn(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22334
    :pswitch_bd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_team_invite_details"

    .line 22335
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bm(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22337
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22327
    :pswitch_be
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_slack_share_details"

    .line 22328
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22329
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bl(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22330
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22320
    :pswitch_bf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_revert_details"

    .line 22321
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22322
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bk(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22313
    :pswitch_c0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_resolve_comment_details"

    .line 22314
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22315
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bj(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22316
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22306
    :pswitch_c1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_request_access_details"

    .line 22307
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22308
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bi(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22309
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22299
    :pswitch_c2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_mention_details"

    .line 22300
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22301
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bh(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22302
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22292
    :pswitch_c3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_followed_details"

    .line 22293
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22294
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bg(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22295
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22285
    :pswitch_c4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_comment_details"

    .line 22286
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22287
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bf(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22288
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22278
    :pswitch_c5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_edit_details"

    .line 22279
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22280
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->be(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22281
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22271
    :pswitch_c6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_download_details"

    .line 22272
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22273
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bd(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22274
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22264
    :pswitch_c7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_delete_comment_details"

    .line 22265
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22266
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bc(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22267
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22257
    :pswitch_c8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_deleted_details"

    .line 22258
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->bb(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22250
    :pswitch_c9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_subscription_details"

    .line 22251
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22252
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ba(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22253
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22243
    :pswitch_ca
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_sharing_policy_details"

    .line 22244
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22245
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aZ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22246
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22236
    :pswitch_cb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_change_member_role_details"

    .line 22237
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22238
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aY(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22239
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22229
    :pswitch_cc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_doc_add_comment_details"

    .line 22230
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22231
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aX(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22232
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22222
    :pswitch_cd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_restore_details"

    .line 22223
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aW(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22225
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22215
    :pswitch_ce
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_rename_details"

    .line 22216
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22217
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aV(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22218
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22208
    :pswitch_cf
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_member_details"

    .line 22209
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22210
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aU(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22211
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22201
    :pswitch_d0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_remove_from_folder_details"

    .line 22202
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22203
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aT(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22204
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22194
    :pswitch_d1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_permanently_delete_details"

    .line 22195
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22196
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aS(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22197
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22187
    :pswitch_d2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_create_details"

    .line 22188
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aR(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22180
    :pswitch_d3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_archive_details"

    .line 22181
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22182
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aQ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22183
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22173
    :pswitch_d4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_to_folder_details"

    .line 22174
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22175
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aP(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22166
    :pswitch_d5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_content_add_member_details"

    .line 22167
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22168
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aO(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22169
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22159
    :pswitch_d6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "secondary_mails_policy_changed_details"

    .line 22160
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aN(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SecondaryMailsPolicyChangedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22162
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22152
    :pswitch_d7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_transfer_account_contents_details"

    .line 22153
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aM(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22155
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22145
    :pswitch_d8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_suggest_details"

    .line 22146
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22147
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aL(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22138
    :pswitch_d9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_remove_custom_quota_details"

    .line 22139
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22140
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aK(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22131
    :pswitch_da
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_status_details"

    .line 22132
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22133
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aJ(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22124
    :pswitch_db
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_change_custom_quota_details"

    .line 22125
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aI(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22117
    :pswitch_dc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_space_limits_add_custom_quota_details"

    .line 22118
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aH(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddCustomQuotaDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22110
    :pswitch_dd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_permanently_delete_account_contents_details"

    .line 22111
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aG(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22103
    :pswitch_de
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_status_details"

    .line 22104
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aF(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22096
    :pswitch_df
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_name_details"

    .line 22097
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22098
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aE(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22099
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22089
    :pswitch_e0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_membership_type_details"

    .line 22090
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22091
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aD(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22092
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22082
    :pswitch_e1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_email_details"

    .line 22083
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aC(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22085
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22075
    :pswitch_e2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_change_admin_role_details"

    .line 22076
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22077
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aB(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22078
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22068
    :pswitch_e3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_add_name_details"

    .line 22069
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22070
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aA(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22071
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22061
    :pswitch_e4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sso_error_details"

    .line 22062
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22063
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->az(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SsoErrorDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SsoErrorDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22064
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22054
    :pswitch_e5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_start_details"

    .line 22055
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22056
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ay(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22057
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22047
    :pswitch_e6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sign_in_as_session_end_details"

    .line 22048
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22049
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ax(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$a;->a(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22050
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22040
    :pswitch_e7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_start_details"

    .line 22041
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22042
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aw(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22043
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22033
    :pswitch_e8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reseller_support_session_end_details"

    .line 22034
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22035
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->a:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->av(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$a;->a(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22036
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22026
    :pswitch_e9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "logout_details"

    .line 22027
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22028
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->au(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$a;->a(Lcom/dropbox/core/v2/teamlog/LogoutDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22029
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22019
    :pswitch_ea
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_success_details"

    .line 22020
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->at(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/LoginSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22022
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22012
    :pswitch_eb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "login_fail_details"

    .line 22013
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22014
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->as(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LoginFailDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/LoginFailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/LoginFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22015
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 22005
    :pswitch_ec
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_error_details"

    .line 22006
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22007
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ar(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmErrorDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmErrorDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22008
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21998
    :pswitch_ed
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_rename_details"

    .line 21999
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 22000
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aq(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 22001
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21991
    :pswitch_ee
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_member_details"

    .line 21992
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21993
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ap(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21994
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21984
    :pswitch_ef
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_remove_external_id_details"

    .line 21985
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21986
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ao(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21987
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21977
    :pswitch_f0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_moved_details"

    .line 21978
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->an(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21980
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21970
    :pswitch_f1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_join_policy_updated_details"

    .line 21971
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21972
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->am(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupJoinPolicyUpdatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21973
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21963
    :pswitch_f2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_description_updated_details"

    .line 21964
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21965
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->al(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupDescriptionUpdatedDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21966
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21956
    :pswitch_f3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_delete_details"

    .line 21957
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21958
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ak(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21959
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21949
    :pswitch_f4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_create_details"

    .line 21950
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21951
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aj(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21952
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21942
    :pswitch_f5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_member_role_details"

    .line 21943
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21944
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ai(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21945
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21935
    :pswitch_f6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_management_type_details"

    .line 21936
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21937
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ah(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21938
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21928
    :pswitch_f7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_change_external_id_details"

    .line 21929
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21930
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ag(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21931
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21921
    :pswitch_f8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_member_details"

    .line 21922
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21923
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->af(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21924
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21914
    :pswitch_f9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "group_add_external_id_details"

    .line 21915
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->a:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ae(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$a;->a(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21917
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21907
    :pswitch_fa
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_receive_file_details"

    .line 21908
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21909
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ad(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21910
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21900
    :pswitch_fb
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_create_details"

    .line 21901
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21902
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ac(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21903
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21893
    :pswitch_fc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_close_details"

    .line 21894
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ab(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21896
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21886
    :pswitch_fd
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_request_change_details"

    .line 21887
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21888
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->aa(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRequestChangeDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21889
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21879
    :pswitch_fe
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_save_copy_reference_details"

    .line 21880
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21881
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Z(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21882
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21872
    :pswitch_ff
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rollback_changes_details"

    .line 21873
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21874
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Y(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21875
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21865
    :pswitch_100
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_revert_details"

    .line 21866
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21867
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->X(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21868
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21858
    :pswitch_101
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_restore_details"

    .line 21859
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21860
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->W(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21861
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21851
    :pswitch_102
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_rename_details"

    .line 21852
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21853
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->V(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21854
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21844
    :pswitch_103
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_preview_details"

    .line 21845
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21846
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->U(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21847
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21837
    :pswitch_104
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_permanently_delete_details"

    .line 21838
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21839
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->T(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21840
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21830
    :pswitch_105
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_move_details"

    .line 21831
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21832
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->S(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21833
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21823
    :pswitch_106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_get_copy_reference_details"

    .line 21824
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21825
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->R(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21826
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21816
    :pswitch_107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_edit_details"

    .line 21817
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21818
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->Q(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileEditDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21819
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21809
    :pswitch_108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_download_details"

    .line 21810
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21811
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->P(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21812
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21802
    :pswitch_109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_details"

    .line 21803
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21804
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->O(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21805
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21795
    :pswitch_10a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_copy_details"

    .line 21796
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21797
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->N(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21798
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21788
    :pswitch_10b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_details"

    .line 21789
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21790
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->M(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileAddDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21791
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21781
    :pswitch_10c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "create_folder_details"

    .line 21782
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21783
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->a:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->L(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$a;->a(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21784
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21774
    :pswitch_10d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "enabled_domain_invites_details"

    .line 21775
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21776
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->K(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21777
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21767
    :pswitch_10e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_remove_domain_details"

    .line 21768
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21769
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->J(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21770
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21760
    :pswitch_10f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_success_details"

    .line 21761
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21762
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->I(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21763
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21753
    :pswitch_110
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_verification_add_domain_fail_details"

    .line 21754
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21755
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->H(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21756
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21746
    :pswitch_111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_yes_details"

    .line 21747
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21748
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->G(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21749
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21739
    :pswitch_112
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_set_invite_new_user_pref_to_no_details"

    .line 21740
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21741
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->F(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21742
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21732
    :pswitch_113
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_request_to_join_team_details"

    .line 21733
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21734
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->E(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21735
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21725
    :pswitch_114
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_email_existing_users_details"

    .line 21726
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21727
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->D(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21728
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21718
    :pswitch_115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_decline_request_to_join_team_details"

    .line 21719
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21720
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->C(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21721
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21711
    :pswitch_116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "domain_invites_approve_request_to_join_team_details"

    .line 21712
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21713
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->B(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21714
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21704
    :pswitch_117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "disabled_domain_invites_details"

    .line 21705
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21706
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->A(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21707
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21697
    :pswitch_118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_relinquish_account_details"

    .line 21698
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21699
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->z(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21700
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21690
    :pswitch_119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_notification_emails_sent_details"

    .line 21691
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21692
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->y(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureNotificationEmailsSentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21693
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21683
    :pswitch_11a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_migrate_account_details"

    .line 21684
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21685
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->x(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21686
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21676
    :pswitch_11b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "account_capture_change_availability_details"

    .line 21677
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21678
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->w(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21679
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21669
    :pswitch_11c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "emm_refresh_auth_token_details"

    .line 21670
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21671
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->a:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->v(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21672
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21662
    :pswitch_11d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_unlink_details"

    .line 21663
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21664
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->u(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21665
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21655
    :pswitch_11e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_enabled_details"

    .line 21656
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21657
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->t(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21658
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21648
    :pswitch_11f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_management_disabled_details"

    .line 21649
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21650
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->s(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21651
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21641
    :pswitch_120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_success_details"

    .line 21642
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21643
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->r(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21644
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21634
    :pswitch_121
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_link_fail_details"

    .line 21635
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21636
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->q(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21637
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21627
    :pswitch_122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_success_details"

    .line 21628
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21629
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->p(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21630
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21620
    :pswitch_123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_delete_on_unlink_fail_details"

    .line 21621
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21622
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->o(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21623
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21613
    :pswitch_124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_web_details"

    .line 21614
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21615
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->n(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21616
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21606
    :pswitch_125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_mobile_details"

    .line 21607
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21608
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->m(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21609
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21599
    :pswitch_126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "device_change_ip_desktop_details"

    .line 21600
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21601
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->a:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->l(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$a;->a(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21602
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21592
    :pswitch_127
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unresolve_comment_details"

    .line 21593
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21594
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->k(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21595
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21585
    :pswitch_128
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_unlike_comment_details"

    .line 21586
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21587
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->j(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21588
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21578
    :pswitch_129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_resolve_comment_details"

    .line 21579
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->i(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21581
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21571
    :pswitch_12a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_like_comment_details"

    .line 21572
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21573
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->h(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21574
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21564
    :pswitch_12b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_delete_comment_details"

    .line 21565
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21566
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->g(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21567
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 21557
    :pswitch_12c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_change_comment_subscription_details"

    .line 21558
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21559
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->f(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21560
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 21550
    :pswitch_12d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "file_add_comment_details"

    .line 21551
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21552
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->e(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$a;->a(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21553
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 21543
    :pswitch_12e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_user_details"

    .line 21544
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21545
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->d(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21546
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 21536
    :pswitch_12f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_unlink_team_details"

    .line 21537
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21538
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->c(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21539
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 21529
    :pswitch_130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_user_details"

    .line 21530
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21531
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->b(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21532
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 21522
    :pswitch_131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "app_link_team_details"

    .line 21523
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 21524
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->a:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->a(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object p1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$a;->a(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 21525
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_131
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

    .line 21515
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventDetails;

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

    .line 21515
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventDetails;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$a;->a(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
