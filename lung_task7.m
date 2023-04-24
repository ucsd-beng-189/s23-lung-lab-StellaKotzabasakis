%filename: lung.m (main program)
clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
cref=0.2/(22.4*(310/273))
cstar=1.5*cref;
for cI = linspace(cref/2,cref*2,5)
    setup_lung_cstar
    cvsolve
    outchecklung
    figure(100)
    subplot 211
    title('Task 7')
    hold on
    
    
    plot(cI,Pv,'bo')% 'oxygen partial pressure in venous blood')
    plot(cI,Pabar,'ro')% ,'mean arterial oxygen partial pressure')
    plot(cI,PAbar,'ko')%'mean alveolar oxygen partial pressure')
    ylabel('Oxygen pressures')
    subplot 212
    hold on
    plot(cI,cv,'bo')% 'concentrations of oxygen in venous blood')
    plot(cI,cabar,'ro')% mean arterial oxygen concentration
    plot(cI,cAbar,'ko')% mean alveolar oxygen concentration  
    ylabel('Oxygen concentrations')
end
xlabel('cI')
