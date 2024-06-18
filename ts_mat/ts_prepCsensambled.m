function ix=ts_prepCsensambled(x_yr,x_dt,y_yr,y_dt)
% function ix=ts_prepCsensambled(x_yr,x_dt,y_yr,y_dt)
%
% TS_PREPCSENSEMBLED

%% [1] checamos si tenemos (a) el mismo n�mero de a�os y
%                          (b) los mismos a�os

if length(x_yr)~=length(y_yr),
    error('no son la misma cantidad de a�os'),
end
for i=length(x_yr),
    if x_yr(i)~=y_yr(i),
        error('no son a�os coincidentes'),
    end
end

%% [2] checamos que los a�os no tengan NaN
%      (para que puedan entrar al an�lisis)

j=1;
for i=1:length(x_yr),
    flag_dt(i,:)=[sum(isnan(x_dt(i,:))),...
        sum(isnan(y_dt(i,:)))];
    if flag_dt(i,1)==0 && flag_dt(i,2)==0,
        ix(j)=i;
    end
    j=j+1;
end