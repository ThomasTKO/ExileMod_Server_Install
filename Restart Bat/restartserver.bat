timeout 2
@echo off
start "arma3" /min /high "arma3server.exe" -port=2302 "-config=Config\cfg\Config.cfg" "-profiles=Config\log" "-cfg=Config\cfg\basic.cfg" -name=Exile "-mod=@ExileMod;" "-serverMod=@ExileServer;"  -autoinit 
echo ARMA 3 Server has started
exit
