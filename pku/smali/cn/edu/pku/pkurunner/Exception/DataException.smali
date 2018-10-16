.class public Lcn/edu/pku/pkurunner/Exception/DataException;
.super Lcn/edu/pku/pkurunner/Exception/SimpleException;
.source "SourceFile"


# static fields
.field public static final Database_Delete_Failure:I = 0x8

.field public static final Database_Open_Failure:I = 0x1

.field public static final Database_Update_Failure:I = 0x4

.field public static final Database_Write_Failure:I = 0x2

.field public static final No_User_Has_The_ID:I = 0x80

.field public static final Record_Has_Uploaded:I = 0x40

.field public static final Record_Not_Found:I = 0x20

.field public static final Record_Not_Uploaded:I = 0x10


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Exception/SimpleException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Exception/SimpleException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/Exception/SimpleException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
