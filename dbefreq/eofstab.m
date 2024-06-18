function eofstab(eiv,pc)%Function eofstab(L,PC) -- EOF stability analysis%  L  = column or row vector with M eigenvalues L(j), j=1:M%  PC = matrix of M columns of principal components%%  Uses STER to determine effective degrees of freedom Neff%  for each of the PC series, then estimates the sampling error%  for each EOF mode as dL(j) = L(j)*sqrt(2/Neff). Then plots the eigen-%  values with their � dL sampling errors. The rule is that the %  modes are stably separated if the sampling errors of neighbor-%  ing eigenvalues do not overlap.%%  Ref: North et al., Mon.Wea.Rev., 110, 699-706.[nr,nc] = size(eiv);if nr > nc; eiv = eiv'; end[nr,nc] = size(pc);lag = min(50,nr);% Estimate the large-lag standard errors & Neff (Davis, 1976)for j = 1:nc	LLSE(j) = ster(pc(:,j),pc(:,j),lag);endNeff = 1./(LLSE.^2);% Estimate the EOF sampling errors (North et al.)dL   = eiv.*sqrt(2./Neff);% Plot the resultsj = 1:10;dy = [eiv-dL;eiv+dL];plot([j;j],dy,'--c'); hold onplot([j-.125;j+.125],[dy(1,:);dy(1,:)],'-c')plot([j-.125;j+.125],[dy(2,:);dy(2,:)],'-c')plot(j,eiv,'c*',j,eiv,'*y'); hold offset(gca,'xlim',[0.5,nc+0.5])set(gca,'fontname','palatino')xlabel('Mode Number')ylabel('Eigenvalue')landscape