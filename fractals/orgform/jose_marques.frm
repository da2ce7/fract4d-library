[PREV] [NEXT] [PREV Thread] [NEXT Thread] 


jmarques@embratel.net.br (Jose Marques) 

BAIL_OUT.FRM and BAIL_OUT.PAR for Fractint
19.2

Fri, 30 Jun 1995 09:50:34 GMT Empresa Brasileira de Telecomunicacoes 

Newsgroups: 
   sci.fractals 



BAIL_OUT.FRM and BAIL_OUT.PAR were distributed in Dan Goldwater
FracXtra v. 6.0 collection, but unfortunately the files were corrupt.
Also some of the images didn't work in the version 19.2 of Fractint.

I'm posting here the revised and corrected versions of these files.

I made them when the change of bail_out conditions wasn't yet a
built-in feature of Fractint. Even so, I think the results are quite
interesting. Please E-Mail your opinions, and other PAR files based in
the BAIL_OUT.FRM to Jose Marques - jmarques@embratel.net.br

cut here:
8>
{
BAIL_OUT.FRM: Formulas that explore various heterodox ways of testing
bail_out condition for the classical Mandelbrot set. You won't get the
"mathematically correct" Mandelbrot, but the results are visually in-
teresting!
File Bail_out.par has some examples of pictures based on these
formulas.
By Jose Marques; E-Mail: jmarques@embratel.net.br
}

bail_out01 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(z)| < p1
}
bail_out02 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(real(z))| < p1
}
bail_out03 (xAxis)  {;xAxis won't do for fn=exp. Use bail_out03exp
instead
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| < p1
}
bail_out03exp  {
z = c = pixel:
  z = z^2 + c
   |exp(imag(z))| < p1
}
bail_out03i (xAxis)  {; use p1 slightly less than 1 in sin and cos
z = c = pixel, i = (0.0, 1.0):
  z = z^2 + c
   |fn1(imag(z)*i)| < p1
}
bail_out04 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   real(fn1(z)) < p1
}
bail_out05   {
z = c = pixel:
  z = z^2 + c
   imag(fn1(z)) < p1
}
bail_out06 (xAxis)  {
z = c = pixel:
  z = z^2 + c
   |fn1(|z|)| < p1
}

