%filename: lung.m (main program)
clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
cref=0.2/(22.4*(310/273))

for cstar = linspace(cref/3,cref,5)
    setup_lung_cstar
    cvsolve
    outchecklung
    figure(100)
    subplot 211
    title('Task 9 - Beta = 0.5')
    hold on
    
    
    plot(cstar,Pv,'bo')% 'oxygen partial pressure in venous blood')
    plot(cstar,Pabar,'ro')% ,'mean arterial oxygen partial pressure')
    plot(cstar,PAbar,'ko')%'mean alveolar oxygen partial pressure')
    plot(cstar,PI,'go')
    ylabel('Oxygen pressures')
    subplot 212
    hold on
    plot(cstar,cv,'bo')% 'concentrations of oxygen in venous blood')
    plot(cstar,cabar,'ro')% mean arterial oxygen concentration
    plot(cstar,cAbar,'ko')% mean alveolar oxygen concentration  
     plot(cstar,cI,'go')
    ylabel('Oxygen concentrations')
end
xlabel('c^*')
