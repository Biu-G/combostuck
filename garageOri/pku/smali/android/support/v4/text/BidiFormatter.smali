.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$a;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field static final b:Landroid/support/v4/text/BidiFormatter;

.field static final c:Landroid/support/v4/text/BidiFormatter;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Landroid/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/16 v0, 0x200e

    .line 115
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->d:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 120
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->e:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->b:Landroid/support/v4/text/BidiFormatter;

    .line 222
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    sget-object v1, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->c:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    .line 264
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->g:I

    .line 265
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 2

    .line 541
    new-instance v0, Landroid/support/v4/text/BidiFormatter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$a;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$a;->b()I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 2

    .line 300
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 302
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->d:Ljava/lang/String;

    return-object p1

    .line 305
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 306
    :cond_2
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 1

    .line 516
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .line 558
    new-instance v0, Landroid/support/v4/text/BidiFormatter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$a;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$a;->a()I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 330
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 331
    :cond_0
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->d:Ljava/lang/String;

    return-object p1

    .line 333
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 334
    :cond_2
    sget-object p1, Landroid/support/v4/text/BidiFormatter;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 236
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 254
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .line 245
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 1

    .line 280
    iget v0, p0, Landroid/support/v4/text/BidiFormatter;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 358
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Landroid/support/v4/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public isRtlContext()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 506
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 414
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 415
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    .line 419
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 420
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 421
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 423
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 426
    sget-object p2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_3

    :cond_5
    sget-object p2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 483
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 392
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
