.class public Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;
.super Landroid/text/method/PasswordTransformationMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    new-instance p2, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;

    invoke-direct {p2, p0, p1}, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;-><init>(Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;Ljava/lang/CharSequence;)V

    return-object p2
.end method