{The next two formulas don't seem to work the way they should.
; May be there's some bug in the code for the logical "and" and "or"}
bail_out07   {
z = c = pixel:
  z = z^2 + c
   |fn1(imag(z))| < p1 && |fn1(real(z))| < p1
}
bail_out08   {
z = c = pixel:
  z = z^2 + c;
   |fn1(real(z))| < p1  || |fn1(imag(z))| < p1
}

simple01(xAxis) {
z = c = pixel:
   z = z^2 + c;
     real(z) < abs(z) + p1
}
simple02 {
z = c = pixel:
   z = z^2 + c;
     imag(z) < abs(z) + p1
}

8>
{
BAIL_OUT.PAR - some batch files to illustrate the formulas in
BAIL_OUT.FRM
By Jose Marques; E-Mail: jmarques@embratel.net.br.
}
 
Mandelbrot_Egg     {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=simple02 corners=-2.702811/2.007103/-1.971164/1.561271
  initorbit=1/1 float=y maxiter=255 inside=0 potential=255/100/1000
colors=000XX0<
zz0<
  }
 
Whatsit_Mandelbrot {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=simple01 corners=-2.321582/1.390418/-1.407025/1.376975
  params=0/0/0/0/0/0 initorbit=pixel float=y maxiter=255 inside=0
  distest=10000/71/800/600 colors=@default.map
  }

Horned_Mandelbrot  {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out02 function=recip
  corners=-2.440551/1.559449/-1.5/1.5 params=500 float=y maxiter=255
  inside=0
colors=653XCNuwICDTCjRTAl536wuxHIlXNCuIwCTDCRjTlA365uxwIlHNCXIwuTDCRjClA\
T356uwxIHlNXCIuwTCDRCjlTA653xwulHICXNwuIDCTjCRATl635xuwlIHCNXwIuDTCjRCAl\
T566wxxHllXCCuwwCDDCjjTAA563wxuHlIXCNuwICDTCjRTAl536wuxHIlXNCuIwCTDCRjTl\
A365uxwIlHNCXIwuTDCRjClAT356uwxIHlNXCIuwTCDRCjlTA653xwulHICXNwuIDCTjCRAT\
l635xuwlIHCNXwIuDTCjRCAlT566wxxHllXCCuwwCDDCjjTAA563wxuHlIXCNuwICDTCjRTA\
l536wuxHIlXNCuIwCTDCRjTlA365uxwIlHNCXIwuTDCRjClAT356uwxIHlNXCIuwTCDRCjlT\
A653xwulHICXNwuIDCTjCRATl635xuwlIHCNXwIuDTCjRCAlT566wxxHllXCCuwwCDDCjjTA\
A563wxuHlIXCNuwICDTCjRTAl536wuxHIlXNCuIwCTDCRjTlA365uxwIlHNCXIwuTDCRjClA\
T356uwxIHlNXCIuwTCDRCjlTA653xwulHICXNwuIDCTjCRATl635xuwlIHCNXwIuDTCjRCAl\
T566wxxHllXCCuwwCDDCjjTAA563wxuHlIXCNuwICDTCjRT0AxwulHICXNwuIDCTjCRATl63\
 5xuwlIHCNXwIuDTCjRCAlT566wxxHllXCCuwwCDDCjjTAA563wxuHlI
  }
 
Mandel_garden1      {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out04 function=tanh passes=2
  corners=-2.300375/1.699625/-1.489983/1.510017 params=1 float=y
  maxiter=255 inside=0
colors=000L`FUc_5h3n4Kn_GYEpwtu523hEicnUh35YmnQV_EpYwut532hiEcUnh53Ynm_n\
GEYptuw235EihnUc35hmnYGn_pYEtwu253EhincU3h5mYnG_npEYutt322iEEUnn533nmmnG\
GYpputw325iEhUnc53hnmYnG_YpEuwt352ihEUcn5h3nYmn_GYEpwtu523hEicnUh35Ymn_G\
nEpYwut532hiEcUnh53Ynm_nGEYptuw235EihnUc35hmnYGn_pYEtwu253EhincU3h5mYnG_\
npEYutt322iEEUnn533nmmnGGYpputw325iEhUnc53hnmYnG_YpEuwt352ihEUcn5h3nYmn_\
GYEpwtu523hEicnUh35Ymn_GnEpYwut532hiEcUnh53Ynm_nGEYptuw235EihnUc35hmnYGn\
_pYEtwu253EhincU3h5mYnG_npEYutt322iEEUnn533nmmnGGYpputw325iEhUnc53hnmYnG\
_YpEuwt352ihEUcn5h3nYmn_GYEpwtu523hEicnUh35Ymn_GnEpYwut532hiEcUnh53Ynm_n\
GEYptuw235EihnUc35hmnYGn_pYEtwu253EhincU3h5mYnG_npEYutt322iEEUnn533nmmnG\
GYpputw325iEhUnc53hnmYnG_Yzp235EihnUc35hmnYGn_pYEtwu253EhincU3h5mYnG_npE\
 Yutt322iEEUnn533nmmnGGYpputw325iEhUnc53hnmYnG_YpEuwt352
  }
 
Decorated_Mandelbr {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out01 function=tanh passes=1 corners=-2/2/-1.5/1.5
  params=1 float=y maxiter=255 inside=0 symmetry=xaxis
colors=000zGGkG0kkkkGG0zz00kWGGzGGW0kGkzGkkkzkWGkkGWk00WkGzkkzzkkWGGWGk0\
GWkGz0W0zGGG0WWGzzkzk0zG00GWGGkWkkWzzGGzkkW0zz0kGkzWGz00z0Gkk0W0WW0W0WGz\
zG0zkGz0z0kkzzGz0WzkW0kzkWGzG0WWG00Gk0Gk0kW0W0GW0W00kkzzW0z0WWzkWGkz0G0z\
Gz0WzzG0Gkz0Wkk0Wzzkk00Gkzkz0kGzk0WkGWGzGkzWGWzGG0WWG0zz0GkWWzz000GGWkkk\
WW0W0zkkGGGzGz0z0zk0WzWkzGGWGzWGzzz0kzGzW0zGzkWWkzGWkzk0WzzzkWWzk0zz0z0W\
W0kzG0G0kWGGG0WG00zzWGkGzzWzzWkWGGzWzkzkkWWkGzWkGWz0kzGWWzk0GkWGGk0WGzGW\
0WGkW0WWz0zGk0k0zW0WkWGkkWzG0G0kkzzGWkW0G0W0WzWGkzGzWz0WWkzzkk00W0GzGWk0\
GWGGk00k00zzzzzWWkGzkGW0z0kkz00GzGz0GG0Wz0kz0WW00kGzk0kzW0kGzkkGGkGkkzWW\
kWGW0kkzWWGG0zW00WGGG00zzGW0WG00WWkzGkWkzWWzkkzGkzzW00kGGzWGWkGWzkGG0WkG\
zkG0zz0GzkW0W0kGWzW0GWG00z000WkkzWGk0GGzzkkG0GWz00kW00000WWkzWkzWGzzzzkW\
zGWkkGW000zGGzW0kzz0kzzkW0G0GWkGGW0k0GzGzGzG0Gk0WkkGWkG
}
 
Spider1_Mandelb    {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out02 function=recip passes=2
  corners=-2.710748/1.962149/-1.752336/1.752336 params=200/0/0/0/0/0
  float=y maxiter=500 inside=0 symmetry=xaxis
colors=000hNW<
PiPr<
rBFjOq<
Qr<
  }

Far-Away_Mandelbr  {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out05 function=exp
  corners=-7.142857/7.142857/-5.357143/5.357143 params=10/0/0/0/0/0
  float=y maxiter=255 inside=0
colors=000GW0Osz8k8OsWGWszsOO88O8c0cO0cszzc0W0GzGkkO80WkW8G80sGkkGkczWc8\
sWcs000GW80OWkzzzOGcsGGG0c8cs0O0OcOskszGzGzcOsW8zOGkW8cG0GW8WWGzGOc80800\
OOWz0z0OGGGc80GsWWks0cGWsss8OcWGkkkccsOGk8kGOz0cO8GWz0Ws80zsGGWWzk8cWsGs\
cOs8ckssczcWW8sGO8zG00W8W00Gsc8cO0GkGWkG08Oss8Oss0k08OczWk0sWssW0Gk0Wc8c\
cGsOWzWkOW0kOG0c88zz8ssW8GsckGk0sWWs8WOzz0zOscszkGGcz8kcGWWGWkkzkkGkkcc8\
Gksscsz0czsk0WcWWssO8c8zWs8kGs0OzszszczO8sz0z8k80WkOszkcW8szsz0zGzW0cGkO\
W808OcWsszckz880OGGzGsckW080OzO8Gs8WO8sOGWOO8zzzkcGWszW8Ocsszz8cz0OO8zkz\
c88cz8zO88OWOGzc80WOkOW0zkkGzsc0zkGsksGWkOkGsOG080sczOz0cs8GWO08GzzOkGss\
zsO88sc8GkccG8zcWzkcc80sGOOW0ckOkG8kck0zkzckG8WWOkGOsWzk00Wz8GOsscc0cGW8\
WkOk8880czWk0szkzsGOcO8O0sGGOWzGcOGOkWkG80zs0czGOzc8cWO0Ws8WGc8GOW0szc00\
8OzGWz88Osc8cc8OszzkW0zsG08z8GW0Os8Gk00OWk0s8zkscGczWGc
  }

Pointillistic_Mand  {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out05 function=cos
  corners=-2.460576/1.539424/-1.5/1.5 params=10000 float=y maxiter=255
  inside=0 symmetry=xaxis
colors=000SSsX_aaRZZel77sEsslzzeezssEDzzDL7sSlezZZSD7LLDlZlEDEZl7zS7ZSs7\
zDzZssSSeSZESLEZszsl7zeDEl7ZZeLZeLDLEDlDelDlZZLszSEDSZlESLEeLSD7ZS7SZESz\
eD7LzDlssDEzSsLDZeLSLSZL7zsZlLel7S7sSl7ES77DEl7ZzzZesElSSZDZe7lsLsllDlZS\
LLe7ezezDSDSLDlSlLSeelezEezzzZsSezlZSezsElsz7lLzLZESzzsllzsDzzZSDElZsS7D\
7Zsl7e7ZEeDDzSEeLeSSEzSELl77SESszLLElsezEL7ESZLSeEESsZ7sleeLZl7S7EZleLlD\
lEzDzeLZLZSEDlLEeLLlzeZeZLsSzeEslD7ZEDlSE7LSeSlSDllszSLsZDlDeSelsDele7LZ\
ZLDDzzzSSlls7zselZSZsLzZDeSeSDeeDEzZsSZElDZLezLZLzEZL7zLs77LessSllsE7EDL\
LSEEe7ZSlZDl77eZDSzeEDEeDDElsSeslLSElSssz7LzSEZZs7eSEels7EzseeDlL7zLeDzz\
ZeSLEDEDselzEDeEeZDzDZZELsSl7sZ7ezSLseD7ESDZLlDDDDDlELSELSE7zzzzsESeELLe\
EDDZze7SlDsSzZszzLlZeZelseelZLZeSeSeS7Z7sDELLelL7S7eLeDsLLs7eDSSDDsEe7Se\
eEZLeszeLssSsE7Ls7lsZDlLeSLLzzsLle7leLDelL7zDlDz7eeZEl7
  }
 
Handcuffed1_Mand    {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out03i function=sqr
  corners=-2.811441/2.066608/-1.835376/1.823161
  params=0.0050000000000000001 initorbit=pixel float=y maxiter=255
  inside=0 potential=255/600/0
colors=0005G6<
WBMXCNYDO<
  }
 
Handcuffed2_Mand    {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out03i function=tan
  corners=-2.811441/2.066608/-1.835376/1.823161
  params=0.20000000000000001 initorbit=pixel float=y maxiter=255
  inside=0 potential=255/600/0
colors=00099Q<
BWMBXNCYOD<
  }
  
Plastic_Mandelbrot {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out03i function=tan
  corners=-1.8979467/-1.6932248/-0.076306311/0.07723517
  params=0.20000000000000001 initorbit=pixel float=y maxiter=500
  inside=0 potential=255/600/0
colors=000IHl<
COYD<
  }
 
Carnival_Mandelb   {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out04 function=sinh
  corners=-3.911301/3.450603/-2.769927/2.751496 params=12 float=y
  maxiter=255 inside=0 decomp=128 symmetry=xaxis

colors=00072B101000<
9q7Jr5Tk2bd0kY0m<
0j29q4Jr6Tk9bdBkYDm<
b1Rk0Pm<
>
BdE1YB0<
Ur5Kk2Bd01Y00<
cq4Ur6Kk9BdB1YD0<
  }
 
Mandel_garden2     {
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out04 function=sinh
  corners=-2.300375/1.699625/-1.489983/1.510017 params=2 float=y
  maxiter=255 inside=0
colors=0000D00E08A7<
14<
>
T6mvC353<
  }
 
Spider2_Mandelb    { ; (in his web)
  reset=1920 type=formula formulafile=bail_out.frm
  formulaname=bail_out03i function=cosh passes=b
  corners=-2.811441/2.066608/-1.835376/1.823161 params=0.998
  initorbit=pixel float=y maxiter=255 inside=10 potential=255/600/0
colors=000CCC<
YDO<
  }

8>

Jose Marques

jmarques@embratel.internet.br


