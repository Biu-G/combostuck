.class public final enum Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

.field public static final enum ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    const-string v1, "ID_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    const-string v1, "GROUP_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->a:[Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .locals 1

    .line 30
    const-class v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->a:[Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    return-object v0
.end method