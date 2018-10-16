.class public Landroid/support/design/resources/TextAppearanceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShouldLoadFontSynchronously(Z)V
    .locals 0

    .line 32
    sput-boolean p0, Landroid/support/design/resources/TextAppearanceConfig;->a:Z

    return-void
.end method

.method public static shouldLoadFontSynchronously()Z
    .locals 1

    .line 37
    sget-boolean v0, Landroid/support/design/resources/TextAppearanceConfig;->a:Z

    return v0
.end method
