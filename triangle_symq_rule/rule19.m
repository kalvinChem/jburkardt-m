function [ x, y, w ] = rule19 ( )

%*****************************************************************************80
%
%% RULE19 returns the rule of degree 19.
%
%  Discussion:
%
%    Order 19 (73 pts)
%    1/6 data for 19-th order quadrature with 17 nodes.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 June 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Parameters:
%
%    Output, real X(*), Y(*), the coordinates of the nodes.
%
%    Output, real W(*), the weights.
%
  x = [ ...
      -0.71015029250539571205725188857831, ...
       0.00000000000000000000000000000000, ...
      -0.87005513863591847539846627491196, ...
      -0.69945621064432203805136450119586, ...
      -0.24805042378404735475371987811852, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.48257092691741797006456094245205, ...
       0.00000000000000000000000000000000, ...
      -0.25105983153559812324481383767489, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.50128815307877630097134071409913, ...
      -0.26869006747347756381758551053812 ];
  y = [ ... ...
      -0.56868110833624004481988611063840, ...
       0.97274416749947380836266322101212, ...
      -0.56041590202911501559258672039248, ...
      -0.50955355803618757246691504082806, ...
      -0.35337391260199717622188423519488, ...
       0.76863314856603408380627827197299, ...
       0.11143817650139625458794243310849E+01, ...
       0.27079298080151709690311725774220, ...
      -0.44820650104172157467171108779575, ...
      -0.24469161409484972069659993886505, ...
      -0.50652963110043023623110954119541, ...
       0.53749806844809532876819461539117, ...
      -0.43599548606828934030698875208946, ...
       0.00000000000000000000000000000000, ...
      -0.55141263467657578807862062425378, ...
      -0.55150176836813067274425858670454, ...
      -0.57376647619684422448809207050633 ];
  w = [ ... ...
       0.38504278531892868609886548778606E-02, ...
       0.46782440974053020444480928944566E-02, ...
       0.43790899840937610846456372822265E-02, ...
       0.12760020705410626922975774421129E-01, ...
       0.34673634319836242706583072061103E-01, ...
       0.10025165180245639919338696393626E-01, ...
       0.11615619347983174558257617949020E-02, ...
       0.20894553379853770048532357879375E-01, ...
       0.23831566393070936109285638209472E-01, ...
       0.20752749075081240697538867154710E-01, ...
       0.21191699422660145703833059227548E-01, ...
       0.16221915816210101079240533113508E-01, ...
       0.15124040243920516850764130389157E-01, ...
       0.75606611406926425730513610639911E-02, ...
       0.67921804525194115915872354653919E-02, ...
       0.11128622936210414622021183322419E-01, ...
       0.43195358902170538658764280819587E-02 ];

  return
end