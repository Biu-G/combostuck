.class synthetic Lcom/dropbox/core/v2/teamlog/DeviceType$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/DeviceType;
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

    .line 39
    invoke-static {}, Lcom/dropbox/core/v2/teamlog/DeviceType;->values()[Lcom/dropbox/core/v2/teamlog/DeviceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/teamlog/DeviceType$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceType$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/DeviceType;->DESKTOP:Lcom/dropbox/core/v2/teamlog/DeviceType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/DeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceType$1;->a:[I

    sget-object v1, Lcom/dropbox/core/v2/teamlog/DeviceType;->MOBILE:Lcom/dropbox/core/v2/teamlog/DeviceType;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/DeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
