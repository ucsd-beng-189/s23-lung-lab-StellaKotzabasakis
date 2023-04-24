%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
for beta = [0:0.2:1]
    setup_lung
    cvsolve
    outchecklung
    figure(100)
    title('Task 3')
    hold on
    plot(beta,Pv,'bo')% 'oxygen partial pressure in venous blood')
    plot(beta,Pabar,'ro')% ,'mean arterial oxygen partial pressure')
    plot(beta,PAbar,'ko')%'mean alveolar oxygen partial pressure')
    plot(beta,PI,'go')%'oxygen partial pressure in the inspired air')
end
xlabel('Beta')
ylabel('Pressures')