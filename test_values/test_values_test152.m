function test_values_test152 ( )

%*****************************************************************************80
%
%% TEST152 demonstrates the use of TRAN07_VALUES.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    01 February 2009
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST152:\n' );
  fprintf ( 1, '  TRAN07_VALUES stores values of\n' );
  fprintf ( 1, '  the transportation function of order 7.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      X               FX\n' );
  fprintf ( 1, '\n' );

  n_data = 0;

  while ( 1 )

    [ n_data, x, fx ] = tran07_values ( n_data );

    if ( n_data == 0 )
      break
    end

    fprintf ( 1, '  %12f  %24.16f\n', x, fx );

  end

  return
end