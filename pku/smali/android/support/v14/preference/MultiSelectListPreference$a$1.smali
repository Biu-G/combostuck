.class final Landroid/support/v14/preference/MultiSelectListPreference$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/MultiSelectListPreference$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v14/preference/MultiSelectListPreference$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v14/preference/MultiSelectListPreference$a;
    .locals 1

    .line 268
    new-instance v0, Landroid/support/v14/preference/MultiSelectListPreference$a;

    invoke-direct {v0, p1}, Landroid/support/v14/preference/MultiSelectListPreference$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v14/preference/MultiSelectListPreference$a;
    .locals 0

    .line 273
    new-array p1, p1, [Landroid/support/v14/preference/MultiSelectListPreference$a;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Landroid/support/v14/preference/MultiSelectListPreference$a$1;->a(Landroid/os/Parcel;)Landroid/support/v14/preference/MultiSelectListPreference$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Landroid/support/v14/preference/MultiSelectListPreference$a$1;->a(I)[Landroid/support/v14/preference/MultiSelectListPreference$a;

    move-result-object p1

    return-object p1
.end method