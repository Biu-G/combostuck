.class Landroid/support/v4/text/PrecomputedTextCompat$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/PrecomputedTextCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/support/v4/text/PrecomputedTextCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/text/PrecomputedTextCompat$Params;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroid/support/v4/text/PrecomputedTextCompat$Params;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$a$a;->a:Landroid/support/v4/text/PrecomputedTextCompat$Params;

    .line 571
    iput-object p2, p0, Landroid/support/v4/text/PrecomputedTextCompat$a$a;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/text/PrecomputedTextCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$a$a;->b:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/v4/text/PrecomputedTextCompat$a$a;->a:Landroid/support/v4/text/PrecomputedTextCompat$Params;

    invoke-static {v0, v1}, Landroid/support/v4/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Landroid/support/v4/text/PrecomputedTextCompat$Params;)Landroid/support/v4/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Landroid/support/v4/text/PrecomputedTextCompat$a$a;->a()Landroid/support/v4/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method