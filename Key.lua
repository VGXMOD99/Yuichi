if os.date("%Y%m%d") > "20241220" then
gameguardianph=gg.alert("Script Expired\nDownload Latest Varsion")
os.exit()
end
gg.alert("Script Expired in\n 📅2024-12-20\n 𝗬𝘂𝗶𝗰𝗵𝗶 𝗠𝗼𝗱𝘇")
--Here are all the months of the year converted into numbers:
--1. January - 1
--2. February - 2  
--3. March - 3
--4. April - 4
--5. May - 5
--6. June - 6
--7. July - 7 
--8. August - 8
--9. September - 9
--10. October - 10
--11. November - 11
--12. December - 12

function setValues(address, size, value)gg.setValues({{address = address,flags = size,value = value}})end
 HexPatches = {}
function YUICHI(Lib,Offset,Edit,Type)
 Ranges = gg.getRangesList(Lib)
 v = {}
v[1] = {}
v[1].address = Ranges[1].start + Offset
v[1].flags = Type
v[1].value = Edit
v[1].freeze = true
gg.setValues(v)
end
running = true
function home()
 menu = gg.choice({
"𝘉𝘺𝘱𝘢𝘴𝘴 𝘓𝘰𝘨𝘰︎",
"𝘞𝘢𝘭𝘭𝘩𝘢𝘤𝘬",
"𝘈𝘪𝘮𝘣𝘰𝘵 𝘈𝘥𝘫𝘶𝘴𝘵𝘢𝘣𝘭𝘦",
"𝘌𝘹𝘪𝘵"
}, nil, "𝗬𝘂𝗶𝗰𝗵𝗶 𝗠𝗼𝗱𝘇\n𝗚𝗮𝗿𝗲𝗻𝗮\n 𝘕𝘰 𝘍𝘦𝘦𝘥𝘣𝘢𝘤𝘬 𝘕𝘰 𝘒𝘦𝘺")
if menu == 1 then A1() end
if menu == 2 then A2() end
if menu == 3 then A3() end
if menu == 4 then running = false end
end

function A1()
YUICHI("libanogs.so", 0x118A28, "hC0 03 5F D6 F8 5F 01 A9", 32);
YUICHI("libanogs.so", 0x134EF8, "hC0 03 5F D6 F8 5F 01 A9", 32);
YUICHI("libanogs.so", 0x17E640, "hC0 03 5F D6 F5 13 00 F9", 32);
YUICHI("libanogs.so", 0x217F60, "hC0 03 5F D6 FD 7B 01 A9", 32);
YUICHI("libanogs.so", 0x23FB08, "hC0 03 5F D6 FD 7B 0A A9", 32);
YUICHI("libanogs.so", 0x2B58C0, "hC0 03 5F D6 FC 83 00 F9", 32);
    gg.toast("Bypass Logo ✔️")
end

function A2()
unity=gg.getRangesList("libunity.so")[1].start
setValues(unity + 0x81B7858, 4, "~A8 NOP")
    gg.toast("Wallhack ✔️")
end

function A3()
aimbot = gg.prompt({"Adjustable Aimbot Fire [20; 200]"}, nil, {"number"})
so = gg.getRangesList("libunity.so")[1].start 
setValues(so + 0x8FE4058, 4, "~A8 LDR S0, [PC,#0x8]")
setValues(so + 0x8FE4058 + 4, 4, "~A8 RET")
setValues(so + 0x8FE4058 + 8, 16, aimbot[1])
so = gg.getRangesList("libunity.so")[1].start 
setValues(so + 0x7AED9F8, 4, "~A8 LDR S0, [PC,#0x8]")
setValues(so + 0x7AED9F8 + 4, 4, "~A8 RET")
setValues(so + 0x7AED9F8 + 8, 16, aimbot[1])
    gg.toast("Aimbot adjustable ✔️")
end

while running do
if gg.isVisible(true) then
gg.setVisible(false)
home()
end
end
