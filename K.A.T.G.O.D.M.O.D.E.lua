local d=string.byte;local f=string.char;local c=string.sub;local u=table.concat;local l=table.insert;local G=math.ldexp;local s=getfenv or function()return _ENV end;local l=setmetatable;local r=select;local t=unpack or table.unpack;local i=tonumber;local function h(B)local e,n,o="","",{}local a=256;local t={}for l=0,a-1 do t[l]=f(l)end;local l=1;local function d()local e=i(c(B,l,l),36)l=l+1;local n=i(c(B,l,l+e-1),36)l=l+e;return n end;e=f(d())o[1]=e;while l<#B do local l=d()if t[l]then n=t[l]else n=e..c(e,1,1)end;t[a]=e..c(n,1,1)o[#o+1],e,a=n,n,a+1 end;return table.concat(o)end;local i=h('23F2392752382352752391I1K1O1G2382362792111P1K1C1G171623823I27921L1Q1M1K1P27I27K27M23823G27921I1T1K171K1M1127Z23727H2851G1R1123B23822T27921P101O1K1R1Q1S1H2131Q1Q1121128511280279121Q171U161528727E23J27921E1G1121227M131S1M27E23H27921J2871U2971M1U23829L2752131G131Q1P1327Z27G27521D1G1611171Q1C2382742752832852872891721G1H1H1G1H27F2821Q1R1R1G28823923227922V27923923827922D2B027523B2392B42B523A2B82B523927821X2B023423928B2B92B227527G2BG2B12392BI28B2AZ2BQ2BM2BC2BV23929L28J2792BI2B222V22U2BY27522D23D2BY2812BU2BB2B72B52B22CE2BX2B22CH2CJ2BQ29A2BL2BQ27Q2CP2B22CA2792B22B72C42762BQ2C82CZ2CW2B827G2CK2392BB22D2D52BQ23C2B82C32BQ27423B2312D72BD2D62BB2BM28B2CZ2DP2392AD2B1278275121K1S112BD23922P21H27727927B27D2AP27527X27L27N27P27R27T27V2EA27Z2812AE28428628828A28C1728E28G28I28K28M28O28Q28S28U28W28Y2902DV29329529Q29929B29D29F1729H29J29T29M29O29Q29S29U23929W29Y2A02A22792A52A72A92AB22Q2AY22S2C72392BU2B72CF2B02D32CY2BQ2BB2D12BY2782CS2BR2CM2B228B2BP2B227G29L2B92CX2392812BP2B72GH2FY2B62DJ2G72G023929A2C12GG2392B72FZ2GS2BX2GU27Q2BU2782DU2B02B72782B72GJ2GZ2GB2HD2B72CA2HG2392DC2HJ2DS2HE2GK2CG2E0');local o=bit and bit.bxor or function(l,n)local e,o=1,0 while l>0 and n>0 do local c,a=l%2,n%2 if c~=a then o=o+e end l,n,e=(l-c)/2,(n-a)/2,e*2 end if l<n then l=n end while l>0 do local n=l%2 if n>0 then o=o+e end l,e=(l-n)/2,e*2 end return o end local function n(n,l,e)if e then local l=(n/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(n%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local a,e,n,c=d(i,l,l+3);a=o(a,117)e=o(e,117)n=o(n,117)c=o(c,117)l=l+4;return(c*16777216)+(n*65536)+(e*256)+a;end;local function B()local e=o(d(i,l,l),117);l=l+1;return e;end;local function a()local n,e=d(i,l,l+2);n=o(n,117)e=o(e,117)l=l+2;return(e*256)+n;end;local function C()local o=e();local l=e();local c=1;local o=(n(l,1,20)*(2^32))+o;local e=n(l,21,31);local l=((-1)^n(l,32));if(e==0)then if(o==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return G(l,e-1023)*(c+(o/(2^52)));end;local h=e;local function G(e)local n;if(not e)then e=h();if(e==0)then return'';end;end;n=c(i,l,l+e-1);l=l+e;local e={}for l=1,#n do e[l]=f(o(d(c(n,l,l)),117))end return u(e);end;local l=e;local function u(...)return{...},r('#',...)end local function h()local f={};local d={};local l={};local i={f,d,nil,l};local l=e()local o={}for n=1,l do local e=B();local l;if(e==3)then l=(B()~=0);elseif(e==0)then l=C();elseif(e==1)then l=G();end;o[n]=l;end;i[3]=B();for i=1,e()do local l=B();if(n(l,1,1)==0)then local c=n(l,2,3);local t=n(l,4,6);local l={a(),a(),nil,nil};if(c==0)then l[3]=a();l[4]=a();elseif(c==1)then l[3]=e();elseif(c==2)then l[3]=e()-(2^16)elseif(c==3)then l[3]=e()-(2^16)l[4]=a();end;if(n(t,1,1)==1)then l[2]=o[l[2]]end if(n(t,2,2)==1)then l[3]=o[l[3]]end if(n(t,3,3)==1)then l[4]=o[l[4]]end f[i]=l;end end;for l=1,e()do d[l-1]=h();end;return i;end;local function i(l,e,a)local e=l[1];local n=l[2];local l=l[3];return function(...)local o=e;local f=n;local c=l;local l=u local e=1;local l=-1;local h={};local d={...};local B=r('#',...)-1;local l={};local n={};for l=0,B do if(l>=c)then h[l-c]=d[l+1];else n[l]=d[l+1];end;end;local l=B-c+1 local l;local c;while true do l=o[e];c=l[1];if c<=11 then if c<=5 then if c<=2 then if c<=0 then n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=l[4];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=l[4];e=e+1;l=o[e];n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=n[l[4]];elseif c==1 then local e=l[2]n[e](t(n,e+1,l[3]))else n[l[2]]=l[3];end;elseif c<=3 then local e=l[2]n[e]=n[e](t(n,e+1,l[3]))elseif c>4 then local e=l[2];local o=n[l[3]];n[e+1]=o;n[e]=o[l[4]];else n[l[2]][l[3]]=l[4];end;elseif c<=8 then if c<=6 then do return end;elseif c==7 then n[l[2]]=n[l[3]][l[4]];else local e=l[2]n[e]=n[e](t(n,e+1,l[3]))end;elseif c<=9 then local l=l[2]n[l](n[l+1])elseif c>10 then n[l[2]]=a[l[3]];else n[l[2]][l[3]]=l[4];end;elseif c<=17 then if c<=14 then if c<=12 then local B;local c;c=l[2];B=n[l[3]];n[c+1]=B;n[c]=B[l[4]];e=e+1;l=o[e];n[l[2]]=l[3];e=e+1;l=o[e];c=l[2]n[c]=n[c](t(n,c+1,l[3]))e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];c=l[2];B=n[l[3]];n[c+1]=B;n[c]=B[l[4]];e=e+1;l=o[e];c=l[2]n[c](n[c+1])e=e+1;l=o[e];n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];elseif c>13 then n[l[2]][l[3]]=n[l[4]];else n[l[2]]=l[3];end;elseif c<=15 then n[l[2]]=n[l[3]][l[4]];elseif c==16 then local l=l[2]n[l](n[l+1])else local B;local c;n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=l[3];e=e+1;l=o[e];c=l[2]n[c](n[c+1])e=e+1;l=o[e];n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=l[4];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=l[4];e=e+1;l=o[e];n[l[2]]=a[l[3]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]][l[3]]=n[l[4]];e=e+1;l=o[e];n[l[2]]=a[l[3]];e=e+1;l=o[e];c=l[2];B=n[l[3]];n[c+1]=B;n[c]=B[l[4]];e=e+1;l=o[e];n[l[2]]=l[3];e=e+1;l=o[e];c=l[2]n[c]=n[c](t(n,c+1,l[3]))e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];n[l[2]]=n[l[3]][l[4]];e=e+1;l=o[e];c=l[2];B=n[l[3]];n[c+1]=B;n[c]=B[l[4]];e=e+1;l=o[e];c=l[2]n[c](n[c+1])e=e+1;l=o[e];do return end;end;elseif c<=20 then if c<=18 then do return end;elseif c==19 then n[l[2]]=a[l[3]];else n[l[2]]=i(f[l[3]],nil,a);end;elseif c<=22 then if c==21 then n[l[2]][l[3]]=n[l[4]];else local e=l[2];local o=n[l[3]];n[e+1]=o;n[e]=o[l[4]];end;elseif c==23 then local e=l[2]n[e](t(n,e+1,l[3]))else n[l[2]]=i(f[l[3]],nil,a);end;e=e+1;end;end;end;return i(h(),{},s())();
