--// Protected by Karrot 1.0 - discord.gg/vPY3XmntKU

return (function()local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIllllI=269;local karrotlIIlllIl=138;local karrotlIIlllII=3;local karrotlIIlIllI=function(a)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';a=string.gsub(a,'[^'..b..'=]','')return a:gsub('.',function(c)if c=='='then return''end;local d,e='',b:find(c)-1;for f=6,1,-1 do d=d..(e%2^f-e%2^(f-1)>0 and'1'or'0')end;return d end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(c)if#c~=8 then return''end;local g=0;for f=1,8 do g=g+(c:sub(f,f)=='1'and 2^(8-f)or 0)end;return string.char(g)end)end;local karrotlIIlllIl=290;local karrotlIIlIlIl=(function()local function a(b)local c={}for d=0,255 do c[d]={}end;c[0][0]=b[1]*255;local e=1;for f=0,7 do for d=0,e-1 do for g=0,e-1 do local h=c[d][g]-b[1]*e;c[d][g+e]=h+b[2]*e;c[d+e][g]=h+b[3]*e;c[d+e][g+e]=h+b[4]*e end end;e=e*2 end;return c end;local i=a{0,1,1,0}local function j(self,k)local l,d,g=self.S,self.i,self.j;local m={}local n=string.char;for o=1,k do d=(d+1)%256;g=(g+l[d])%256;l[d],l[g]=l[g],l[d]m[o]=n(l[(l[d]+l[g])%256])end;self.i,self.j=d,g;return table.concat(m)end;local function p(self,q)local r=j(self,#q)local s={}local t=string.byte;local n=string.char;for d=1,#q do s[d]=n(i[t(q,d)][t(r,d)])end;return table.concat(s)end;local function u(self,v)local l=self.S;local g,w=0,#v;local t=string.byte;for d=0,255 do g=(g+l[d]+t(v,d%w+1))%256;l[d],l[g]=l[g],l[d]end end;function new(v)local l={}local s={S=l,i=0,j=0,generate=j,cipher=p,schedule=u}for d=0,255 do l[d]=d end;if v then s:schedule(v)end;return s end;return new end)();local fev=getfenv or function()return _ENV end;local karrotlIIlIlII=(function()if not bit then local bit_=nil pcall(function()bit_=require('bit') end)bit=bit_ end local bit=bit or bit32 or(function()local a={_TYPE='module',_NAME='bit.numberlua',_VERSION='0.3.1.20120131'}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return''end;F=true;E=-E end;w=z(w,16^E-1)return('%0'..E..(F and'X'or'x')):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a end)()local unpack=table.unpack or unpack;local a3;local a4;local a5;local a6=50;local a7={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local a8={[0]='ABC','ABx','ABC','ABC','ABC','ABx','ABC','ABx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','AsBx','ABC','ABC','ABC','ABx','ABC'}local a9={[0]={b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgR'},{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgU'},{b='OpArgR',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgN',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgN',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgU',c='OpArgN'}}local function aa(ab,s,e,d)local ac=0;for i=s,e,d do ac=ac+string.byte(ab,i,i)*256^(i-s)end;return ac end;local function ad(ae,af,ag,ah)local ai=(-1)^bit.rshift(ah,7)local aj=bit.rshift(ag,7)+bit.lshift(bit.band(ah,0x7F),1)local ak=ae+bit.lshift(af,8)+bit.lshift(bit.band(ag,0x7F),16)local al=1;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7F then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-127)*(1+al/2^23)end;local function am(ae,af,ag,ah,an,ao,ap,aq)local ai=(-1)^bit.rshift(aq,7)local aj=bit.lshift(bit.band(aq,0x7F),4)+bit.rshift(ap,4)local ak=bit.band(ap,0x0F)*2^48;local al=1;ak=ak+ao*2^40+an*2^32+ah*2^24+ag*2^16+af*2^8+ae;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7FF then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-1023)*(al+ak/2^52)end;local function ar(ab,s,e)return aa(ab,s,e-1,1)end;local function as(ab,s,e)return aa(ab,e-1,s,-1)end;local function at(ab,s)return ad(string.byte(ab,s,s+3))end;local function au(ab,s)local ae,af,ag,ah=string.byte(ab,s,s+3)return ad(ah,ag,af,ae)end;local function av(ab,s)return am(string.byte(ab,s,s+7))end;local function aw(ab,s)local ae,af,ag,ah,an,ao,ap,aq=string.byte(ab,s,s+7)return am(aq,ap,ao,an,ah,ag,af,ae)end;local ax={[4]={little=at,big=au},[8]={little=av,big=aw}}local function ay(S)local az=S.index;local aA=string.byte(S.source,az,az)S.index=az+1;return aA end;local function aB(S,aC)local aD=S.index+aC;local aE=string.sub(S.source,S.index,aD-1)S.index=aD;return aE end;local function aF(S)local aC=S:s_szt()local aE;if aC~=0 then aE=string.sub(aB(S,aC),1,-2)end;return aE end;local function aG(aC,aH)return function(S)local aD=S.index+aC;local aI=aH(S.source,S.index,aD)S.index=aD;return aI end end;local function aJ(aC,aH)return function(S)local aK=aH(S.source,S.index)S.index=S.index+aC;return aK end end;local function aL(S)local aM=S:s_int()local aN={}for i=1,aM do local aO=S:s_ins()local aP=bit.band(aO,0x3F)local aQ=a8[aP]local aR=a9[aP]local aS={value=aO,op=a7[aP],A=bit.band(bit.rshift(aO,6),0xFF)}if aQ=='ABC'then aS.B=bit.band(bit.rshift(aO,23),0x1FF)aS.C=bit.band(bit.rshift(aO,14),0x1FF)aS.is_KB=aR.b=='OpArgK'and aS.B>0xFF;aS.is_KC=aR.c=='OpArgK'and aS.C>0xFF elseif aQ=='ABx'then aS.Bx=bit.band(bit.rshift(aO,14),0x3FFFF)aS.is_K=aR.b=='OpArgK'elseif aQ=='AsBx'then aS.sBx=bit.band(bit.rshift(aO,14),0x3FFFF)-131071 end;aN[i]=aS end;return aN end;local function aT(S)local aM=S:s_int()local aU={}for i=1,aM do local aV=ay(S)local k;if aV==1 then k=ay(S)~=0 elseif aV==3 then k=S:s_num()elseif aV==4 then k=aF(S)end;aU[i]=k end;return aU end;local function aW(S,ab)local aM=S:s_int()local aX={}for i=1,aM do aX[i]=a5(S,ab)end;return aX end;local function aY(S)local aM=S:s_int()local aZ={}for i=1,aM do aZ[i]=S:s_int()end;return aZ end;local function a_(S)local aM=S:s_int()local b0={}for i=1,aM do b0[i]={varname=aF(S),startpc=S:s_int(),endpc=S:s_int()}end;return b0 end;local function b1(S)local aM=S:s_int()local b2={}for i=1,aM do b2[i]=aF(S)end;return b2 end;function a5(S,b3)local b4={}local ab=aF(S)or b3;b4.source=ab;S:s_int()S:s_int()b4.numupvals=ay(S)b4.numparams=ay(S)ay(S)ay(S)b4.code=aL(S)b4.const=aT(S)b4.subs=aW(S,ab)b4.lines=aY(S)a_(S)b1(S)for _,v in ipairs(b4.code)do if v.is_K then v.const=b4.const[v.Bx+1]else if v.is_KB then v.const_B=b4.const[v.B-0xFF]end;if v.is_KC then v.const_C=b4.const[v.C-0xFF]end end end;return b4 end;function a3(ab)local b5;local b6;local b7;local b8;local b9;local ba;local bb;local bc={index=1,source=ab}assert(aB(bc,4)=='\27Lua','invalid Lua signature')assert(ay(bc)==0x51,'invalid Lua version')assert(ay(bc)==0,'invalid Lua format')b6=ay(bc)~=0;b7=ay(bc)b8=ay(bc)b9=ay(bc)ba=ay(bc)bb=ay(bc)~=0;b5=b6 and ar or as;bc.s_int=aG(b7,b5)bc.s_szt=aG(b8,b5)bc.s_ins=aG(b9,b5)if bb then bc.s_num=aG(ba,b5)elseif ax[ba]then bc.s_num=aJ(ba,ax[ba][b6 and'little'or'big'])else error('unsupported float size')end;return a5(bc,'@virtual')end;local function bd(be,bf)for i,bg in pairs(be)do if bg.index>=bf then bg.value=bg.store[bg.index]bg.store=bg;bg.index='value'be[i]=nil end end end;local function bh(be,bf,bi)local bj=be[bf]if not bj then bj={index=bf,store=bi}be[bf]=bj end;return bj end;local function bk(...)return select('#',...),{...}end;local function bl(bm,bn)local ab=bm.source;local bo=bm.lines[bm.pc-1]local b3,bp,bq=string.match(bn,'^(.-):(%d+):%s+(.+)')local br='%s:%i: [%s:%i] %s'bo=bo or'0'b3=b3 or'?'bp=bp or'0'bq=bq or bn;error(string.format(br,ab,bo,b3,bp,bq),0)end;local function bs(bm)local aN=bm.code;local bt=bm.subs;local bu=bm.env;local bv=bm.upvals;local bw=bm.varargs;local bx=-1;local by={}local bi=bm.stack;local bz=bm.pc;while true do local bA=aN[bz]local aP=bA.op;bz=bz+1;if aP<18 then if aP<8 then if aP<3 then if aP<1 then for i=bA.A,bA.B do bi[i]=nil end elseif aP>1 then local bg=bv[bA.B]bi[bA.A]=bg.store[bg.index]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB+bC end elseif aP>3 then if aP<6 then if aP>4 then local A=bA.A;local B=bA.B;local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[A+1]=bi[B]bi[A]=bi[B][bf]else bi[bA.A]=bu[bA.const]end elseif aP>6 then local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[bA.A]=bi[bA.B][bf]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB-bC end else bi[bA.A]=bi[bA.B]end elseif aP>8 then if aP<13 then if aP<10 then bu[bA.const]=bi[bA.A]elseif aP>10 then if aP<12 then local A=bA.A;local B=bA.B;local C=bA.C;local bD;local bE,bF;if B==0 then bD=bx-A else bD=B-1 end;bE,bF=bk(bi[A](unpack(bi,A+1,A+bD)))if C==0 then bx=A+bE-1 else bE=C-1 end;for i=1,bE do bi[A+i-1]=bF[i]end else local bg=bv[bA.B]bg.store[bg.index]=bi[bA.A]end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB*bC end elseif aP>13 then if aP<16 then if aP>14 then local A=bA.A;local B=bA.B;local bD;if B==0 then bD=bx-A else bD=B-1 end;bd(by,0)return bk(bi[A](unpack(bi,A+1,A+bD)))else local bf,bG;if bA.is_KB then bf=bA.const_B else bf=bi[bA.B]end;if bA.is_KC then bG=bA.const_C else bG=bi[bA.C]end;bi[bA.A][bf]=bG end elseif aP>16 then bi[bA.A]={}else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB/bC end else bi[bA.A]=bA.const end else local A=bA.A;local bH=bi[A+2]local bf=bi[A]+bH;local bI=bi[A+1]local bJ;if bH==math.abs(bH)then bJ=bf<=bI else bJ=bf>=bI end;if bJ then bi[bA.A]=bf;bi[bA.A+3]=bf;bz=bz+bA.sBx end end elseif aP>18 then if aP<28 then if aP<23 then if aP<20 then bi[bA.A]=#bi[bA.B]elseif aP>20 then if aP<22 then local A=bA.A;local B=bA.B;local bK={}local aM;if B==0 then aM=bx-A+1 else aM=B-1 end;for i=1,aM do bK[i]=bi[A+i-1]end;bd(by,0)return aM,bK else local aE=bi[bA.B]for i=bA.B+1,bA.C do aE=aE..bi[i]end;bi[bA.A]=aE end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB%bC end elseif aP>23 then if aP<26 then if aP>24 then bd(by,bA.A)else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB==bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 end elseif aP>26 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB^bC end else bi[bA.A]=bA.B~=0;if bA.C~=0 then bz=bz+1 end end elseif aP>28 then if aP<33 then if aP<30 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<=bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 elseif aP>30 then if aP<32 then local aX=bt[bA.Bx+1]local bL=aX.numupvals;local bM;if bL~=0 then bM={}for i=1,bL do local bN=aN[bz+i-1]if bN.op==a7[0]then bM[i-1]=bh(by,bN.B,bi)elseif bN.op==a7[4]then bM[i-1]=bv[bN.B]end end;bz=bz+bL end;bi[bA.A]=a4(aX,bu,bM)else local A=bA.A;local B=bA.B;if not bi[B]==(bA.C~=0)then bz=bz+1 else bi[A]=bi[B]end end else bi[bA.A]=-bi[bA.B]end elseif aP>33 then if aP<36 then if aP>34 then local A=bA.A;local aM=bA.B;if aM==0 then aM=bw.size;bx=A+aM-1 end;for i=1,aM do bi[A+i-1]=bw.list[i]end else local A=bA.A;local bO,bI,bH;bO=assert(tonumber(bi[A]),'`for` initial value must be a number')bI=assert(tonumber(bi[A+1]),'`for` limit must be a number')bH=assert(tonumber(bi[A+2]),'`for` step must be a number')bi[A]=bO-bH;bi[A+1]=bI;bi[A+2]=bH;bz=bz+bA.sBx end elseif aP>36 then local A=bA.A;local C=bA.C;local aM=bA.B;local bP=bi[A]local bQ;if aM==0 then aM=bx-A end;if C==0 then C=bA[bz].value;bz=bz+1 end;bQ=(C-1)*a6;for i=1,aM do bP[i+bQ]=bi[A+i]end else bi[bA.A]=not bi[bA.B]end else if not bi[bA.A]==(bA.C~=0)then bz=bz+1 end end else local A=bA.A;local aH=bi[A]local bR=bi[A+1]local bf=bi[A+2]local bS=A+3;local bK;bi[bS+2]=bf;bi[bS+1]=bR;bi[bS]=aH;bK={aH(bR,bf)}for i=1,bA.C do bi[bS+i-1]=bK[i]end;if bi[bS]~=nil then bi[A+2]=bi[bS]else bz=bz+1 end end else bz=bz+bA.sBx end;bm.pc=bz end end;function a4(bR,bu,b2)local bT=bR.code;local bU=bR.subs;local bV=bR.lines;local bW=bR.source;local bX=bR.numparams;local function bY(...)local bi={}local bZ={}local b_=0;local c0,c1=bk(...)local bm;local c2,bn,bK;for i=1,bX do bi[i-1]=c1[i]end;if bX<c0 then b_=c0-bX;for i=1,b_ do bZ[i]=c1[bX+i]end end;bm={varargs={list=bZ,size=b_},code=bT,subs=bU,lines=bV,source=bW,env=bu,upvals=b2,stack=bi,pc=1}c2,bn,bK=pcall(bs,bm,...)if c2 then return unpack(bK,1,bn)else bl(bm,bn)end;return end;return bY end;return function(c3,bu)return a4(a3(c3),bu or fev(0))end end)();local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIIl="\104\78\90\56\110\71\120\101\74\113\78\48\106\80\111\57\112\54\118\86\47\74\73\69\106\115\55\72\101\88\47\51\102\72\66\71\88\119\116\99\48\98\50\47\47\80\104\87\104\66\101\118\66\72\70\85\109\112\110\80\108\86\87\106\101\73\66\118\108\88\48\120\99\109\47\121\67\104\83\108\108\78\69\90\89\75\51\106\101\66\57\70\86\88\68\84\51\116\109\80\48\118\71\49\118\109\88\121\122\47\75\69\55\71\67\52\102\88\76\55\54\74\84\101\73\76\85\48\55\82\104\53\121\89\97\77\121\43\80\89\76\117\49\102\77\72\56\72\109\121\80\120\47\55\56\118\49\104\85\109\71\101\105\67\51\53\68\73\109\66\76\114\87\78\117\108\104\105\71\48\70\50\66\106\121\108\50\107\66\102\48\80\112\56\76\89\97\52\109\99\69\99\113\84\101\104\112\50\53\122\48\74\76\90\99\106\115\76\85\119\111\109\113\89\115\54\120\101\77\74\111\86\117\113\75\67\116\57\71\73\99\76\99\53\77\71\89\47\87\72\111\108\50\89\116\65\104\90\81\55\52\107\47\109\106\67\69\73\54\114\86\69\85\118\90\103\121\86\120\49\55\83\74\115\89\100\107\49\67\106\66\86\69\112\81\81\50\82\81\70\100\120\103\72\69\72\116\50\79\73\52\80\112\66\57\52\108\55\69\68\120\80\114\51\115\71\97\107\75\65\72\110\119\83\103\77\49\57\89\43\66\101\86\66\56\50\56\117\88\50\83\102\109\109\49\117\110\53\49\73\53\80\110\100\84\79\104\47\51\81\77\98\71\109\48\50\121\89\119\51\106\88\104\51\118\87\98\82\49\57\54\87\87\65\117\97\97\50\50\119\84\74\101\100\80\76\55\106\67\101\50\55\104\76\57\87\113\78\103\53\50\89\52\51\77\102\108\102\110\85\117\118\121\87\47\79\47\105\50\114\71\113\102\118\49\49\65\106\114\79\88\98\87\115\117\57\101\69\51\86\115\88\71\89\108\51\84\57\72\98\113\68\122\97\114\115\116\53\66\120\115\101\74\57\79\48\118\107\88\101\72\72\118\48\103\48\97\103\48\102\116\69\118\117\50\115\87\43\68\54\114\67\108\116\106\65\106\110\80\88\117\106\117\116\102\112\78\57\79\76\67\50\119\65\55\57\120\104\105\48\50\76\76\43\100\116\120\68\99\57\111\88\73\107\115\53\77\52\86\120\98\87\84\120\70\53\113\70\102\111\108\89\47\84\74\47\122\83\68\82\77\120\81\102\112\107\74\101\103\98\65\65\66\69\43\90\106\53\98\101\43\74\110\116\121\77\106\88\109\121\43\115\84\121\50\109\73\79\111\121\52\57\122\111\103\112\98\69\51\68\50\75\121\66\112\98\55\74\86\72\111\74\76\105\117\68\80\49\76\54\109\52\76\116\68\100\83\54\77\114\82\112\79\51\66\117\54\122\77\56\82\47\88\47\108\55\49\49\120\80\101\121\103\74\111\120\114\111\100\70\98\84\74\100\103\83\49\79\111\115\88\72\67\68\56\69\115\98\101\74\71\81\119\102\76\65\104\90\77\88\112\119\83\74\85\119\104\104\103\84\107\68\112\114\89\104\84\77\88\65\66\79\106\50\81\121\68\115\54\53\71\43\73\65\71\114\115\101\66\111\108\84\104\67\118\81\109\50\79\76\80\106\66\72\78\77\43\105\52\88\80\84\98\68\113\120\108\75\55\66\103\76\98\114\105\119\56\114\47\97\104\97\70\86\98\120\86\79\89\69\100\66\116\73\116\77\120\66\75\113\109\108\69\77\69\110\110\119\106\68\84\73\73\76\77\109\75\107\52\89\102\70\55\70\49\89\112\102\107\51\79\54\115\101\49\55\114\83\99\51\70\113\56\75\113\65\83\80\110\66\88\98\67\72\86\81\87\71\43\81\84\97\114\97\104\48\82\49\105\77\55\65\55\82\51\86\108\52\112\103\74\86\83\113\103\110\51\49\47\116\78\78\116\80\51\110\53\98\99\88\47\103\116\100\106\80\113\72\87\50\56\52\54\50\78\113\73\55\43\89\83\55\65\56\108\84\56\117\105\117\85\106\51\98\121\56\115\107\79\113\97\117\109\51\122\103\118\117\51\97\121\57\79\118\82\86\84\55\121\105\102\112\77\119\110\115\113\48\122\87\56\83\122\84\104\71\54\104\121\109\86\68\100\100\116\118\86\89\57\77\89\87\111\56\85\81\111\48\70\108\43\52\69\49\84\71\120\79\52\111\112\90\57\57\108\55\118\43\56\114\104\54\50\65\101\111\71\98\112\67\106\113\106\104\54\112\83\106\89\118\116\52\104\43\52\74\57\81\77\113\57\107\70\109\75\47\84\76\100\88\86\65\87\51\106\73\80\83\57\122\88\57\88\49\98\77\114\49\70\84\67\79\100\97\102\72\78\106\120\43\66\104\80\72\101\100\102\97\89\82\103\76\111\74\99\103\88\49\49\67\57\110\82\87\118\53\67\87\122\69\87\69\70\48\87\52\120\67\74\53\109\50\120\83\101\72\82\86\67\51\50\102\66\100\122\84\83\66\80\98\74\73\98\55\112\70\72\115\84\54\43\81\99\66\90\74\52\98\71\79\88\49\97\115\83\111\88\71\55\48\56\70\51\119\84\51\103\122\109\81\99\118\115\105\82\109\100\113\74\120\81\113\114\106\78\72\113\111\77\74\108\79\88\75\121\122\110\53\98\66\57\74\104\84\114\73\103\90\57\52\100\121\47\65\71\117\117\114\108\101\53\70\69\52\110\66\51\67\57\111\114\65\48\86\53\116\109\110\105\69\111\43\56\102\86\108\113\99\65\100\54\102\104\74\74\49\120\52\104\48\51\53\57\68\79\67\49\78\106\83\66\106\117\118\48\115\70\57\83\78\90\119\71\122\119\50\68\78\90\101\74\52\120\76\88\105\115\121\77\109\80\109\66\68\76\82\97\80\119\75\72\101\99\74\118\70\73\49\55\84\114\109\99\98\100\85\89\79\83\50\100\113\111\104\74\75\56\49\82\81\55\119\69\80\104\76\53\85\82\69\77\97\116\110\102\65\107\114\80\119\118\102\50\84\68\66\104\120\69\99\110\56\83\122\99\97\52\113\65\110\47\87\71\72\47\68\72\68\50\68\80\51\114\86\55\69\76\119\56\118\71\97\52\115\118\83\101\86\81\89\122\84\43\76\100\101\72\120\54\88\111\76\70\88\47\56\78\54\71\107\69\105\81\55\111\53\106\98\73\114\70\73\74\107\105\82\68\122\113\121\82\81\55\117\85\43\112\79\81\71\107\108\83\87\67\116\109\65\97\68\43\70\77\81\68\75\68\113\76\117\87\47\108\104\50\67\69\84\89\114\78\87\119\71\84\110\47\76\49\117\51\119\116\109\84\119\50\84\116\47\55\57\115\102\78\90\100\52\118\54\50\50\113\85\43\84\68\74\72\84\75\76\122\66\71\85\120\118\78\86\100\85\110\76\79\100\88\86\55\74\67\99\117\76\114\68\67\97\50\71\71\89\74\76\56\88\109\113\50\70\120\80\80\47\43\114\79\48\66\70\67\47\77\49\84\110\114\70\85\53\87\122\48\89\53\116\120\101\82\107\109\71\84\113\83\114\78\88\100\47\101\116\52\86\108\103\80\74\121\79\85\98\107\55\90\56\98\70\54\43\87\102\54\121\79\56\69\48\87\101\81\73\106\66\56\81\68\55\85\84\98\121\98\88\104\76\51\109\72\77\43\83\68\70\98\119\82\73\111\74\108\69\72\52\107\67\83\87\67\80\68\100\54\105\106\98\97\80\56\73\107\77\79\65\47\51\118\106\79\84\117\56\104\114\57\67\111\120\81\47\101\65\82\84\69\117\97\75\106\67\87\113\74\114\88\89\97\75\73\78\109\116\104\82\118\82\87\68\113\80\85\109\43\116\50\68\112\119\106\119\106\70\87\80\67\47\114\76\82\114\77\82\57\118\105\122\83\68\106\97\87\118\52\66\81\117\117\89\75\114\108\74\47\122\52\70\105\53\48\119\106\54\114\76\49\80\76\99\97\115\75\109\108\111\119\76\106\52\101\47\100\98\118\75\75\122\108\74\115\81\121\88\105\75\50\52\106\108\43\112\54\49\80\108\50\120\115\83\67\83\47\90\109\54\87\116\81\90\110\68\82\88\69\49\67\84\72\106\101\88\121\100\115\98\85\106\116\54\119\116\74\105\110\110\81\107\116\83\116\79\117\99\54\78\86\54\102\118\54\82\118\122\111\49\78\112\100\89\114\72\84\78\79\85\98\114\107\67\84\103\47\88\122\116\70\73\81\121\80\52\55\87\115\118\111\113\77\108\73\51\110\67\122\48\118\99\57\97\73\48\43\101\48\110\105\80\49\78\121\85\110\115\54\86\79\110\99\65\117\78\122\113\77\82\56\107\52\104\118\53\102\81\71\100\114\86\66\84\49\69\50\122\66\55\74\53\48\51\122\113\52\111\76\55\82\104\103\70\110\101\111\98\53\52\112\97\66\112\55\71\75\79\53\102\57\86\113\72\83\102\108\87\49\115\102\104\113\66\110\108\77\99\79\77\54\50\49\102\99\103\79\83\66\56\112\54\52\50\115\83\47\75\65\84\70\97\89\70\49\52\55\78\112\74\121\78\43\71\76\108\114\101\104\85\90\57\86\66\77\82\51\70\99\57\70\108\71\83\119\112\67\74\43\47\106\83\50\116\71\119\67\90\99\72\78\85\71\53\86\69\48\47\88\74\71\98\112\80\102\105\90\112\99\72\89\50\89\102\43\67\119\86\78\74\52\114\103\54\99\97\72\70\109\90\65\117\73\85\77\120\97\86\66\114\72\81\110\98\72\102\73\107\54\48\47\102\48\90\83\108\76\76\76\105\100\73\100\55\80\104\112\87\52\54\85\110\97\43\47\74\89\54\105\122\82\102\113\68\52\47\103\55\120\55\84\43\68\101\108\49\111\53\118\67\75\88\81\69\55\85\85\66\86\52\113\53\54\115\114\85\90\101\115\85\49\72\56\82\120\101\99\109\78\68\55\101\84\118\108\55\48\51\98\66\103\114\84\88\66\100\117\55\72\53\55\98\110\75\70\99\82\66\120\90\71\113\80\51\97\86\66\54\97\115\53\56\86\108\111\50\110\66\86\122\110\76\110\54\83\106\89\86\76\97\99\80\65\79\82\75\66\43\113\105\65\99\88\100\55\90\55\86\111\119\121\115\66\70\81\74\108\87\112\89\89\113\79\105\65\57\115\108\69\116\68\85\74\85\77\100\113\102\111\43\81\50\72\101\47\43\89\105\111\103\120\84\82\57\107\87\43\81\104\117\82\118\117\57\115\49\104\83\57\57\69\89\122\121\66\118\89\101\84\51\114\102\102\102\113\65\99\121\78\51\50\90\122\88\97\57\117\120\97\101\72\79\98\69\89\67\106\102\66\111\102\76\115\68\75\122\65\50\122\102\48\90\108\115\55\69\57\54\112\75\55\85\76\117\78\83\110\71\76\88\115\52\71\69\110\106\77\48\111\118\72\76\108\108\76\99\88\77\117\68\111\80\85\106\71\49\118\111\74\73\119\113\84\71\114\74\47\70\107\114\56\115\88\66\81\114\66\53\77\122\68\109\73\83\111\68\104\102\70\112\76\52\51\98\100\117\86\103\69\49\74\120\77\66\104\103\98\101\109\122\112\108\113\57\88\104\114\43\104\79\116\78\97\88\97\69\65\112\50\83\57\83\122\47\65\101\53\56\117\99\51\52\77\121\47\69\77\112\111\79\102\86\51\49\86\57\119\43\85\71\117\75\83\118\110\102\65\83\50\106\102\57\82\77\89\117\115\107\118\54\50\67\109\43\97\67\108\69\88\111\90\106\55\77\72\107\54\121\73\80\76\118\98\68\52\103\111\80\72\108\70\87\81\121\122\111\85\90\107\100\97\84\76\110\103\120\118\77\84\51\79\73\99\84\82\103\88\49\76\69\80\80\111\66\76\68\49\114\111\57\118\99\81\88\56\47\57\103\86\70\74\77\54\65\47\105\81\71\112\119\50\113\99\100\117\111\84\48\72\54\105\98\75\105\78\74\114\108\43\118\51\51\80\81\83\81\78\100\77\104\85\54\52\116\106\113\104\121\65\100\56\49\120\103\51\72\43\82\112\100\74\43\89\98\80\112\68\90\103\90\118\117\115\72\54\73\77\113\72\106\122\79\120\112\83\68\77\85\118\47\116\85\76\115\76\79\105\87\83\50\105\82\120\47\73\76\66\47\57\70\84\65\76\55\114\106\87\66\104\120\115\108\56\102\113\119\110\113\69\86\74\76\103\112\83\119\105\52\49\112\100\54\66\120\119\117\82\72\103\100\102\115\84\99\119\106\50\111\119\85\97\120\108\72\100\78\73\54\122\113\78\98\115\79\122\103\113\111\79\71\71\82\102\75\54\75\100\87\72\69\117\103\70\105\82\116\83\71\49\89\104\102\56\49\107\121\83\105\47\122\50\88\71\101\89\88\72\122\111\105\50\112\57\89\66\48\122\74\54\83\77\82\43\71\117\56\83\113\86\48\71\110\117\111\69\56\112\78\69\71\120\51\81\101\121\103\81\73\81\82\74\71\112\122\74\67\90\116\73\109\116\68\56\100\83\120\122\85\72\51\70\49\85\76\88\52\90\49\102\56\90\85\65\48\52\104\84\79\107\90\122\121\75\87\98\72\84\101\108\119\115\90\71\75\108\78\79\101\83\103\117\90\70\84\116\97\87\99\87\110\69\72\65\100\81\102\67\89\82\65\114\65\65\90\89\89\55\66\121\70\80\118\114\80\82\76\113\88\103\49\52\90\66\48\83\78\116\76\75\87\57\87\82\98\57\67\89\55\118\66\56\116\70\49\107\107\81\76\110\122\122\75\79\68\118\81\102\78\73\122\82\79\113\53\76\48\65\106\51\86\101\56\50\87\82\47\117\113\110\104\65\83\113\53\67\121\72\52\83\56\54\98\48\105\113\98\87\98\115\106\105\56\122\99\98\74\56\101\88\74\70\52\107\54\119\84\69\82\55\71\49\103\120\48\110\49\100\115\71\116\69\67\121\117\57\118\73\82\65\57\86\55\68\113\47\119\52\83\55\54\82\116\85\54\83\47\118\105\114\98\118\73\56\116\102\105\85\98\43\56\115\78\116\115\43\117\81\70\102\83\57\89\74\115\109\122\79\103\106\77\107\111\86\90\70\111\90\48\54\75\57\70\117\70\115\50\101\114\85\81\120\122\68\83\121\86\107\71\105\116\103\98\109\101\112\111\105\85\80\71\66\109\74\108\67\72\52\55\77\68\73\83\115\120\56\108\117\98\98\71\80\55\73\67\108\115\69\120\78\99\115\71\112\117\101\74\99\115\116\120\97\65\81\76\102\112\121\100\81\73\101\50\73\86\69\102\88\110\89\74\116\113\97\51\43\119\66\82\49\87\56\107\105\47\119\71\65\69\71\72\77\85\114\74\82\119\120\80\66\52\109\67\85\89\86\51\53\85\68\90\71\49\69\73\49\53\53\112\48\53\77\48\86\82\51\73\53\121\87\111\80\110\82\121\97\101\86\107\67\54\102\78\69\84\67\104\85\105\50\66\118\89\67\65\82\114\106\115\50\54\48\76\116\65\69\52\77\89\50\53\71\71\109\49\117\121\112\82\105\80\105\110\51\120\70\103\77\82\73\53\87\97\114\86\114\56\69\67\67\99\105\99\90\76\88\67\113\71\112\67\98\81\69\53\53\120\81\121\101\88\112\85\122\85\104\47\122\110\98\79\71\117\43\47\108\71\70\113\80\49\117\67\69\89\76\78\97\52\71\72\74\50\76\114\100\81\117\85\118\70\78\98\73\102\48\73\102\105\48\122\83\89\105\84\55\107\80\57\89\101\78\86\89\104\108\117\66\112\108\56\115\82\57\87\80\104\73\82\56\43\82\74\104\100\71\108\77\100\54\83\112\82\100\55\120\84\66\121\70\51\85\86\82\70\117\76\115\87\114\76\79\47\88\85\49\85\68\83\68\50\76\113\88\116\79\107\51\53\82\101\89\74\103\90\49\78\116\86\89\82\109\110\112\70\55\78\73\68\86\51\89\119\97\87\50\56\78\101\112\70\56\43\70\72\108\47\118\97\71\120\116\76\97\118\65\87\73\86\67\105\104\57\88\89\56\54\84\103\73\98\89\112\52\49\57\73\75\81\99\79\75\50\106\106\122\70\57\51\43\77\117\98\78\78\82\52\78\74\43\49\99\121\103\65\55\115\74\84\106\110\98\53\77\87\51\49\48\50\98\47\100\118\70\109\53\104\120\122\87\54\43\65\116\54\120\103\122\111\99\69\76\116\89\121\87\105\68\82\56\71\79\74\47\81\75\80\78\68\113\66\100\83\52\109\97\110\57\122\48\86\78\120\75\52\122\109\82\113\89\52\81\118\78\89\75\66\76\120\116\109\73\57\72\47\103\82\69\74\85\104\65\108\55\73\116\56\56\122\103\106\52\101\66\86\108\120\49\86\80\121\113\78\81\118\75\105\107\81\120\68\112\81\80\56\82\70\66\114\98\84\47\55\71\97\121\90\53\103\71\116\49\80\116\79\50\113\81\102\70\71\81\121\103\103\89\49\56\68\53\104\88\106\114\50\78\114\78\88\110\69\102\88\54\76\57\70\102\118\56\67\106\107\53\122\74\77\107\75\110\69\106\90\86\117\108\68\51\69\111\100\109\72\73\65\113\66\50\102\77\43\99\84\111\67\52\53\84\105\48\97\55\74\70\74\51\76\109\87\102\121\51\122\113\74\116\102\83\74\68\74\109\76\118\49\101\68\102\74\108\108\110\71\97\116\110\70\65\43\121\74\105\65\67\99\83\49\70\66\117\119\74\103\79\85\54\70\76\113\122\73\120\70\121\52\54\97\53\65\81\122\88\47\97\119\121\80\108\57\114\84\97\81\77\101\89\106\86\48\105\118\69\43\113\104\71\48\88\120\118\114\55\98\110\97\55\80\120\85\57\83\98\75\71\104\53\112\82\80\84\122\75\56\113\67\74\87\84\79\121\89\117\84\99\88\111\116\108\50\89\103\99\115\47\50\83\106\84\66\88\118\87\53\103\112\117\85\106\65\67\88\69\47\83\49\115\107\50\57\52\48\56\89\102\48\110\99\49\65\108\103\104\120\89\50\43\121\56\56\97\77\87\67\101\48\104\119\56\101\67\52\119\105\111\81\71\55\69\115\115\48\98\75\115\101\69\112\47\118\121\81\68\100\119\75\109\74\72\111\105\113\74\109\90\79\77\51\52\120\49\43\57\109\67\76\79\98\114\78\68\77\68\81\119\51\48\80\53\56\115\114\116\47\43\53\100\103\79\55\116\102\48\110\52\76\74\78\86\106\99\116\57\122\98\74\43\85\78\89\109\76\102\71\107\86\82\72\120\120\111\97\107\121\57\47\65\84\118\79\104\47\104\83\97\57\120\108\110\52\106\65\80\77\88\107\107\104\113\104\89\79\77\54\69\97\84\103\49\118\109\71\77\117\75\110\97\49\83\98\112\98\111\98\76\54\108\115\54\97\110\78\65\87\119\109\56\101\114\116\98\82\79\90\53\88\87\116\121\76\74\116\117\80\104\107\100\50\73\98\89\97\82\43\75\110\108\82\111\56\98\80\105\99\51\52\119\79\50\67\72\97\119\85\115\86\68\69\117\49\72\105\84\49\54\55\51\110\71\113\102\70\87\49\97\122\106\88\65\117\53\82\83\43\105\100\114\103\109\56\111\102\112\57\85\113\103\78\86\108\49\49\106\52\112\52\87\65\71\52\119\110\56\112\105\77\87\78\114\86\67\70\108\72\80\104\116\56\73\109\56\101\104\76\98\80\121\89\57\81\110\50\108\73\49\120\88\121\108\105\97\107\73\88\74\104\51\90\80\77\55\76\43\98\101\110\88\83\90\70\106\82\54\54\69\66\121\86\48\73\74\99\89\50\68\97\65\98\99\55\56\73\83\88\115\81\54\119\89\119\88\106\81\101\97\85\51\113\73\71\97\103\118\112\105\85\90\112\73\108\70\56\115\55\111\57\121\56\55\65\68\114\43\122\82\119\47\73\98\90\85\55\56\89\67\121\115\67\67\119\97\113\77\109\110\100\76\82\53\103\83\73\74\56\99\50\68\114\101\82\102\77\70\78\49\82\80\115\101\78\49\108\68\68\84\83\105\109\116\107\71\89\87\54\47\51\85\101\89\114\75\54\79\80\47\110\77\66\103\84\57\80\112\50\88\68\112\54\77\74\117\89\99\122\73\72\49\74\82\75\80\118\105\83\118\49\116\97\65\107\111\54\66\122\82\86\57\84\88\72\116\81\114\109\119\76\87\57\77\80\119\52\110\85\97\121\119\111\57\87\74\51\113\115\76\98\72\69\90\52\71\84\56\121\47\113\99\56\51\76\81\51\84\119\55\113\66\83\82\70\106\108\109\112\76\81\97\48\47\84\103\50\108\48\88\97\85\85\108\52\51\49\115\118\117\71\118\101\99\49\69\48\97\106\115\88\81\97\77\105\119\90\47\70\73\88\68\111\111\120\105\116\70\68\84\70\43\84\115\108\68\50\84\98\73\83\78\114\72\116\43\116\68\108\122\81\107\82\109\77\53\83\87\69\100\100\89\47\107\104\43\82\82\103\88\105\103\73\104\105\106\75\119\90\56\77\85\86\90\65\74\82\74\48\73\105\52\90\88\90\81\67\99\114\88\73\110\89\120\43\90\114\75\115\106\48\48\116\113\100\86\89\98\122\43\100\122\67\79\107\47\48\56\80\114\117\117\105\108\108\73\89\84\98\48\72\85\108\85\48\56\68\80\97\109\99\120\108\75\83\77\66\118\48\81\81\109\106\121\49\83\48\120\82\114\56\108\68\101\52\80\78\119\112\118\70\115\47\71\97\101\85\103\68\67\106\67\54\53\80\112\119\103\83\116\109\101\107\66\56\75\118\114\57\76\97\104\108\99\55\71\106\101\69\111\112\113\90\109\81\111\105\70\109\69\104\115\66\107\68\86\43\111\108\84\86\56\70\120\105\83\49\109\99\79\88\106\72\43\84\99\53\76\110\67\88\76\105\108\52\97\98\107\98\112\78\68\98\53\66\75\52\103\111\52\67\98\106\113\47\70\117\99\121\114\56\72\118\116\51\103\86\122\49\47\66\86\51\89\43\87\68\71\84\75\52\108\109\98\78\113\54\111\47\70\118\71\69\75\68\119\75\68\90\117\71\75\72\79\78\111\80\69\54\108\119\83\86\72\81\52\110\111\105\75\57\68\112\84\56\99\88\43\87\81\68\111\97\73\107\99\70\50\43\90\53\103\110\73\84\98\106\111\107\79\100\116\43\113\110\52\81\89\77\117\114\110\118\119\55\108\57\90\88\89\83\72\88\89\111\48\122\120\100\74\116\106\50\68\76\50\82\99\104\52\78\77\106\81\72\99\82\65\70\120\66\103\43\81\82\98\43\68\84\56\119\48\82\101\77\87\78\70\69\121\43\98\104\87\68\112\105\122\47\48\70\81\117\78\56\104\57\78\102\121\83\81\73\97\78\56\99\104\66\109\69\72\111\56\74\57\99\85\99\74\69\113\120\81\85\55\75\73\101\79\77\66\68\49\101\122\70\104\71\75\67\65\69\47\73\69\74\48\98\76\98\113\70\109\81\74\50\104\119\84\115\54\79\121\90\108\104\53\79\105\53\69\73\47\84\50\84\112\111\70\69\85\103\116\80\116\53\100\57\53\85\80\122\90\50\103\106\119\117\48\86\76\73\97\51\66\114\70\101\77\117\80\80\66\109\43\100\55\103\117\54\119\107\116\82\83\106\88\97\66\66\110\122\87\70\82\72\87\74\89\49\103\122\86\43\122\50\97\77\48\118\88\108\49\82\56\77\49\68\65\56\100\80\49\77\113\122\103\80\112\52\101\111\119\72\113\71\52\78\102\85\120\75\72\90\113\72\81\104\48\69\84\104\66\77\43\99\118\54\116\55\75\98\73\119\104\68\56\75\104\84\51\111\110\53\105\119\116\75\54\115\71\103\76\118\106\69\97\77\102\70\107\52\106\120\112\66\89\79\68\110\105\118\89\80\56\55\82\80\110\72\50\111\88\113\69\56\83\122\116\112\87\80\74\121\121\50\119\112\53\103\49\76\67\104\101\74\89\47\121\75\114\80\109\81\112\53\109\78\65\76\54\121\113\105\52\97\119\88\74\79\65\43\55\116\57\101\72\111\74\49\115\97\108\85\122\105\85\112\113\67\80\85\67\106\81\107\80\104\88\112\111\90\47\97\116\81\71\79\102\84\109\117\73\99\47\79\48\50\51\49\77\68\70\105\122\48\97\100\49\122\118\90\70\50\57\84\85\121\54\105\65\70\67\77\108\83\108\110\97\51\82\86\50\74\116\47\112\70\75\73\65\81\55\66\43\84\115\101\85\120\120\50\98\98\113\52\67\84\82\55\87\73\66\121\89\117\55\74\89\103\76\114\86\103\117\115\109\71\81\57\52\110\65\117\84\66\114\122\87\81\110\71\73\67\72\112\89\109\103\97\48\88\101\74\48\117\104\102\75\81\113\52\98\104\86\97\120\84\65\49\53\102\122\43\65\107\79\73\101\82\56\82\65\67\51\65\74\56\50\73\88\87\72\72\49\81\78\82\71\85\78\102\109\67\56\87\74\71\119\56\70\112\80\104\47\88\49\47\69\84\70\66\55\74\53\82\116\47\74\109\74\118\117\87\79\119\121\115\52\100\98\52\113\97\110\68\97\121\81\79\71\54\116\73\81\98\120\56\83\118\97\80\67\71\57\84\52\50\71\87\84\117\66\86\90\77\110\81\120\87\109\76\85\88\97\73\110\117\81\107\69\102\122\86\115\66\86\107\77\52\109\73\119\99\53\57\101\97\52\84\83\105\106\72\82\89\69\110\99\54\73\119\61\61";local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIII='NGI2d3Q8YSp3KmsvYWc9K0c6dw==';local karrotlIIlIIlI=function(a,b)local c=karrotlIIlIlIl(karrotlIIlIllI(a))local d=c["\99\105\112\104\101\114"](c,karrotlIIlIllI(b))return karrotlIIlIllI(d)end;local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIII='OS5nRkJxRlY8XydZaSZ2OXdEb3t7I2EkNmcvbyxdZVYvZy86Mjg=';function karrotlIIlIlll(a,b)local c=karrotlIIlIllI(a,b);local d=karrotlIIllIlI;return c,d end;return karrotlIIlIlII(karrotlIIlIIlI(karrotlIIllIll,karrotlIIlIIIl),getfenv(0))()end)()