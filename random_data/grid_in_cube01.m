function [ r, seed ] = grid_in_cube01 ( dim_num, n, center, seed )

%*****************************************************************************80
%
%% GRID_IN_CUBE01 generates grid points in the unit hypercube.
%
%  Discussion:
%
%    N points are needed in an DIM_NUM dimensional space.
%
%    The points are to lie on a uniform grid of side N_SIDE.
%
%    Unless the N = N_SIDE**DIM_NUM for some N_SIDE, we can't use all the
%    points on a grid.  What we do is find the smallest N_SIDE
%    that's big enough, and randomly omit some points.
%
%    If N_SIDE is 4, then the choices in 1D are:
%
%    A: 0,   1/3, 2/3, 1
%    B: 1/5, 2/5, 3/5, 4/5
%    C: 0,   1/4, 2/4, 3/4
%    D: 1/4, 2/4, 3/4, 1
%    E: 1/8, 3/8, 5/8, 7/8
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    04 August 2005
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer DIM_NUM, the spatial dimension.
%
%    Input, integer N, the number of points.
%
%    Input, integer CENTER, specifies the 1D grid centering:
%    1: first point is 0.0, last point is 1.0;
%    2: first point is 1/(N+1), last point is N/(N+1);
%    3: first point is 0, last point is (N-1)/N;
%    4: first point is 1/N, last point is 1;
%    5: first point is 1/(2*N), last point is (2*N-1)/(2*N);
%
%    Input/output, integer SEED, a seed for the random number generator.
%
%    Output, real R(DIM_NUM,N), the points.
%

%
%  Find the dimension of the smallest grid with N points.
%
  n_side = grid_side ( dim_num, n );
%
%  We need to select N points out of N_SIDE**DIM_NUM set.
%
  n_grid = n_side^dim_num;
%
%  Generate a random subset of N items from a set of size N_GRID.
%
  [ rank_list, seed ] = ksub_random2 ( n_grid, n, seed );
%
%  Must make one dummy call to TUPLE_NEXT_FAST with RANK = -1.
%
  rank = -1;
  tuple = tuple_next_fast ( n_side, dim_num, rank );
%
%  Now generate the appropriate indices, and "center" them.
%
  for j = 1 : n

    rank = rank_list(j) - 1;

    tuple = tuple_next_fast ( n_side, dim_num, rank );

    if ( center == 1 )
      r(1:dim_num,j) = (     tuple(1:dim_num)' - 1 ) / (     n_side - 1 );
    elseif ( center == 2 )
      r(1:dim_num,j) = (     tuple(1:dim_num)'     ) / (     n_side + 1 );
    elseif ( center == 3 )
      r(1:dim_num,j) = (     tuple(1:dim_num)' - 1 ) / (     n_side );
    elseif ( center == 4 )
      r(1:dim_num,j) = (     tuple(1:dim_num)'     ) / (     n_side );
    elseif ( center == 5 )
      r(1:dim_num,j) = ( 2 * tuple(1:dim_num)' - 1 ) / ( 2 * n_side );
    end

  end

  return
end
