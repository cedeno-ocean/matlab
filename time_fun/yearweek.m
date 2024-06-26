function w = yearweek(datenums);
%YEARWEEK   Returns weeknumber using datenumber.
%
% w = yearweek(datenum) 
%
% returns the week number assuming Januari 1st to 7th
% as the first week.
%
% So this is not the week as applied in agendas.
%
%See also: DATENUM, YEARDAY

%% Copyright notice
%   --------------------------------------------------------------------
%   Copyright (C) 2004 Delft University of Technology
%       Gerben J. de Boer
%
%       g.j.deboer@tudelft.nl	
%
%       Fluid Mechanics Section
%       Faculty of Civil Engineering and Geosciences
%       PO Box 5048
%       2600 GA Delft
%       The Netherlands
%
%   This library is free software: you can redistribute it and/or
%   modify it under the terms of the GNU Lesser General Public
%   License as published by the Free Software Foundation, either
%   version 2.1 of the License, or (at your option) any later version.
%
%   This library is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%   Lesser General Public License for more details.
%
%   You should have received a copy of the GNU Lesser General Public
%   License along with this library. If not, see <http://www.gnu.org/licenses/>.
%   --------------------------------------------------------------------

%% Version <http://svnbook.red-bean.com/en/1.5/svn.advanced.props.special.keywords.html>
% $Id: yearweek.m 665 2009-07-09 13:44:59Z boer_g $
% $Date: 2009-07-09 06:44:59 -0700 (Thu, 09 Jul 2009) $
% $Author: boer_g $
% $Revision: 665 $
% $HeadURL: https://repos.deltares.nl/repos/OpenEarthTools/trunk/matlab/general/time_fun/yearweek.m $
% $Keywords: $

doy     = yearday(datenums);
w       = divcount(doy,7);

%% EOF
