.class public final Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;,
        Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

.field private b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 1

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 1

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    .line 112
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 1

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object p0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 2

    if-eqz p0, :cond_0

    .line 210
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 2

    if-eqz p0, :cond_0

    .line 162
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object p0

    return-object p0

    .line 160
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
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    if-eqz v2, :cond_7

    .line 261
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    .line 262
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 265
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 269
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 267
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
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

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->name()Ljava/lang/String;

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

    .line 244
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->b:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->c:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMemberError()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

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

    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->a:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
