%filename: lung.m (main program)
clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
cref=0.2/(22.4*(310/273))
cI_v = linspace(cref/1.5,cref,5)
Alt_cI_tabl = [0 :500:6500 ; 20 19.6 18.4 17.3 16.3 15.3 14.4 13.5 12.7 11.9 11.2 10.5 9.9 9.3];
Alt_cI_tabl(2,:) = Alt_cI_tabl(2,:)/100/(22.4*(310/273));
Alt = interp1(Alt_cI_tabl(2,:),Alt_cI_tabl(1,:),cI_v)
cstar = cref/3;
for i = 1:length(cI_v)
    cI = cI_v(i);
    setup_lung_task10
    cvsolve
    outchecklung
    figure(100)
    subplot 211
    title('Task 6')
    hold on
    
    
    plot(Alt(i),Pv,'bo')% 'oxygen partial pressure in venous blood')
    plot(Alt(i),Pabar,'ro')% ,'mean arterial oxygen partial pressure')
    plot(Alt(i),PAbar,'ko')%'mean alveolar oxygen partial pressure')
    ylabel('Oxygen pressures')
    subplot 212
    hold on
    plot(Alt(i),cv,'bo')% 'concentrations of oxygen in venous blood')
    plot(Alt(i),cabar,'ro')% mean arterial oxygen concentration
    plot(Alt(i),cAbar,'ko')% mean alveolar oxygen concentration  
    ylabel('Oxygen concentrations')
end
xlabel('Altitude (m)')

