function [ y, m, ierror ] = ym_check_roman ( y, m )

%*****************************************************************************80
%
%% YM_CHECK_ROMAN checks a Roman YM date.
%
%  Discussion:
%
%    If the month is less than 1, then the month is incremented
%    by the number of months in the PREVIOUS year, and the year is
%    decremented by 1.
%
%    If the month is greater than the number of months in the CURRENT year,
%    then the month is decremented by the number of months in the CURRENT year,
%    and the year incremented by 1.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    08 March 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input/output, integer Y, M, the YM date.
%
%    Output, integer IERROR, is 0 if no error was found in the date
%    and 1 otherwise.
%

%
%  Check the year.
%
  [ y, ierror ] = y_check_roman ( y );

  if ( ierror ~= 0 )
    return
  end
%
%  Make sure the month isn't too small or too big.
%
  [ y, m ] = month_borrow_roman ( y, m );

  [ y, m ] = month_carry_roman ( y, m );

  return
end