.class final Lcn/edu/pku/pkurunner/Model/Point$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/edu/pku/pkurunner/Model/Point;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/edu/pku/pkurunner/Model/Point;
    .locals 9

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 205
    new-instance p1, Lcn/edu/pku/pkurunner/Model/Point;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(IIDDI)V

    .line 206
    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Model/Point$1;->createFromParcel(Landroid/os/Parcel;)Lcn/edu/pku/pkurunner/Model/Point;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/edu/pku/pkurunner/Model/Point;
    .locals 0

    .line 212
    new-array p1, p1, [Lcn/edu/pku/pkurunner/Model/Point;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Model/Point$1;->newArray(I)[Lcn/edu/pku/pkurunner/Model/Point;

    move-result-object p1

    return-object p1
.end method
