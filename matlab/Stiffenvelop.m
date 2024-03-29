function O=Stiffenvelop(min,max,l,mu,c,zeta)

ds = 1e9;
s = [min:ds:max]';


for i=1:length(s)
    maxres(:,i) = fogtest(s(i,1),l,mu,c,zeta);
end


namedef = strcat('stedef','min',int2str(min),'max',int2str(max),'L',int2str(l),'c',int2str(c),'mu',int2str(mu),'.tikz')
nameacc = strcat('steacc','min',int2str(min),'max',int2str(max),'L',int2str(l),'c',int2str(c),'mu',int2str(mu),'.tikz')
nameaco = strcat('steaco','min',int2str(min),'max',int2str(max),'L',int2str(l),'c',int2str(c),'mu',int2str(mu),'.tikz')


% figure('name','stiff_envolop');
% plot(s,maxres);

figure(1)
plot(s,maxres(1,:))
title(strcat('StiffEnvelop def from',int2str(min),' to ', int2str(max)));
%matlab2tikz(namedef, 'height', '\figureheight', 'width', '\figurewidth','showInfo', false);


figure(2)
plot(s,maxres(2,:))
title(strcat('StiffEnvelop acc from',int2str(min),' to ', int2str(max)));
% matlab2tikz(nameacc, 'height', '\figureheight', 'width', '\figurewidth','showInfo', false);


figure(3)
plot(s,maxres(3,:))
title(strcat('StiffEnvelop dc from',int2str(min),' to ', int2str(max)));
% matlab2tikz(nameaco, 'height', '\figureheight', 'width', '\figurewidth','showInfo', false);