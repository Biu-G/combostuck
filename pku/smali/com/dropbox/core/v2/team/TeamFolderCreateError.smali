.class public final Lcom/dropbox/core/v2/team/TeamFolderCreateError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;,
        Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

.field public static final FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

.field public static final INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderCreateError;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

.field private b:Lcom/dropbox/core/v2/files/SyncSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/TeamFolderCreateError;)Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;
    .locals 1

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    return-object v0
.end method

.method public static syncSettingsError(Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;
    .locals 2

    if-eqz p0, :cond_0

    .line 199
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->SYNC_SETTINGS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a(Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    move-result-object p0

    return-object p0

    .line 197
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

    .line 248
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    if-eqz v2, :cond_5

    .line 249
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    .line 250
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 253
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderCreateError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 261
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->equals(Ljava/lang/Object;)Z

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

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSyncSettingsErrorValue()Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->SYNC_SETTINGS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SYNC_SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->name()Ljava/lang/String;

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

    .line 233
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->b:Lcom/dropbox/core/v2/files/SyncSettingsError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFolderNameAlreadyUsed()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolderNameReserved()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidFolderName()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

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

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncSettingsError()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;->SYNC_SETTINGS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 287
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->a:Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderCreateError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
