.class final Landroid/support/v4/widget/SlidingPaneLayout$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v4/widget/SlidingPaneLayout$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$d;
    .locals 2

    .line 1503
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$d;
    .locals 1

    .line 1498
    new-instance p2, Landroid/support/v4/widget/SlidingPaneLayout$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p2
.end method

.method public a(I)[Landroid/support/v4/widget/SlidingPaneLayout$d;
    .locals 0

    .line 1508
    new-array p1, p1, [Landroid/support/v4/widget/SlidingPaneLayout$d;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1495
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$d$1;->a(Landroid/os/Parcel;)Landroid/support/v4/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1495
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$d$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1495
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$d$1;->a(I)[Landroid/support/v4/widget/SlidingPaneLayout$d;

    move-result-object p1

    return-object p1
.end method
