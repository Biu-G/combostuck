.class Landroid/support/v4/graphics/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/graphics/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/graphics/c;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/graphics/c$a<",
        "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/graphics/c;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/c;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroid/support/v4/graphics/c$1;->a:Landroid/support/v4/graphics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/provider/FontsContractCompat$FontInfo;)I
    .locals 0

    .line 74
    invoke-virtual {p1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/c$1;->b(Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 71
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/c$1;->a(Landroid/support/v4/provider/FontsContractCompat$FontInfo;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Z
    .locals 0

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result p1

    return p1
.end method
