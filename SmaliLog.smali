.class public Lcom/SmaliLog;
.super Ljava/lang/Object;
.source "SmaliLog.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "SN"

    sput-object v0, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logBoolean(Z)V
    .locals 2
    .param p0, "testbool"    # Z

    .prologue
    .line 29
    sget-object v0, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static printHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 26
    const-string v2, ""

    .line 27
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 28
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static logBytes([B)V
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 16
    sget-object v0, Lcom/SmaliLog;->TAG:Ljava/lang/String;
	
	invoke-static {p0}, Lcom/SmaliLog;->printHexString([B)Ljava/lang/String;

	move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public static logBytesOneByOne([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 20
    array-length v1, p0

    .line 21
    .local v1, "len":I
    sget-object v2, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    const-string v3, "logging bytes begin  ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 23
    sget-object v2, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    aget-byte v4, p0, v0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    sget-object v2, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    const-string v3, "logging bytes end    ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public static logString(Ljava/lang/String;)V
    .locals 1
    .param p0, "abc"    # Ljava/lang/String;

    .prologue
    .line 12
    sget-object v0, Lcom/SmaliLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method
