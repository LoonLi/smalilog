This is a smali log model.

I get this from others,but i impoved it that it can log byte[] in string.

    invoke-static {v0}, Lcom/SmaliLog;->logBoolean(Z)V
    invoke-static {v0}, Lcom/SmaliLog;->logString(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/SmaliLog;->logBytes([B)V
    invoke-static {v0}, Lcom/SmaliLog;->logBytesOneByOne([B)V

Put it in package `com`.