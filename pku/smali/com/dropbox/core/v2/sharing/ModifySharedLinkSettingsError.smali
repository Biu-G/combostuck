.class public final Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;,
        Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    }
.end annotation


# static fields
.field public static final EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 1

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    .line 103
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 1

    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 119
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object p0
.end method

.method public static settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 2

    if-eqz p0, :cond_0

    .line 210
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object p0

    return-object p0

    .line 208
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

    .line 260
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    if-eqz v2, :cond_5

    .line 261
    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 262
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 265
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->equals(Ljava/lang/Object;)Z

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

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSettingsErrorValue()Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->name()Ljava/lang/String;

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

    .line 244
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->b:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isEmailNotVerified()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

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

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSettingsError()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedLinkAccessDenied()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedLinkNotFound()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsupportedLinkType()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;->a:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
