ObjDir  = :o:
App		= sample
Objects = {ObjDir}sample.obj

{App} � {ObjDir}sample.lnk
	DuplicateIIGS -y -mac {ObjDir}sample.bin :

{ObjDir}sample.lnk � {Objects}
	LinkIIGS -x �
		-lib :libs:rt.lib �
		{Objects} �
		-lseg sample {ObjDir}sample.obj �
		:libs:rt.lib �
		-o {ObjDir}sample.lnk
	makebiniigs {ObjDir}sample.lnk -o {ObjDir}sample.bin -org $800

{ObjDir}sample.obj	� sys.equ sample.aii
	asmiigs sample.aii -o {ObjDir}sample.obj
