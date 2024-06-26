function S = monthstr_mmm_dutch2eng(s)
%MONTHSTR_MMM_DUTCH2ENG  translates occurences of Mei to May, etc.
%
%   For use of dutch dates with datenum. Capitalizes the entire string.
%
%   Syntax:
%   varargout = monthstr_mmm_dutch2eng(varargin)
%
%   Input:
%   s = a string
%
%   Output:
%   s = a string with translated month names
%
%   Example
%   monthstr_mmm_dutch2eng
%
%   See also 

%% Copyright notice
%   --------------------------------------------------------------------
%   Copyright (C) 2010 <COMPANY>
%       tda
%
%       <EMAIL>	
%
%       <ADDRESS>
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

% This tool is part of <a href="http://OpenEarth.nl">OpenEarthTools</a>.
% OpenEarthTools is an online collaboration to share and manage data and 
% programming tools in an open source, version controlled environment.
% Sign up to recieve regular updates of this function, and to contribute 
% your own tools.

%% Version <http://svnbook.red-bean.com/en/1.5/svn.advanced.props.special.keywords.html>
% Created: 28 Jun 2010
% Created with Matlab version: 7.10.0.499 (R2010a)

% $Id: monthstr_mmm_dutch2eng.m 2737 2010-06-28 12:29:58Z thijs@damsma.net $
% $Date: 2010-06-28 05:29:58 -0700 (Mon, 28 Jun 2010) $
% $Author: thijs@damsma.net $
% $Revision: 2737 $
% $HeadURL: https://repos.deltares.nl/repos/OpenEarthTools/trunk/matlab/general/time_fun/monthstr_mmm_dutch2eng.m $
% $Keywords: $

%%
S = upper(s);
S = strrep(S,'MRT','MAR');
S = strrep(S,'MEI','MAY');
S = strrep(S,'OKT','OCT');