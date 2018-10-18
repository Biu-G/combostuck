.class public final Lcom/dropbox/core/v2/files/SyncSettingsError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;,
        Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/SyncSettingsError;

.field public static final UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/SyncSettingsError;

.field public static final UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/SyncSettingsError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/SyncSettingsError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/SyncSettingsError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SyncSettingsError;->a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->OTHER:Lcom/dropbox/core/v2/files/SyncSettingsError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/SyncSettingsError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;)Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 1

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    .line 90
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 1

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    .line 104
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    .line 105
    iput-object p2, v0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/SyncSettingsError;
    .locals 2

    if-eqz p0, :cond_0

    .line 155
    new-instance v0, Lcom/dropbox/core/v2/files/SyncSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SyncSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SyncSettingsError;->a(Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/SyncSettingsError;

    move-result-object p0

    return-object p0

    .line 153
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

    .line 223
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/SyncSettingsError;

    if-eqz v2, :cond_5

    .line 224
    check-cast p1, Lcom/dropbox/core/v2/files/SyncSettingsError;

    .line 225
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 228
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/SyncSettingsError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->ordinal()I

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

    .line 230
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->name()Ljava/lang/String;

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

    .line 208
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPath()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsupportedCombination()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->UNSUPPORTED_COMBINATION:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsupportedConfiguration()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;->UNSUPPORTED_CONFIGURATION:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SyncSettingsError;->a:Lcom/dropbox/core/v2/files/SyncSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 248
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 260
    sget-object v0, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SyncSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
