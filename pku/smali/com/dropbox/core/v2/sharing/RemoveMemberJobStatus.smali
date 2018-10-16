.class public final Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;,
        Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 65
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 81
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 82
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 97
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object p0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 2

    if-eqz p0, :cond_0

    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object p0

    return-object p0

    .line 203
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

    .line 242
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    if-eqz v2, :cond_7

    .line 243
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .line 244
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 247
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 253
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 251
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_2
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->c:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isComplete()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;->a:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
