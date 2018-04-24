#vi /etc/gdbinit.d/history.gdb 

set history filename ~/.gdb_history
set history save on
set history size 1000

# 打印数组的索引下标  
set print array-indexes on  
  
  
# 每行打印一个结构体成员  
set print pretty on  
  
  
# 退出并保留断点  
define qbp  
save breakpoints ./.gdb_bp  
quit  
end  
document qbp  
Exit and save the breakpoint  
end  
  
  
# 保留历史工作断点  
define downbp  
save breakpoints ./.gdb_bp  
end  
document downbp  
Save the historical work breakpoint  
end  
  
  
# 加载历史工作断点  
define loadbp  
source ./.gdb_bp  
end  
document loadbp  
Load the historical work breakpoint  
end  
