MAKE SURE TO FILL OUT ORIGINAL HEX AND REPLACED HEX LISTS IF YOU WANT TO USE THIS!





gg.toast("Read with attention !!!")gg.sleep(300)gg.alert("Don't expect to avoid getting banned if you abuse this script. You WILL BE BANNED. Be cautious.")gg.toast("▓▒▒▒▒▒▒▒▒▒10%")gg.sleep(100)gg.toast("▓▓▒▒▒▒▒▒▒▒20%")gg.sleep(100)gg.toast("▓▓▓▒▒▒▒▒▒▒30%")gg.sleep(100)gg.toast("▓▓▓▓▒▒▒▒▒▒40%")gg.sleep(100)gg.toast("▓▓▓▓▓▒▒▒▒▒50%")gg.sleep(100)gg.toast("▓▓▓▓▓▓▒▒▒▒60%")gg.sleep(100)gg.toast("▓▓▓▓▓▓▓▒▒▒70%")gg.sleep(100)gg.toast("▓▓▓▓▓▓▓▓▒▒80%")gg.sleep(100)gg.toast("▓▓▓▓▓▓▓▓▓▒90%")gg.sleep(100)gg.toast("▓▓▓▓▓▓▓▓▓▓100%")gg.sleep(600)gg.toast("By Chewy")gg.sleep(700)gg.setVisible(true)


local info = gg.getTargetInfo()

local a,b,c,d,e,f,g,h=0,-1,nil,0,32,{},nil,false;function name(i)if c~=i then c=i;local j=gg.getRangesList(c)if#j==0 then print("Error: "..c.." are not found!")os.exit()else a=j[1].start;b=j[#j]["end"]end end end;function hex2tbl(k)local l={}k:gsub("%S%S",function(m)l[#l+1]=m;return""end)return l end;function original(n)local o=hex2tbl(n)gg.clearResults()local p=#o;if p==0 then return end;local q=p;if p>e then q=e end;local r=""for s=1,q do if s~=1 then r=r..";"end;local t=o[s]if t=="??"or t=="**"then t="0~~0"end;r=r..t.."h"end;r=r.."::"..q;gg.searchNumber(r,gg.TYPE_BYTE,false,gg.SIGN_EQUAL,a,b)if p>q then for s=q+1,p do local t=o[s]if t=="??"or t=="**"then t=256 else t=("0x"..t)+0;if t>127 then t=t-256 end end;o[s]=t end end;local u=gg.getResultCount()f={}local v=0;local w=0;while true do if w>=u then break end;local x=gg.getResults(100000)local y=#x;local z=w;if w+q>y then break end;while z<y do local A=true;local B=x[1+z].address-1;if q<p then local C={}for s=e+1,p do C[s-e]={address=B+s,flags=gg.TYPE_BYTE,value=0}end;C=gg.getValues(C)for s=e+1,p do local m=o[s]if m~=256 and C[s-e].value~=m then A=false;break end end end;if A then v=v+1;f[v]=B;w=w+q else local D={}for s=1,q do D[s]=x[s+z]end;gg.removeResults(D)end;z=z+q end end;gg.clearResults()end;function replaced(E)d=d+1;local F="\nPattern N"..d..":"if#f==0 then print(F.." Not found.")return end;print(F)local o=hex2tbl(E)if g~=nil then local G=hex2tbl(g)for s,t in ipairs(o)do if t~="??"and t~="**"and t==G[s]then o[s]="**"end end;g=nil end;local H=#o;local I={}local r=0;for J,K in ipairs(f)do for s,t in ipairs(o)do if t~="??"and t~="**"then r=r+1;I[r]={["address"]=K+s,["value"]=t.."h",["flags"]=gg.TYPE_BYTE}end end end;if r~=0 then gg.setValues(I)end;h=true end



function On()
    local Ton
    Ton = gg
    Ton = Ton.toast
    Ton("✔️ Oɴ ✔️")
end

function Off()
    local Toff
    Toff = gg
    Toff = Toff.toast
    Toff("❌ Oғғ ❌")
end

options = {
	A1 .. "Inf Ammo ",
			A2 .. "GodMode ",
			A3 .. "Free Super Chest ",
			A4 .. "ShotGun Shoot ",
			A5 .. "Friendly Fire ",
			A6 .. "Op Pet ",
			A7 .. "Slient Aim ",
			A8 .. "Vip ",
			A9 .. "Jetpack ",
			A10 .. "God Drone ",
			A11 .. "3CatSpam ",
			A12 .. "Fast Reload ",
			A13 .. "No Spread ",
			A14 .. "Critical Hit ",
            "⚙️ Exɪᴛ Sᴄʀɪᴘᴛ ⚙️"
	}
originalhex = {"08 00 80 E2 00 10 A0 E3 34 4A 1D EA 70 4C 2D E9 10 B0 8D E2 08 D0 4D",etc}
replacedhex = {"64 00 a0 e3 1e ff 2f e1 34 4A 1D EA 70 4C 2D E9 10 B0 8D E2 08 D0 4D",etc}
ison = {}
for thisoption in options do
ison[#ison + 1] = false
end

function Main()
    choices = {}
    for i in range(options) do
    if ison[i] then
	choices[#choices + 1] = "〘⭕〙" .. options[i]
    else
        choices[#choices + 1] = "〘🔘〙" .. options[i]
    choices[#choices + 1] = "⚙️ Exɪᴛ Sᴄʀɪᴘᴛ ⚙️"
    menu =
        gg.choice(choices)
    if not(menu == #choices or menu == ni) then
        if not(ison[menu]) then
            gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
            name("libil2cpp.so")
            original(originalhex[menu])
            replaced(replacedhex[menu])
	    gg.clearResults()
            On()
            ison[menu] = true
    else
    gg.alert("Thanks for using this Script! ~ Chewy")
    print("Created By Chewy")
    --gg.skipRestoreState()
    gg.setVisible(true)
        os.exit()
    end
    lua = -1
end

while true do
    if gg.isVisible(true) then
        lua = 1
        gg.setVisible(false)
    end
    gg.clearResults()
    if lua == 1 then
        Main()
    end
end
