function contourmap_old(xyz,dx,dy,v,cax,ramp,vc)%Function contourmap(xyz,dx,dy,v,cax,ramp,vc)%  Color shading with superimposed contours. %    XYZ    = [Lon,Lat,Dat]%    dX,dY  = grid spacings in deg. Lon,Lat%    V      = map domain = [MinLon,MaxLon,MinLat,MaxLat]%    If Cax = 0, auto limits on colorbar, else Cax = [min,max]%    Ramp   = 1 or 0 for color interp = on or off%    Vc     = vectour of contour labels (if missing, input)jj = findnot(xyz(:,3)); if isempty(jj); jj = 1:length(xyz(:,3)); endif cax == 0; 	cax = [min(xyz(jj,3)),max(xyz(jj,3))]endcaxis(cax);if nargin < 7	vc = input('Contour labels vector = ');end[map,vm,x1,y1] = xyz2mat(xyz,dx,dy);%datamap(map,v,x1,y1,cax,ramp); hold onset(gca,'fontname','palatino','fontsize',[14])xx=min(xyz(:,1)):dx:max(xyz(:,1)); yy=min(xyz(:,2)):dy:max(xyz(:,2)); %cl = contour(xx,yy,map,vc,'-k');cl = contourfill2(xx,yy,map,vc); hold oncoastmap(v)clabel(cl,'manual');hold off