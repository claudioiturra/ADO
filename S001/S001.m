% S001 - Graficas en coordenadas geograficas

% Claudio Iturra, 2020

% https://claudioiturra.github.io

% Para el primer ejercicio utilizaremos la linea de costa de Chile, la que 
% cargaremos en MATLAB. Linea de costa que personalmente voy actualizando 
% constantemente (en especial la zona centro sur y sur de Chile). 
% Generaremos un mapa de todo el país y seleccionaremos un área de estudio 
% especifica, para este ejemplo nos centraremos en el Golfo de Penas. 
% En necesario que cada usuario genere dos directorios de trabajo en su 
% capeta MATLAB en Documentos. La primera carpeta la llamaremos sesiones y 
% la segunda funciones

% Descargamos los archivos necesarios, los descomprimimos en la carpeta
% sesiones. Abrimos MATLAB y ubicamos nuestro directorio de trabajo.

clear all

close all

load chileMAP.mat % cargamos la linea de costa de Chile

whos % nos describe el nombre de la variable que cargamos, su tamaño y 
% estructura

Lon = mapa(:,1); % separamos el archivo en dos columnas por separados, 
% cuyas variables son longitud y latitud

Lat = mapa(:,2); % 

subplot(1,2,1) % dividimos nuestro espacio para la figura en dos partes, 
% en el primero presentaremos el mapa de Chile completo, y en el segundo 
% el Golfo de Penas.

plot(Lon,Lat) % Graficamos el mapa de Chile

axis equal % mantenemos la proporcion de los ejex x-y

ylabel('[Latitud]')

xlabel('[Longitud]')

title('Mapa de Chile')

grid

set(gca,'fontsize',15)

subplot(1,2,2) % Segunda figura

plot(Lon,Lat,'k')

axis equal

ylim([-48.5   -46]) % Ajustamos nuestros márgenes a las coordenadas 
% del Golfo de penas

xlim([-76.5   -73]) %

set(gca,'fontsize',12)

title('Golfo de Penas')

ylabel('[Latitud]')

xlabel('[Longitud]')

grid

saveas(gca,sprintf('FIGURA%d.png',1));

close all

%--------------------------------------------------------------------------

% Para el segundo ejercicio generaremos el mapa del Golfo de Penas, pero 
% rellenaremos la parte continental con un color a elección. Utilizaremos 
% la función fillseg para generar la figura, básicamente la función 
% trasforma las coordenadas en una figura geométrica (polígono), lo que nos 
% da la facilidad de aislar la parte interna de la gracia ce la externa. 
% En necesario que la linea de costa este simétricamente generada, en que 
% los píxeles están separados de tal forma que el polígono se cierre 
% completamente. No deberíamos tener problemas con la linea de costa 
% entregada, en el caso que ustedes quieran generar tal protocolo con otra 
% linea de costa les recomiendo visitar el siguiente link 
% https://github.com/rsignell-usgs/RPSstuff

clear all

close all

load chileMAP.mat

fillseg(mapa,[.5 .5 .5],[.5 .5 .5]);

axis equal

ylim([-48.5   -46]) % Ajustamos nuestros márgenes a las coordenadas 
% del Golfo de penas

xlim([-76.5   -73]) %

ylabel('[Latitud]')

xlabel('[Longitud]')

title('GOLFO DE PENAS')

grid

set(gca,'fontsize',15)

saveas(gca,sprintf('FIGURA%d.png',2));

clear all

close all

% Pueden entrenar generando mapas para distintas areas de estudio, un buen 
% mapa es el pilar de cualquier escrito, proyecto.

% Fin de la primera sesion.



