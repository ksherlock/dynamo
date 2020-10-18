delete -i :libs:rt.lib
asmiigs rt.aii -o :libs:rt.obj
makelibiigs -r -l :libs:rt.lib :libs:rt.obj
