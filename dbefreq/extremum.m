function z = extremum(x)% Function z = extremum(x)%   Finds the largest extremum of <dat> regardless of sign.%   E.g., if ABS(MIN(x)) > MAX(x), returns MIN(x). If there are%   multiple occurrences of the extreme value, returns a posi-%   tive occurrence (if a positive occurrence exists). ***xx = abs(x);jj = find(xx == max(max(xx)));       % locate extremumz = max(x(jj));                      % choose + occurrence if jj > 1