function test_values_test079 ( )

%*****************************************************************************80
%
%% TEST079 demonstrates the use of GAMMA_LOG_VALUES.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 February 2009
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST079:\n' );
  fprintf ( 1, '  GAMMA_LOG_VALUES stores values of\n' );
  fprintf ( 1, '  the logarithm of the Gamma function.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      X            GAMMA_LOG(X)\n' );
  fprintf ( 1, '\n' );

  n_data = 0;

  while ( 1 )

    [ n_data, x, fx ] = gamma_log_values ( n_data );

    if ( n_data == 0 )
      break
    end

    fprintf ( 1, '  %12f  %24.16f\n', x, fx );

  end

  return
end