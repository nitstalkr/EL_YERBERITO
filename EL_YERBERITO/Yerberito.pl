:- use_module(library(pce)).
:- use_module(library(pce_style_item)).


%Carga el menu principal
iniciar :-

    %Inicializa la ventan
    new(Menu_principal, dialog('EL YERBERITO', size(1600, 1600))),
    %creamos cada unos de los botones
    new(ImgPlantas, image('C:/EL_YERBERITO/assets/planta.png')),
    new(Boton_plantas, button('PLANTAS', message(@prolog, abrir_menu_plantas))),
    send(Boton_plantas, label, ImgPlantas),
    
    new(ImgEnfermedades, image('C:/EL_YERBERITO/assets/virus.png')),
    new(Boton_enfermedades, button('ENFERMEDADES', message(@prolog, abrir_menu_enfermedades))),
    send(Boton_enfermedades, label, ImgEnfermedades),
    
    new(ImgBotiquin, image('C:/EL_YERBERITO/assets/botiquin.png')),
    new(Boton_botiquin, button('BOTIQUIN', message(@prolog, abrir_botiquin))),
    send(Boton_botiquin, label, ImgBotiquin),

    %los agregamos a la ventana
    send(Menu_principal, append, Boton_plantas),
    send(Menu_principal, append, Boton_enfermedades),
    send(Menu_principal, append, Boton_botiquin),
    %mostramos la ventana principal
    send(Menu_principal, open_centered).


%Menu de plantas
abrir_menu_plantas :-
  
    new(Menu_plantas, dialog('MENÚ DE PLANTAS', size(600, 400))),

    new(ImgAbrojo, image('C:/EL_YERBERITO/assets/abrojoP.jpg')),
    new(ImgAconito, image('C:/EL_YERBERITO/assets/aconitoP.png')),
    new(ImgAdormidera, image('C:/EL_YERBERITO/assets/adormideraP.jpg')),
    new(ImgAguacate, image('C:/EL_YERBERITO/assets/AguacateP.jpg')),
    new(ImgAhuhuete, image('C:/EL_YERBERITO/assets/AhuhueteP.jpg')),
    new(ImgAjenjo, image('C:/EL_YERBERITO/assets/AjenjoP.jpg')),
    new(ImgAjo, image('C:/EL_YERBERITO/assets/ajoP.jpg')),
    new(ImgAalbahaca, image('C:/EL_YERBERITO/assets/albahacaP.jpg')),
    new(ImgAlcachofa, image('C:/EL_YERBERITO/assets/alcachofaP.jpg')),
    new(ImgAlcanfor, image('C:/EL_YERBERITO/assets/alcanforP.jpg')),
    new(ImgAamapolaAmarrilla, image('C:/EL_YERBERITO/assets/amapolaAmarillaP.jpg')),
    new(ImgAmate, image('C:/EL_YERBERITO/assets/amateP.jpg')),
    new(ImgAnacahuite, image('C:/EL_YERBERITO/assets/AnacahuiteP.jpg')),
    new(ImgAnis, image('C:/EL_YERBERITO/assets/anisP.jpg')),
    new(ImgArnica, image('C:/EL_YERBERITO/assets/ArnicaP.jpg')),
    new(ImgBarbasco, image('C:/EL_YERBERITO/assets/BarbascoP.jpg')),
    new(ImgBelladona, image('C:/EL_YERBERITO/assets/BelladonaP.jpg')),
    new(ImgCempasuchil, image('C:/EL_YERBERITO/assets/CempasuchilP.jpg')),
    new(ImgChaparroAmargoso, image('C:/EL_YERBERITO/assets/Chaparro amargosoP.jpg')),
    new(ImgChicalote, image('C:/EL_YERBERITO/assets/ChicaloteP.jpg')),
   /* new(ImgChichigua, image('C:/EL_YERBERITO/assets/chichiguaP.jpg')),
    new(ImgChile, image('C:/EL_YERBERITO/assets/ChileP.jpg')),
    new(ImgCilantro, image('C:/EL_YERBERITO/assets/cilantroP.jpg')),
    new(ImgCocolmeca, image('C:/EL_YERBERITO/assets/cocolmeca.jpg')),
    new(ImgColacaballo, image('C:/EL_YERBERITO/assets/colacaballo.jpeg')),
    new(ImgColchino, image('C:/EL_YERBERITO/assets/Colchino.png')),
    new(ImgColpachi, image('C:/EL_YERBERITO/assets/Colpachi.jpg')),
    new(ImgComino, image('C:/EL_YERBERITO/assets/Comino.jpg')),
    new(ImgCuachalalate, image('C:/EL_YERBERITO/assets/Cuachalalate.jpeg')),
    new(ImgCuajiote, image('C:/EL_YERBERITO/assets/Cuajiote.jpg')),
    new(ImgCuasia, image('C:/EL_YERBERITO/assets/Cuasia.jpg')),
    new(ImgDamiana, image('C:/EL_YERBERITO/assets/Daminana.jpg')),
    new(ImgDienteDeLeon, image('C:/EL_YERBERITO/assets/Diente_De_Leon.jpg')),
    new(ImgEstafiate, image('C:/EL_YERBERITO/assets/estafiate.jpg')),
    new(ImgEucalipto, image('C:/EL_YERBERITO/assets/eucalipto.png')),
    new(ImgFenogreco, image('C:/EL_YERBERITO/assets/fenogreco.jpg')),
    new(ImgGenciana, image('C:/EL_YERBERITO/assets/genciana.jpg')),
    new(ImgGeranio, image('C:/EL_YERBERITO/assets/geranio.jpg')),
    new(ImgGingseng, image('C:/EL_YERBERITO/assets/gingseng.jpg')),
    new(ImgGirasol, image('C:/EL_YERBERITO/assets/girasol.jpg')),
    new(ImgGordolobo, image('C:/EL_YERBERITO/assets/gordolobo.jpg')),
    new(ImgGrama, image('C:/EL_YERBERITO/assets/grama.jpg')),
    new(ImgGranado, image('C:/EL_YERBERITO/assets/granado.jpg')),
    new(ImgGuaco, image('C:/EL_YERBERITO/assets/guaco.jpg')),
    new(ImgGuayacan, image('C:/EL_YERBERITO/assets/grama.jpg')),
    new(ImgGrama, image('C:/EL_YERBERITO/assets/guayacan.jpg')),
    new(ImgGuazuma, image('C:/EL_YERBERITO/assets/guazuma.jpeg')),
    new(ImgHamamelis, image('C:/EL_YERBERITO/assets/Hamamelis.jpeg')),
    new(ImgHelenio, image('C:/EL_YERBERITO/assets/helenio.jpg')),
    new(ImgHierbaDelPollo, image('C:/EL_YERBERITO/assets/Hierba del pollo.jpg')),
    new(ImgHinojo, image('C:/EL_YERBERITO/assets/Hinojo.jpg')),
    new(ImgBerro, image('C:/EL_YERBERITO/assets/imgberro.jpg')),
    new(ImgBoldo, image('C:/EL_YERBERITO/assets/imgboldo.jpg')),
    new(ImgBorraja, image('C:/EL_YERBERITO/assets/imgborraja.jpg')),
    new(ImgBrionia, image('C:/EL_YERBERITO/assets/imgbrionia.jpg')),
    new(ImgBugmbilia, image('C:/EL_YERBERITO/assets/imgbugambilia.jpg')),
    new(ImgCanela, image('C:/EL_YERBERITO/assets/imgcanela.jpg')),
    new(ImgCardo, image('C:/EL_YERBERITO/assets/imgcardo.jpg')),
    new(Imgcedron, image('C:/EL_YERBERITO/assets/imgcedron.jpg')),
    new(ImgDigitaria, image('C:/EL_YERBERITO/assets/imgdigitaria.jpg')),
    new(ImgDoradilla, image('C:/EL_YERBERITO/assets/imgdoradilla.jpg')),
    new(ImgEnebro, image('C:/EL_YERBERITO/assets/imgenebro.jpg')),
    new(ImgEpazote, image('C:/EL_YERBERITO/assets/imgepazote.jpg')),
    new(ImgMarihuana, image('C:/EL_YERBERITO/assets/imgmarihuana.jpg')),
    new(ImgMarrubio, image('C:/EL_YERBERITO/assets/imgMarrubio.jpg')),
    new(ImgMastuerzo, image('C:/EL_YERBERITO/assets/imgMastuerzo.jpg')),
    new(ImgMatarique, image('C:/EL_YERBERITO/assets/imgmatarique.jpg')),
    new(ImgMenta, image('C:/EL_YERBERITO/assets/imgmenta.jpg')),    
    new(ImgIpecacuana, image('C:/EL_YERBERITO/assets/ipecacuana.jpg')),    
    new(ImgJalapa, image('C:/EL_YERBERITO/assets/Jalapa.jpg')), 
    new(ImgJazminAmarillo, image('C:/EL_YERBERITO/assets/Jazmín Amarillo.jpg')), 
    new(ImgJengibre, image('C:/EL_YERBERITO/assets/Jengibre.jpg')), 
    new(ImgLinaza, image('C:/EL_YERBERITO/assets/Linaza.jpg')), 
    new(ImgLlanten, image('C:/EL_YERBERITO/assets/Llanten.jpg')), 
    new(ImgMadreselva, image('C:/EL_YERBERITO/assets/Madreselva.jpg')), 
    new(ImgMatarique, image('C:/EL_YERBERITO/assets/imgmatarique.jpg')), 
    
    */
    
    
    
    new(BuscarPorEfecto, button('DICCIONARIO Y BUSQUEDA POR EFECTO EN EL CUERPO', message(@prolog, buscarPorEfecto))),
    
    
    
    new(BotonAbrojo, button('Abrojo', message(@prolog, pp, abrojo))),
    send(BotonAbrojo, label, ImgAbrojo),
    send(Menu_plantas, display, new(_, BotonAbrojo), point(20, 20)),
    send(Menu_plantas, display, new(_, text('Abrojo', left, bold)), point(35, 110)),

    new(BotonAconito, button('aconito', message(@prolog, pp, aconito))),
    send(BotonAconito, label, ImgAconito),
    send(Menu_plantas, display, new(_, BotonAconito), point(115, 20)),
    send(Menu_plantas, display, new(_, text('Aconito', left, bold)), point(130, 110)), 

    new(BotonAdormidera, button('Adormidera', message(@prolog, pp, adormidera))),
    send(BotonAdormidera, label, ImgAdormidera),
    send(Menu_plantas, display, new(_, BotonAdormidera), point(210, 20)),
    send(Menu_plantas, display, new(_, text('Adormidera', left, bold)), point(210, 110)),    
   
    new(BotonAguacate, button('Aguacate', message(@prolog, pp, aguacate))),
    send(BotonAguacate , label, ImgAguacate),
    send(Menu_plantas, display, new(_, BotonAguacate), point(305, 20)),
    send(Menu_plantas, display, new(_, text('Aguacate', left, bold)), point(315, 110)),

    new(BotonAhuhuete, button('Ahuhuete', message(@prolog, pp, ahuhuete))),
    send(BotonAhuhuete, label, ImgAhuhuete),
    send(Menu_plantas, display, new(_, BotonAhuhuete), point(400, 20)),
    send(Menu_plantas, display, new(_, text('Ahuhuete', left, bold)), point(410, 110)),

    new(BotonAjenjo, button('Ajenjo', message(@prolog, pp, ajenjo))),
    send(BotonAjenjo, label, ImgAjenjo),
    send(Menu_plantas, display, new(_, BotonAjenjo), point(495, 20)),
    send(Menu_plantas, display, new(_, text('Ajenjo', left, bold)), point(515, 110)),

    new(BotonAjo, button('Ajo', message(@prolog, pp, ajo))),
    send(BotonAjo, label, ImgAjo),
    send(Menu_plantas, display, new(_, BotonAjo), point(590, 20)),
    send(Menu_plantas, display, new(_, text('Ajo', left, bold)), point(620, 110)),

    new(BotonAalbahaca, button('Albahaca', message(@prolog, pp, albahaca))),
    send(BotonAalbahaca, label, ImgAalbahaca),
    send(Menu_plantas, display, new(_, BotonAalbahaca), point(685, 20)),
    send(Menu_plantas, display, new(_, text('Albahaca', left, bold)), point(695, 110)),

    new(BotonAlcachofa, button('Alcachofa', message(@prolog, pp, alcachofa))),
    send(BotonAlcachofa, label, ImgAlcachofa),
    send(Menu_plantas, display, new(_, BotonAlcachofa), point(780, 20)),
    send(Menu_plantas, display, new(_, text('Alcachofa', left, bold)), point(788, 110)),

    new(BotonAlcanfor, button('Alcanfor', message(@prolog, pp, alcanfor))),
    send(BotonAlcanfor, label, ImgAlcanfor),
    send(Menu_plantas, display, new(_, BotonAlcanfor), point(875, 20)),
    send(Menu_plantas, display, new(_, text('Alcanfor', left, bold)), point(890, 110)),

    new(BotonAamapolaAmarrilla, button('AamapolaAmarrilla', message(@prolog, pp, amapola_amarilla))),
    send(BotonAamapolaAmarrilla, label, ImgAamapolaAmarrilla),
    send(Menu_plantas, display, new(_, BotonAamapolaAmarrilla), point(20, 140)),
    send(Menu_plantas, display, new(_, text('Amapola\nAmarrilla', left, bold)), point(30, 225)),

    new(BotonAmate, button('Amate', message(@prolog, pp, amate))),
    send(BotonAmate, label, ImgAmate),
    send(Menu_plantas, display, new(_, BotonAmate), point(115, 140)),
    send(Menu_plantas, display, new(_, text('Amate', left, bold)), point(135, 225)),

    new(BotonAnacahuite, button('Anacahuite', message(@prolog, pp, anacahuite))),
    send(BotonAnacahuite, label, ImgAnacahuite),
    send(Menu_plantas, display, new(_, BotonAnacahuite), point(210, 140)),
    send(Menu_plantas, display, new(_, text('Anacahuite', left, bold)), point(215, 225)),

    new(BotonAnis, button('Anis', message(@prolog, pp, anis))),
    send(BotonAnis, label, ImgAnis),
    send(Menu_plantas, display, new(_, BotonAnis), point(305, 140)),
    send(Menu_plantas, display, new(_, text('Anis', left, bold)), point(330, 225)),

    new(BotonArnica, button('Arnica', message(@prolog, pp, arnica))),
    send(BotonArnica, label, ImgArnica),
    send(Menu_plantas, display, new(_, BotonArnica), point(400, 140)),
    send(Menu_plantas, display, new(_, text('Arnica', left, bold)), point(418, 225)),

    new(BotonBarbasco, button('Barbasco', message(@prolog, pp, barbasco))),
    send(BotonBarbasco, label, ImgBarbasco),
    send(Menu_plantas, display, new(_, BotonBarbasco), point(495, 140)),
    send(Menu_plantas, display, new(_, text('Barbasco', left, bold)), point(506, 225)),

    new(BotonBelladona, button('Belladona', message(@prolog, pp, belladona))),
    send(BotonBelladona, label, ImgBelladona),
    send(Menu_plantas, display, new(_, BotonBelladona), point(590, 140)),
    send(Menu_plantas, display, new(_, text('Belladona', left, bold)), point(600, 225)),

    new(BotonCempasuchil, button('Cempasuchil', message(@prolog, pp, cempasuchil))),
    send(BotonCempasuchil, label, ImgCempasuchil),
    send(Menu_plantas, display, new(_, BotonCempasuchil), point(685, 140)),
    send(Menu_plantas, display, new(_, text('Cempasuchil', left, bold)), point(685, 225)),

    new(BotonChaparroAmargoso, button('ChaparroAmargoso', message(@prolog, pp, chaparro_amargoso))),
    send(BotonChaparroAmargoso, label, ImgChaparroAmargoso),
    send(Menu_plantas, display, new(_, BotonChaparroAmargoso), point(780, 140)),
    send(Menu_plantas, display, new(_, text('Chaparro\nAmargoso', left, bold)), point(788, 225)),

    new(BotonChicalote, button('Chicalote', message(@prolog, pp, chicalote))),
    send(BotonChicalote, label, ImgChicalote),
    send(Menu_plantas, display, new(_, BotonChicalote), point(875, 140)),
    send(Menu_plantas, display, new(_, text('Chicalote', left, bold)), point(883, 225)),
    
    new(BotonVolver, button('VOLVER', message(@prolog, regresar_principal, Menu_plantas))),
    send(Menu_plantas, display, new(_, BotonVolver), point(450, 270)),

    send(Menu_plantas, display, new(_, BuscarPorEfecto), point(20,270)),
    
    send(Menu_plantas, open_centered).


%Predicado para crear la ventana de la planta especifica que mandemos
pp(Pld) :-
    new(D, dialog(Pld)),
    send(D, size, size(1100, 350)),
    send(D, background, colour(white)),

    % Imagen a la izquierda (m s peque a)
    iman(Pld, ImgPath),
    new(BMP, bitmap(ImgPath)),
    send(BMP, size, size(250, 200)),  % Ajusta tama o visible
    send(D, display, BMP, point(20, 40)),

    % T tulo arriba a la izquierda
    send(D, display, new(_, text(Pld, left, bold)), point(150, 20)),

    % Nombre cient fico alineado a la imagen
    nombre_cientifico(Pld, NomCient),
    send(D, display, new(_, text('Nombre cientifico:', left, bold)), point(350, 60)),
    send(D, display, new(_, text(NomCient, left, normal)), point(500, 60)),
     continente_origen(Pld, Contoring),
    send(D, display, new(_, text('Continente de Origen:', left, bold)), point(350, 80)),
    send(D, display, new(_, text(Contoring, left, normal)), point(500, 80)),
     pais_origen(Pld, Paisoring),
    send(D, display, new(_, text('Pais de Origen:', left, bold)), point(350,100)),
    send(D, display, new(_, text(Paisoring, left, normal)), point(500, 100)),

    % Enfermedades tratadas
    findall(Enf, trata_enfermedad(Pld, Enf), ListaEnf),
    send(D, display, new(_, text('Trata enfermedades:', left, bold)), point(750, 130)),
    mostrar_items(ListaEnf, D, 750, 150),

    findall(Ef, accion_efecto_planta(Pld, Ef), ListaEfectos),
    send(D, display, new(_, text('Efectos:', left, bold)), point(600,130)),
    mostrar_items(ListaEfectos, D, 600, 150),

    findall(Preca, precaucion_planta(Pld, Preca), ListaPrecaucion),
    send(D, display, new(_, text('Precaucion:', left, bold)), point(350, 130)),
    mostrar_items(ListaPrecaucion, D, 350, 150),

    findall(Preparacion, modo_preparacion(Pld, Preparacion), ListaPreparacion),
    send(D, display, new(_, text('Modo Preparacion:', left, bold)), point(350, 260)),
    mostrar_items(ListaPreparacion, D, 370, 280),

    findall(Dosis, modo_tratamiento(Pld, Dosis), ListaDosis),
    send(D, display, new(_, text('Modo tratamiento:', left, bold)), point(550, 260)),
    mostrar_items(ListaDosis, D, 570, 280),

    send(D, open, point(200, 200)).

    mostrar_items([], _, _, _).
    mostrar_items([H|T], Dialog, X, Y) :-
    send(Dialog, display, new(_, text(H, left, normal)), point(X, Y)),
    Y2 is Y + 20,
    mostrar_items(T, Dialog, X, Y2).





%Predicado para crear la ventana de las enfermedades
abrir_menu_enfermedades :-
    new(Menu_enfermedades, dialog('TRATAMIENTOS', size(1600, 1600))),

    new(Enfermedad, text_item('ENFERMEDAD: ')),
    send(Menu_enfermedades, append, Enfermedad),

    new(Boton, button('BUSCAR', message(@prolog, mostrar_info_enfermedad, Enfermedad))),
    
    send(Menu_enfermedades, append, Boton),
    send(Menu_enfermedades, append, button('VOLVER', message(@prolog, regresar_principal, Menu_enfermedades))),
    send(Menu_enfermedades, open_centered).




%Predicado para crear la ventana del boriquin
abrir_botiquin :-
    new(Menu_botiquin, dialog('BOTIQUIN', size(1600, 1600))),

    new(Sintoma, text_item('¿Que te duele?')),
    send(Menu_botiquin, append, Sintoma),

    new(Boton, button('Aceptar', message(@prolog, diagnostico, Sintoma))),
    
    send(Menu_botiquin, append, Boton),

    send(Menu_botiquin, append, button('VOLVER', message(@prolog, regresar_principal, Menu_botiquin))),
    send(Menu_botiquin, open_centered).



planta_para_sintoma(Sintoma, Planta) :-
    sintoma_enfermedad(Enfermedad, Sintoma),
    trata_enfermedad(Planta, Enfermedad).




mostrar_info_enfermedad(Enfermedad) :-
    get(Enfermedad, value, Enf),
    new(D, dialog(Enf)),
    send(D, size, size(600, 900)),
    send(D, background, colour(white)),

    % Título de la enfermedad
    send(D, display, new(_, text('Enfermedad', left, bold)), point(20, 10)),
    send(D, display, new(_, text(Enf, left, bold)), point(20, 40)),

    % Plantas que tratan esta enfermedad
    findall(Planta, trata_enfermedad(Planta, Enf), Plantas),
    send(D, display, new(_, text('Plantas que tratan esta enfermedad:', left, bold)), point(20, 60)),
    mostrar_items(Plantas, D, 40, 80),

    % Sintomas 
    send(D, display, new(_, text('Sintomas de la enfermedad:', left, bold)), point(260, 60)),
    findall(
        Sintoma, sintoma_enfermedad(Enf, Sintoma), ListaSintomas
    ),
    mostrar_items(ListaSintomas, D, 280, 80),

    send(D, open, point(200, 200)).


diagnostico(Sintoma):-

    get(Sintoma, value, Sin),
    new(D, dialog(Sin)),
    send(D, size, size(600, 900)),
    send(D, background, colour(white)),

    % Posibles enfermedades
    findall(Enfermedad, sintoma_enfermedad(Enfermedad, Sin), Enfermedades),
    send(D, display, new(_, text('POSIBLES ENFERMEDADES', left, bold)), point(20, 10)),
    mostrar_items(Enfermedades, D, 40, 40),

    % Plantas que tratan este sintoma
    findall(Planta, trata_enfermedad(Planta, Sin), Plantas),
    send(D, display, new(_, text('PLANTAS QUE PODRIAS USAR', left, bold)), point(240, 10)),
    mostrar_items(Plantas, D, 260, 40),

    send(D, open, point(200, 200)).


mostrar_items([X|Xs], D, Xpos, Ypos) :-
    send(E, display, new(_, text(X, left, normal)), point(Xpos, Ypos)),
    Ynext is Ypos + 20,
    mostrar_items(Xs, D, Xpos, Ynext).


buscarPorEfecto :-
    new(BuscarPorEfecto, dialog('BUSCAR POR EFECTO', size(1600, 1600))),

    new(Efecto, text_item('¿Que efecto quieres buscar?')),
    send(BuscarPorEfecto, append, Efecto),

    new(BotonBuscar, button('Buscar', message(@prolog, mostrarPlantasPorEfecto, Efecto))),
    send(BuscarPorEfecto, append, BotonBuscar),

    send(BuscarPorEfecto, open_centered).

mostrarPlantasPorEfecto(Efecto) :- 

    get(Efecto, value, Efec),
    new(D, dialog(Efec)),
    send(D, size, size(600, 900)),
    send(D, background, colour(white)),


    send(D, display, new(_, text('Plantas', left, bold)), point(20, 10)),
    send(D, display, new(_, text(Efec, left, bold)), point(20, 40)),

    findall(Planta, accion_efecto_planta(Planta, Efec), Plantas),
    send(D, display, new(_, text('Plantas que tienen este efecto:', left, bold)), point(20, 60)),
    mostrar_items(Plantas, D, 40, 80),

    send(D, display, new(_, text('Definicion del efecto', left, bold)), point(130, 10)),
    findall(Descripcion, descripcionEfecto(Descripcion, Efec), Descripciones),
    mostrar_items(Descripciones, D, 140, 30),
    send(D, open, point(200, 200)).





regresar_principal(D) :-
    send(D, destroy).












%Datos
%Categoria: planta
planta(abrojo).
planta(aconito).
planta(adormidera).
planta(aguacate).
planta(ahuhuete).
planta(ajenjo).
planta(ajo).
planta(albahaca).
planta(alcachofa).
planta(alcanfor).
planta(amapola_amarilla).
planta(amate).
planta(anis).
planta(anacahuite).
planta(arnica).
planta(barbasco).
planta(belladona).
planta(berro).
planta(boldo).
planta(borraja).
planta(bugambilia).
planta(brionia).
planta(canela).
planta(cedron).
planta(cardo_santo).
planta(cempasuchil).
planta(chaparro_amargoso).
planta(chicalote).
planta(chile).
planta(chichigua).
planta(cilantro).
planta(cocolmeca).
planta(cola_de_caballo).
planta(colchino).
planta(comino).
planta(colpachi).
planta(cuachalalate).
planta(cuajiote).
planta(cuasia).
planta(damiana).
planta(diente_de_leon).
planta(digitaria).
planta(doradilla).
planta(epazote).
planta(enebro).
planta(estafiate).
planta(eucalipto).
planta(fenogreco).
planta(genciana).
planta(geranio).
planta(girasol).
planta(gingseng).
planta(gordolobo).
planta(grama).
planta(granado).
planta(guaco).
planta(guazuma).
planta(guayacan).
planta(hamamelis).
planta(helenio).
planta(hierba_del_pollo).
planta(hinojo).
planta(jalapa).
planta(ipecacuana).
planta(jazmin_amarillo).
planta(jengibre).
planta(linaza).
planta(llanten).
planta(madreselva).
planta(maguey).
planta(malva).
planta(malvavisco).
planta(mangle).
planta(manzanilla).
planta(marrubio).
planta(marihuana).
planta(mastuerzo).
planta(matarique).
planta(menta).
planta(nopal).
planta(nogal).
planta(nuez_vomica).
planta(ocote).
planta(ortiga).
planta(oregano).
planta(palo_de_flor).
planta(pasiflora).
planta(pericon).
planta(pinguica).
planta(prodigiosa).
planta(pirul).
planta(pulsatilla).
planta(quebracho).
planta(quina).
planta(regaliz).
planta(retama).
planta(ricino).
planta(rosal).
planta(romero).
planta(ruda).
planta(ruibarbo).
planta(salvia).
planta(sen).
planta(sanguinaria).
planta(sensativa).
planta(simonillo).
planta(tamarindo).
planta(tabachin).
planta(taray).
planta(tila).
planta(te_de_milpa).
planta(toloache).
planta(tronadora).
planta(tripa_de_judas).
planta(uva).

% Categoría: nombre_cientifico
nombre_cientifico(abrojo, tribulus_cistoides).
nombre_cientifico(aconito, 'Aconitum napellus').
nombre_cientifico(adormidera, 'Papaver somniferum').
nombre_cientifico(aguacate, 'Persea americana').
nombre_cientifico(ahuhuete, 'Taxodium mucronatum').
nombre_cientifico(ajenjo, 'Artemisia absinthium').
nombre_cientifico(ajo, allium_sativum).
nombre_cientifico(albahaca, ocimum_basilicum).
nombre_cientifico(alcachofa, cynara_scolymus).
nombre_cientifico(alcanfor, laurus_camphora).
nombre_cientifico(amapola_amarilla, eschscholtzia_californiana).
nombre_cientifico(amate, ficus_insipida).
nombre_cientifico(anis, pimpinella_anisum).
nombre_cientifico(anacahuite, cordia_boissieri).
nombre_cientifico(arnica, arnica_montana).
nombre_cientifico(barbasco, jacquinia_arborea).
nombre_cientifico(belladona, atropa_belladonna).
nombre_cientifico(berro, 'Nasturtium officinale').
nombre_cientifico(boldo, 'Peumus boldus').
nombre_cientifico(borraja, 'Borago officinalis').
nombre_cientifico(bugambilia, 'Bougainvillea glabra').
nombre_cientifico(brionia, 'Bryonia alba').
nombre_cientifico(canela, 'Cinnamomum verum').
nombre_cientifico(cedron, 'Aloysia citrodora').
nombre_cientifico(cardo_santo, 'Cnicus benedictus').
nombre_cientifico(cempasuchil, 'Tagetes erecta').
nombre_cientifico(chaparro_amargoso, 'Castela americana').
nombre_cientifico(chicalote, 'Argemone aecholtzia').
nombre_cientifico(chile, 'Capsicum annuum').
nombre_cientifico(chichigua, solanum_mammosum).
nombre_cientifico(cilantro, coriandrum_sativum).
nombre_cientifico(cocolmeca, smilax_spinosa).
nombre_cientifico(cola_de_caballo, equisetum_arvensis).
nombre_cientifico(colchino, 'Argemone mexicana').
nombre_cientifico(comino, 'Cuminum cyminum').
nombre_cientifico(colpachi, 'Croton glabellus').
nombre_cientifico(cuachalalate, 'Amphipterygium adstringens').
nombre_cientifico(cuajiote, bursera_morelense).
nombre_cientifico(cuasia, quassia_amara).
nombre_cientifico(damiana, turnera_diffusa).
nombre_cientifico(diente_de_leon, taraxacum_officinale).
nombre_cientifico(digitaria, 'Digitalis purpurea').
nombre_cientifico(doradilla, 'Ceterach officinarum').
nombre_cientifico(epazote, 'Dysphania ambrosioides').
nombre_cientifico(enebro, 'Juniperus communis').
nombre_cientifico(estafiate, 'Artemisia ludoviciana').
nombre_cientifico(eucalipto, 'Eucalyptus globulus').
nombre_cientifico(fenogreco, 'Trigonella foenum-graecum').
nombre_cientifico(genciana, 'Gentiana lutea').
nombre_cientifico(geranio, 'Pelargonium graveolens').
nombre_cientifico(girasol, 'Helianthus annuus').
nombre_cientifico(gingseng, 'Panax ginseng').
nombre_cientifico(gordolobo, 'Verbascum thapsus').
nombre_cientifico(grama, 'Cynodon dactylon').
nombre_cientifico(granado, 'Punica granatum').
nombre_cientifico(guaco, aristolochia_odoratissima).
nombre_cientifico(guazuma, guazuma_ulmifolia).
nombre_cientifico(guayacan, guaiacum_sanctum).
nombre_cientifico(hamamelis, hamamelis_virginica).
nombre_cientifico(helenio, inula_helenium).
nombre_cientifico(hierba_del_pollo, tradescantia_zebrina).
nombre_cientifico(hinojo, foeniculum_vulgare).
nombre_cientifico(jalapa, ipomea_purga).
nombre_cientifico(ipecacuana, polygala_hondurana).
nombre_cientifico(jazmin_amarillo, gelsemium_sempervirens).
nombre_cientifico(jengibre, 'Zingiber officinale').
nombre_cientifico(linaza, 'Linum usitatissimum').
nombre_cientifico(llanten, 'Plantago major').
nombre_cientifico(madreselva, 'Lonicera').
nombre_cientifico(maguey, 'Agave').
nombre_cientifico(malva, 'Malva sylvestris').
nombre_cientifico(malvavisco, 'Althaea officinalis').
nombre_cientifico(mangle, 'Rhizophora mangle').
nombre_cientifico(manzanilla, 'Matricaria chamomilla').
nombre_cientifico(marrubio, 'Marrubium vulgare').
nombre_cientifico(marihuana, 'Cannabis sativa').
nombre_cientifico(mastuerzo, 'Lepidium sativum').
nombre_cientifico(matarique, 'Psacalium decompositum').
nombre_cientifico(menta, 'Mentha piperita').
nombre_cientifico(nopal, opuntia_tuna).
nombre_cientifico(nogal, juglans_regia).
nombre_cientifico(nuez_vomica, strychnos_nux_vomica).
nombre_cientifico(ocote, pinus_teocote).
nombre_cientifico(ortiga, urtica_urens).
nombre_cientifico(oregano, origanum_vulgare).
nombre_cientifico(palo_de_flor, bourreria_huanita).
nombre_cientifico(pasiflora, passiflora_incarnata).
nombre_cientifico(pericon, tagetes_lucida).
nombre_cientifico(pinguica, arctostaphylos_pungens).
nombre_cientifico(prodigiosa, 'Kalanchoe squarrosus').
nombre_cientifico(pirul, 'Schinus molle').
nombre_cientifico(pulsatilla, 'Anemone pulsatilla').
nombre_cientifico(quebracho, 'Lysiloma auritum').
nombre_cientifico(quina, 'Cinchona calisaya').
nombre_cientifico(regaliz, glycyrrhiza_glabra).
nombre_cientifico(retama, spartium_junceum).
nombre_cientifico(ricino, ricinus_communis).
nombre_cientifico(rosal, rosa_centifolia).
nombre_cientifico(romero, rosmarinus_officinalis).
nombre_cientifico(ruda, ruta_graveolens).
nombre_cientifico(ruibarbo, rheum_palmatum).
nombre_cientifico(salvia, salvia_officinalis).
nombre_cientifico(sen, senna_alexandrina).
nombre_cientifico(sanguinaria, sanguinaria_canadensis).
nombre_cientifico(sensativa, mimosa_pudica).
nombre_cientifico(simonillo, tagetes_lucida).
nombre_cientifico(tamarindo, tamarindus_indica).
nombre_cientifico(tabachin, cesalpinia_pulcherrima).
nombre_cientifico(taray, tamarix_aphylla).
nombre_cientifico(tila, tilia_mexicana).
nombre_cientifico(te_de_milpa, zea_mays).
nombre_cientifico(toloache, datura_stramonium).
nombre_cientifico(tronadora, tecoma_stans).
nombre_cientifico(tripa_de_judas, leonotis_nepetifolia).
nombre_cientifico(uva, vitis_vinifera).

% Categoría: continente_origen

continente_origen(abrojo, america).
continente_origen(aconito, europa).
continente_origen(adormidera, asia).
continente_origen(aguacate, america).
continente_origen(ahuhuete, america).
continente_origen(ajenjo, europa).
continente_origen(ajo, asia_central).
continente_origen(albahaca, asia_central_y_africa).
continente_origen(alcachofa, africa).
continente_origen(alcanfor, asia).
continente_origen(amapola_amarilla, america).
continente_origen(amate, america).
continente_origen(anis, asia).
continente_origen(anacahuite, america).
continente_origen(arnica, europa).
continente_origen(barbasco, america).
continente_origen(belladona, europa).
continente_origen(berro, europa).
continente_origen(boldo, america).
continente_origen(borraja, europa).
continente_origen(bugambilia, america).
continente_origen(brionia, europa).
continente_origen(canela, asia).
continente_origen(cedron, america).
continente_origen(cardo_santo, america).
continente_origen(cempasuchil, america).
continente_origen(chaparro_amargoso, america).
continente_origen(chicalote, america).
continente_origen(chile, america).
continente_origen(chichigua, america).
continente_origen(cilantro, asia).
continente_origen(cocolmeca, america).
continente_origen(cola_de_caballo, europa).
continente_origen(cuajiote, america).
continente_origen(cuasia, america).
continente_origen(damiana, america).
continente_origen(diente_de_leon, europa).
continente_origen(diente_de_leon, asia).
continente_origen(digitaria, europa).
continente_origen(doradilla, america).
continente_origen(epazote, america).
continente_origen(enebro, europa).
continente_origen(estafiate, 'America').
continente_origen(eucalipto, 'Oceania').
continente_origen(fenogreco, 'Asia').
continente_origen(genciana, 'Europa').
continente_origen(geranio, 'Africa').
continente_origen(girasol, 'América').
continente_origen(gingseng, 'Asia').
continente_origen(gordolobo, 'Europa').
continente_origen(grama, 'África').
continente_origen(granado, 'Asia').
continente_origen(guaco, america).
continente_origen(guazuma, america).
continente_origen(guayacan, america).
continente_origen(hamamelis, america).
continente_origen(helenio, america).
continente_origen(hierba_del_pollo, america).
continente_origen(hinojo, europa).
continente_origen(jalapa, america).
continente_origen(ipecacuana, america).
continente_origen(jazmin_amarillo, america).
continente_origen(jengibre, asia).
continente_origen(linaza, desconocido).
continente_origen(llanten, desconocido).
continente_origen(madreselva, desconocido).
continente_origen(maguey, america).
continente_origen(malva, europa).
continente_origen(malvavisco, europa).
continente_origen(mangle, america).
continente_origen(manzanilla, europa).
continente_origen(marrubio, europa).
continente_origen(marihuana, asia).
continente_origen(mastuerzo, asia).
continente_origen(matarique, america).
continente_origen(menta, europa).
continente_origen(nopal, asia).
continente_origen(nogal, europa).
continente_origen(nuez_vomica, oceania).
continente_origen(ocote, america).
continente_origen(ortiga, europa).
continente_origen(oregano, europa).
continente_origen(palo_de_flor, america).
continente_origen(pasiflora, america).
continente_origen(pericon, america).
continente_origen(pinguica, america).
continente_origen(prodigiosa, 'America').
continente_origen(pirul, 'America').
continente_origen(pulsatilla, 'Europa').
continente_origen(quebracho, 'America').
continente_origen(quina, 'America').
continente_origen(regaliz, europa).
continente_origen(retama, europa).
continente_origen(ricino, africa).
continente_origen(rosal, asia).
continente_origen(romero, europa).
continente_origen(ruda, europa).
continente_origen(ruibarbo, asia).
continente_origen(salvia, europa).
continente_origen(sen, africa).
continente_origen(sanguinaria, america).
continente_origen(sensativa, america).
continente_origen(simonillo, america).
continente_origen(tamarindo, africa).
continente_origen(tabachin, america).
continente_origen(taray, asia).
continente_origen(tila, america).
continente_origen(te_de_milpa, america).
continente_origen(toloache, america).
continente_origen(tronadora, america).
continente_origen(tripa_de_judas, america).
continente_origen(uva, europa).

% Categoría: pais_origen

pais_origen(abrojo, mexico).
pais_origen(aconito, francia).
pais_origen(adormidera, italia).
pais_origen(aguacate, mexico).
pais_origen(ahuhuete, mexico).
pais_origen(ajenjo, francia).
pais_origen(ajo, siberia).
pais_origen(ajo, norte_de_iran).
pais_origen(albahaca, india).
pais_origen(alcachofa, egipto).
pais_origen(alcanfor, taiwan).
pais_origen(amapola_amarilla, mexico).
pais_origen(amate, mexico).
pais_origen(anis, region_del_mediterraneo).
pais_origen(anacahuite, mexico).
pais_origen(arnica, suiza).
pais_origen(barbasco, mexico).
pais_origen(belladona, europa_central).
pais_origen(berro, europa_central).
pais_origen(boldo, chile).
pais_origen(borraja, mediterraneo).
pais_origen(bugambilia, brasil).
pais_origen(brionia, desconocido).
pais_origen(canela, desconocido).
pais_origen(cedron, desconocido).
pais_origen(cardo_santo, mexico).
pais_origen(cempasuchil, mexico).
pais_origen(chaparro_amargoso, mexico).
pais_origen(chicalote, mexico).
pais_origen(chile, mexico).
pais_origen(chichigua, mexico).
pais_origen(cilantro, iran).
pais_origen(cocolmeca, mexico).
pais_origen(cola_de_caballo, francia).
pais_origen(cuajiote, mexico).
pais_origen(cuasia, costa_rica).
pais_origen(cuasia, nicaragua).
pais_origen(cuasia, panama).
pais_origen(cuasia, brasil).
pais_origen(cuasia, peru).
pais_origen(cuasia, venezuela).
pais_origen(cuasia, surinam).
pais_origen(cuasia, colombia).
pais_origen(cuasia, argentina).
pais_origen(cuasia, guyana_francesa).
pais_origen(cuasia, guyana).
pais_origen(cuasia, mexico).
pais_origen(damiana, mexico).
pais_origen(diente_de_leon, francia).
pais_origen(diente_de_leon, alemania).
pais_origen(diente_de_leon, espana).
pais_origen(diente_de_leon, italia).
pais_origen(diente_de_leon, reino_unido).
pais_origen(diente_de_leon, rusia).
pais_origen(diente_de_leon, china).
pais_origen(diente_de_leon, japon).
pais_origen(digitaria, desconocido).
pais_origen(doradilla, desconocido).
pais_origen(epazote, desconocido).
pais_origen(enebro, desconocido).
pais_origen(estafiate, 'Mexico').
pais_origen(eucalipto, 'Australia').
pais_origen(fenogreco, 'India').
pais_origen(genciana, 'Francia').
pais_origen(geranio, 'Sudafrica').
pais_origen(girasol, 'Mexico').
pais_origen(colchino, mexico).
pais_origen(comino, asia).
pais_origen(colpachi, mexico).
pais_origen(cuachalalate, mexico).
pais_origen(gingseng, 'China').
pais_origen(gordolobo, 'Alemania').
pais_origen(grama, 'Egipto').
pais_origen(granado, 'India').
pais_origen(guaco, desconocido).
pais_origen(guazuma, desconocido).
pais_origen(guayacan, desconocido).
pais_origen(hamamelis, desconocido).
pais_origen(helenio, desconocido).
pais_origen(hierba_del_pollo, mexico).
pais_origen(hinojo, mexico).
pais_origen(jalapa, mexico).
pais_origen(ipecacuana, mexico).
pais_origen(jazmin_amarillo, mexico).
pais_origen(jengibre, desconocido).
pais_origen(linaza, desconocido).
pais_origen(llanten, desconocido).
pais_origen(madreselva, desconocido).
pais_origen(maguey, mexico).
pais_origen(malva, region_mediterranea).
pais_origen(malvavisco, 'Europa Oriental').
pais_origen(mangle, desconocido).
pais_origen(manzanilla, 'Región Mediterránea').
pais_origen(marrubio, desconocido).
pais_origen(marihuana, india).
pais_origen(mastuerzo, desconocido).
pais_origen(matarique, mexico).
pais_origen(menta, desconocido).
pais_origen(nopal, japon).
pais_origen(nogal, iran).
pais_origen(ocote, mexico).
pais_origen(ortiga, 'regiones_templadas').
pais_origen(oregano, region_mediterranea).
pais_origen(palo_de_flor, mexico).
pais_origen(pasiflora, mexico).
pais_origen(pericon, mexico).
pais_origen(pinguica, mexico).
pais_origen(prodigiosa, 'Mexico').
pais_origen(pirul, 'Peru').
pais_origen(pulsatilla, 'Dinamarca').
pais_origen(quebracho, 'Chile').
pais_origen(quina, 'Bolivia').
pais_origen(ruda, espana).
pais_origen(ruibarbo, china).
pais_origen(salvia, italia).
pais_origen(sen, egipto).
pais_origen(sanguinaria, estados_unidos).
pais_origen(sensativa, centroamerica).
pais_origen(simonillo, mexico).
pais_origen(tamarindo, sudan).
pais_origen(tabachin, mexico).
pais_origen(taray, regiones_aridas).
pais_origen(tila, mexico).
pais_origen(te_de_milpa, mexico).
pais_origen(toloache, mexico).
pais_origen(tronadora, mexico).
pais_origen(tripa_de_judas, mexico).
pais_origen(uva, espana).

% Categoría: modo_preparacion
modo_preparacion(abrojo, cocimiento).
modo_preparacion(aconito, tintura).
modo_preparacion(adormidera, infusion).
modo_preparacion(aguacate, cocimiento).
modo_preparacion(ahuhuete, decoccion).
modo_preparacion(ajenjo, infusion).
modo_preparacion(ajo, con_miel).
modo_preparacion(ajo, machacar).
modo_preparacion(ajo, molido_con_leche).
modo_preparacion(albahaca, jugo).
modo_preparacion(alcachofa, cocer).
modo_preparacion(alcanfor, aceite).
modo_preparacion(amapola_amarilla, infusion).
modo_preparacion(amate, horchata).
modo_preparacion(anis, infusion).
modo_preparacion(anacahuite, cocimiento).
modo_preparacion(arnica, macera).
modo_preparacion(barbasco, cocimiento).
modo_preparacion(belladona, macera).
modo_preparacion(berro, infusion).
modo_preparacion(boldo, infusion).
modo_preparacion(borraja, infusion).
modo_preparacion(bugambilia, cocimiento).
modo_preparacion(brionia, cocimiento).
modo_preparacion(canela, infusion).
modo_preparacion(cedron, infusion).
modo_preparacion(cardo_santo, cocimiento).
modo_preparacion(cempasuchil, te).
modo_preparacion(chaparro_amargoso, te).
modo_preparacion(chicalote, cocimiento).
modo_preparacion(chile, compresas_calientes).
modo_preparacion(chichigua, decoccion).
modo_preparacion(cilantro, infusion).
modo_preparacion(cocolmeca, decoccion).
modo_preparacion(cola_de_caballo, infusion).
modo_preparacion(cuajiote, infusion).
modo_preparacion(cuasia, infusion).
modo_preparacion(damiana, infusion).
modo_preparacion(diente_de_leon, infusion).
modo_preparacion(digitaria, infusion).
modo_preparacion(doradilla, cocimiento).
modo_preparacion(epazote, cocimiento).
modo_preparacion(enebro, infusion).
modo_preparacion(estafiate, 'infusion').
modo_preparacion(eucalipto, 'vaporizacion').
modo_preparacion(fenogreco, 'cocimiento').
modo_preparacion(genciana, 'maceracion').
modo_preparacion(geranio, 'infusion').
modo_preparacion(girasol, 'infusion').
modo_preparacion(colchino, infusion_de_hojas).
modo_preparacion(comino, infusion_de_semillas).
modo_preparacion(colpachi, decoccion_de_corteza).
modo_preparacion(cuachalalate, infusion_o_decoccion_de_corteza).
modo_preparacion(gingseng, infusion).
modo_preparacion(gordolobo, 'infusion').
modo_preparacion(grama, 'coccion').
modo_preparacion(granado, infusion).
modo_preparacion(guaco, infusion_cada_3_horas_o_cataplasma).
modo_preparacion(guazuma, infusion_de_hojas).
modo_preparacion(guayacan, infusion_de_flores_o_corteza).
modo_preparacion(hamamelis, infusion_de_hojas).
modo_preparacion(helenio, infusion_de_raiz).
modo_preparacion(hierba_del_pollo, machacar).
modo_preparacion(hierba_del_pollo, infusion).
modo_preparacion(hinojo, infusion).
modo_preparacion(jalapa, cocimiento).
modo_preparacion(ipecacuana, infusion).
modo_preparacion(jazmin_amarillo, tintura).
modo_preparacion(jengibre, tintura).
modo_preparacion(jengibre, pan).
modo_preparacion(jengibre, remedio_efervescente).
modo_preparacion(linaza, infusion).
modo_preparacion(linaza, cataplasma).
modo_preparacion(llanten, infusion).
modo_preparacion(llanten, leche_hervida).
modo_preparacion(madreselva, infusion).
modo_preparacion(maguey, cataplasma).
modo_preparacion(malva, infusion).
modo_preparacion(malva, cataplasma).
modo_preparacion(malva, gargaras).
modo_preparacion(malvavisco, infusion_raiz).
modo_preparacion(malvavisco, jarabe).
modo_preparacion(malvavisco, cataplasma_hojas).
modo_preparacion(mangle, decoccion_corteza).
modo_preparacion(mangle, polvo_corteza).
modo_preparacion(mangle, cataplasma_hojas).
modo_preparacion(manzanilla, infusion_flores).
modo_preparacion(manzanilla, aceite_esencial).
modo_preparacion(manzanilla, compresas).
modo_preparacion(manzanilla, tintura).
modo_preparacion(marrubio, infusion).
modo_preparacion(marihuana, maceracion).
modo_preparacion(mastuerzo, cocimiento).
modo_preparacion(matarique, cocimiento).
modo_preparacion(menta, infusion).
modo_preparacion(nopal, pencas).
modo_preparacion(nogal, hojas_y_corteza_en_te_o_infusion).
modo_preparacion(nuez_vomica, te_espanol).
modo_preparacion(ocote, resina_mezclada).
modo_preparacion(ortiga, hojas_frescas_o_secas).
modo_preparacion(ortiga, infusion).
modo_preparacion(ortiga, cataplasma).
modo_preparacion(oregano, infusion).
modo_preparacion(palo_de_flor, cocimiento).
modo_preparacion(pasiflora, infusion).
modo_preparacion(pericon, infusion).
modo_preparacion(pinguica, cocimiento).
modo_preparacion(prodigiosa, 'Cocimiento').
modo_preparacion(pirul, 'Maceracion').
modo_preparacion(pulsatilla, 'infusion').
modo_preparacion(quebracho, 'infusion').
modo_preparacion(quina, 'infusion').
modo_preparacion(regaliz, infusion).
modo_preparacion(retama, cocimiento).
modo_preparacion(ricino, maceracion).
modo_preparacion(rosal, infusion).
modo_preparacion(romero, infusion).
modo_preparacion(ruda, infusion).
modo_preparacion(ruibarbo, cocimiento).
modo_preparacion(salvia, infusion).
modo_preparacion(sen, infusion).
modo_preparacion(sanguinaria, cocimiento).
modo_preparacion(sensativa, infusion_hojas).
modo_preparacion(simonillo, te_flores).
modo_preparacion(tamarindo, infusion_vainas).
modo_preparacion(tamarindo, pulpa).
modo_preparacion(tabachin, infusion_flores).
modo_preparacion(taray, cocimiento_corteza).
modo_preparacion(tila, infusion).
modo_preparacion(te_de_milpa, cocimiento).
modo_preparacion(toloache, infusion).
modo_preparacion(tronadora, infusion).
modo_preparacion(tripa_de_judas, cocimiento).
modo_preparacion(uva, jugo_o_consumo_directo).

% Categoría: enfermedad

enfermedad(infeccion_rinon).
enfermedad(reumas).
enfermedad(sarna).
enfermedad(tina).
enfermedad(callos).
enfermedad(lombrices).
enfermedad(alopecia).
enfermedad(diabetes).
enfermedad(anemia).
enfermedad(gota).
enfermedad(piquetes_mosco).
enfermedad(tifoidea).
enfermedad(diarrea).
enfermedad(ansiedad_leve).
enfermedad(insomnio).
enfermedad(diviesos).
enfermedad(solitaria).
enfermedad(colitis).
enfermedad(flatulencias).
enfermedad(colicos).
enfermedad(tos).
enfermedad(bronquitis).
enfermedad(golpes).
enfermedad(torceduras).
enfermedad(moretones).
enfermedad(verrugas).
enfermedad(anticonceptivo).
enfermedad(espasmos).
enfermedad(dolores_menstruales).
enfermedad(asma).
enfermedad(parkinson).
enfermedad(nubes_ojos).
enfermedad(parasitos_intestinales).
enfermedad(tumores).
enfermedad(disenteria_amebiana).
enfermedad(flujo).
enfermedad(hemorragias_internas).
enfermedad(tosferina).
enfermedad(epilepsia).
enfermedad(artritis).
enfermedad(ansiedad).
enfermedad(colicos_hepaticos).
enfermedad(colicos_renales).
enfermedad(colicos_intestinales).
enfermedad(carnosidad_ojos).
enfermedad(reumatismo).
enfermedad(dermatitis).
enfermedad(inflamacion).
enfermedad(resfriado).
enfermedad(problemas_digestivos).
enfermedad(fiebre).
enfermedad(reumatismo).
enfermedad(acne).
enfermedad(retencion_liquidos).
enfermedad(calculos_renales).
enfermedad(anasarca).
enfermedad(estrenimiento_cronico).
enfermedad(artritis).
enfermedad(dolor_corporal).
enfermedad(migrana).
enfermedad(dolor_de_estomago).
enfermedad(hipersexualidad).
enfermedad(alcoholismo).
enfermedad(nefritis).
enfermedad(orquitis).
enfermedad(males_de_la_vejiga).
enfermedad(acumulacion_de_toxinas).
enfermedad(miocarditis).
enfermedad(astenia).
enfermedad(epilepsia).
enfermedad(leucorrea).
enfermedad(empacho).
enfermedad('dolor estomacal').
enfermedad(gripe).
enfermedad(resfriado).
enfermedad(colesterol).
enfermedad(indigestion).
enfermedad(estres).
enfermedad(insomnio).
enfermedad(fiebre).
enfermedad('presion alta').
enfermedad('Fatiga').
enfermedad(tos).
enfermedad(bronquitis).
enfermedad('Infecciones urinarias').
enfermedad('Parásitos intestinales').
enfermedad(alergia).
enfermedad(vitiligo).
enfermedad(asma).
enfermedad(disenteria).
enfermedad(inflamacion_intestinal).
enfermedad(tuberculosis).
enfermedad(sifilis).
enfermedad(reumatismo).
enfermedad(hemorroides).
enfermedad(varices).
enfermedad(retencion_orina).
enfermedad(tos_ferina).
enfermedad(hemorragia).
enfermedad(problemas_renales).
enfermedad(gases).
enfermedad(flatulencias).
enfermedad(obstruccion_mucosa_pecho).
enfermedad(estrenimiento).
enfermedad(indigestion).
enfermedad(apoplejia).
enfermedad(congestion_cerebral).
enfermedad(dolores_de_cabeza).
enfermedad(reuma).
enfermedad(espasmos).
enfermedad(asma_bronquial).
enfermedad(menstruacion_dolorosa).
enfermedad(cruda).
enfermedad(agotamiento_mental).
enfermedad(males_estomacales).
enfermedad(heridas).
enfermedad(abscesos).
enfermedad(conjuntivitis).
enfermedad(infeccion_ojos).
enfermedad(ulceras_boca).
enfermedad(pequenas_infecciones).
enfermedad(enterocolitis).
enfermedad(gripa).
enfermedad(infecciones_garganta).
enfermedad(llagas).
enfermedad(infecciones_piel).
enfermedad(fiebre).
enfermedad(irritacion_garganta).
enfermedad(problemas_piel).
enfermedad(ulceras).
enfermedad(inflamacion_bucal).
enfermedad(gastritis).
enfermedad(eczema).
enfermedad(faringitis).
enfermedad(ciatica).
enfermedad(leishmaniasis).
enfermedad(diarrea_cronica).
enfermedad(hemorragias).
enfermedad(infecciones_cutaneas).
enfermedad(hepatitis).
enfermedad(cancer).
enfermedad(glaucoma).
enfermedad(males_ojos).
enfermedad(artritis).
enfermedad(vomitos).
enfermedad(caida_cabello).
enfermedad(obesidad).
enfermedad(rinones_adoloridos).
enfermedad(lactancia).
enfermedad(nauseas).
enfermedad(neuralgias).
enfermedad(disenteria).
enfermedad(inflamacion_vejiga).
enfermedad(heridas).
enfermedad(hinchazones).
enfermedad(herpes).
enfermedad(fiebres_malignas).
enfermedad(bronquitis).
enfermedad(lombrices_intestinales).
enfermedad(tos_ferina).
enfermedad(problemas_respiratorios).
enfermedad(dolor_muscular).
enfermedad(artritis).
enfermedad(reumatismo).
enfermedad(problemas_cutaneos).
enfermedad(caida_cabello).
enfermedad(problemas_digestivos).
enfermedad(resfriado).
enfermedad(fiebre).
enfermedad(dolor_de_cabeza).
enfermedad(insomnio).
enfermedad(ansiedad).
enfermedad(colicos).
enfermedad(indigestion).
enfermedad(infeccion_urinaria).
enfermedad(rinones).
enfermedad(disenteria).
enfermedad('cirrosis hepatica').
enfermedad(ictericia).
enfermedad(gonorrea).
enfermedad(herpes).
enfermedad('tos ferina').
enfermedad('enfermedades venereas').
enfermedad('jaquecas neuronales').
enfermedad('inflamaciones intestinales').
enfermedad('flujo').
enfermedad('afecciones del rinon').
enfermedad('tos ferina').
enfermedad('asma').
enfermedad(tetano).
enfermedad(epilepsia).
enfermedad(eclampsia).
enfermedad(tos).
enfermedad(dolor_garganta).
enfermedad(problemas_digestivos).
enfermedad(hipertension).
enfermedad(reumatismo).
enfermedad(estrenimiento).
enfermedad(inflamacion).
enfermedad(estres).
enfermedad(problemas_digestivos).
enfermedad(fatiga).
enfermedad(problemas_digestivos).
enfermedad(menstruacion).
enfermedad(colicos).
enfermedad(nerviosismo).
enfermedad(estrenimiento).
enfermedad(digestion).
enfermedad(higado).
enfermedad(dolor_garganta).
enfermedad(digestion).
enfermedad(sudoracion_excesiva).
enfermedad(estrenimiento).
enfermedad(problemas_respiratorios).
enfermedad(dolor_garganta).
enfermedad(tos).
enfermedad(ansiedad).
enfermedad(insomnio).
enfermedad(problemas_estomacales).
enfermedad(parasitos_intestinales).
enfermedad(estrenimiento).
enfermedad(fiebre).
enfermedad(tos).
enfermedad(bronquitis).
enfermedad(problemas_renales).
enfermedad(inflamacion_ojos).
enfermedad(insomnio).
enfermedad(ansiedad).
enfermedad(hipertension).
enfermedad(infeccion_urinaria).
enfermedad(retencion_liquidos).
enfermedad(calculos_renales).
enfermedad(dolor_muscular).
enfermedad(asma).
enfermedad(insomnio).
enfermedad(fiebre).
enfermedad(problemas_digestivos).
enfermedad(tos).
enfermedad(gripe).
enfermedad(dolor_estomacal).
enfermedad(estrenimiento).
enfermedad(hipertension).


% Categoría: sintoma_enfermedad

sintoma_enfermedad(reumas, dolor_articular).
sintoma_enfermedad(sarna, erupcion_en_la_piel).
sintoma_enfermedad(tina, 'Manchas_circulares_rojas').
sintoma_enfermedad(callos, piel_engrosada_y_amarillenta).
sintoma_enfermedad(lombrices, picazon_anal).
sintoma_enfermedad(alopecia, caida_de_cabello).
sintoma_enfermedad(diabetes, sed_excesiva).
sintoma_enfermedad(anemia, cansancio_y_debilidad).
sintoma_enfermedad(gota, dolor_intenso).
sintoma_enfermedad(gota, hinchazon).
sintoma_enfermedad(gota, enrojecimiento).
sintoma_enfermedad(piquetes_mosco, hinchazon).
sintoma_enfermedad(piquetes_mosco, picazon).
sintoma_enfermedad(tifoidea, fiebre_alta).
sintoma_enfermedad(tifoidea, diarrea).
sintoma_enfermedad(tifoidea, manchas_rojas).
sintoma_enfermedad(diarrea, heces_blandas).
sintoma_enfermedad(diarrea, dolor_intestinal).
sintoma_enfermedad(diviesos, dolor).
sintoma_enfermedad(diviesos, inflamacion).
sintoma_enfermedad(solitaria, malestar_estomacal).
sintoma_enfermedad(solitaria, nauseas).
sintoma_enfermedad(solitaria, perdida_apetito).
sintoma_enfermedad(colitis, diarrea).
sintoma_enfermedad(colitis, dolor_abdominal).
sintoma_enfermedad(colitis, sangre_en_heces).
sintoma_enfermedad(bronquitis, tos).
sintoma_enfermedad(problemas_hepaticos, dolor_abdominal).
sintoma_enfermedad(fiebre, temperatura_elevada).
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(nubes_ojos, vision_nublada).
sintoma_enfermedad(parasitos_intestinales, dolor_estomago).
sintoma_enfermedad(disenteria_amebiana, diarrea).
sintoma_enfermedad(disenteria_amebiana, dolor_estomago).
sintoma_enfermedad(insomnio, nerviosismo).
sintoma_enfermedad(ansiedad, desesperacion).
sintoma_enfermedad(asma, dificultad_respiratoria).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(dermatitis, erupcion_cutanea).
sintoma_enfermedad(inflamacion, hinchazon).
sintoma_enfermedad(resfriado, constipado).
sintoma_enfermedad(problemas_digestivos, colicos).
sintoma_enfermedad(ansiedad, nerviosismo).
sintoma_enfermedad(parasitos_intestinales, digestiva).
sintoma_enfermedad(problemas_digestivos, digestiva).
sintoma_enfermedad(debilidad_general, general).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(acne, inflamacion_piel).
sintoma_enfermedad(anemia, dolor_pecho).
sintoma_enfermedad(retencion_liquidos, hinchazon).
sintoma_enfermedad(calculos_renales, dolor_renal).
sintoma_enfermedad(anasarca, hinchazon_generalizada).
sintoma_enfermedad(estrenimiento_cronico, estrenimiento).
sintoma_enfermedad(diabetes, mucha_sed).
sintoma_enfermedad(diabetes, fatiga).
sintoma_enfermedad(diabetes, nivel_alto_de_glucosa).
sintoma_enfermedad(artritis, dolor_articular).
sintoma_enfermedad(artritis, inflamacion).
sintoma_enfermedad(reumatismo, rigidez_articular).
sintoma_enfermedad(reumatismo, hinchazon).
sintoma_enfermedad(dolor_corporal, dolor).
sintoma_enfermedad(migrana, dolor_de_cabeza).
sintoma_enfermedad(dolor_de_estomago, nausea).
sintoma_enfermedad(dolor_de_estomago, dolor_de_estomago).
sintoma_enfermedad(hipersexualidad, ansiedad).
sintoma_enfermedad(hipersexualidad, impulsos_sexuales_intensos).
sintoma_enfermedad(hipersexualidad, carencia_de_control_de_deseos).
sintoma_enfermedad(alcoholismo, ansiedad).
sintoma_enfermedad(alcoholismo, deseo_de_beber).
sintoma_enfermedad(alcoholismo, tolerancia_alcoholica).
sintoma_enfermedad(alcoholismo, perdida_del_control).
sintoma_enfermedad(nefritis, dolor_en_rinones).
sintoma_enfermedad(nefritis, sangre_en_orina).
sintoma_enfermedad(orquitis, hinchazon_en_testiculos).
sintoma_enfermedad(orquitis, dolor_al_orinar).
sintoma_enfermedad(males_de_la_vejiga, dolor_al_orinar).
sintoma_enfermedad(males_de_la_vejiga, urgencia_frecuente).
sintoma_enfermedad(anemia, debilidad).
sintoma_enfermedad(acumulacion_de_toxinas, toxinas_en_rinon).
sintoma_enfermedad(acumulacion_de_toxinas, toxinas_en_higado).
sintoma_enfermedad(acumulacion_de_toxinas, urea_en_sangre).
sintoma_enfermedad(miocarditis, dolor_toracico).
sintoma_enfermedad(astenia, fatiga).
sintoma_enfermedad(epilepsia, convulsiones).
sintoma_enfermedad(lombrices, molestias_abdominales).
sintoma_enfermedad(leucorrea, flujo_anormal).
sintoma_enfermedad(empacho, 'pesadez en el estómago').
sintoma_enfermedad('dolor estomacal', 'ardor').
sintoma_enfermedad(gripe, fiebre).
sintoma_enfermedad(resfriado, 'congestion nasal').
sintoma_enfermedad(diabetes, 'sed excesiva').
sintoma_enfermedad(colesterol, 'dolor en el pecho').
sintoma_enfermedad(anemia, 'fatiga').
sintoma_enfermedad(indigestion, 'hinchazón').
sintoma_enfermedad(estres, 'tensión muscular').
sintoma_enfermedad(insomnio, 'dificultad para dormir').
sintoma_enfermedad(fiebre, temperatura_alta).
sintoma_enfermedad(dolor_estomacal, dolor_abdominal).
sintoma_enfermedad(parasitos, comezon_anal).
sintoma_enfermedad(parasitos, dolor_abdominal).
sintoma_enfermedad(problemas_hepaticos, color_amarillo_en_la_piel).
sintoma_enfermedad(sarampion, fiebre).
sintoma_enfermedad(sarampion, manchas_rojas).
sintoma_enfermedad(afecciones_de_la_piel, irritacion).
sintoma_enfermedad(ulceras, dolor_interno).
sintoma_enfermedad(infecciones_gastrointestinales, diarrea).
sintoma_enfermedad(problemas_bucales, inflamacion_encias).
sintoma_enfermedad(indigestion, pesadez_estomacal).
sintoma_enfermedad(flatulencia, gases).
sintoma_enfermedad(colico_menstrual, dolor_abdominal).
sintoma_enfermedad('Fatiga', 'cansancio').
sintoma_enfermedad('Fatiga', 'debilidad').
sintoma_enfermedad(bronquitis, 'flemas').
sintoma_enfermedad(bronquitis, 'congestion').
sintoma_enfermedad('Infecciones urinarias', 'Ardor al oriniar').
sintoma_enfermedad('Parásitos intestinales', 'Dolor abdominal').
sintoma_enfermedad(hemorragia, sangrado).
sintoma_enfermedad(problemas_renales, dolor_espalda_baja).
sintoma_enfermedad(gases, dolor_abdominal).
sintoma_enfermedad(flatulencias, distension_abdominal).
sintoma_enfermedad(disentiria, diarrea).
sintoma_enfermedad(estrenimiento, dificultad_defecacion).
sintoma_enfermedad(indigestion, malestar_abdominal).
sintoma_enfermedad(dolores_de_cabeza, dolor_intenso).
sintoma_enfermedad(reuma, dolor_articular).
sintoma_enfermedad(espasmos, contraccion_muscular).
sintoma_enfermedad(asma_bronquial, dificultad_respiratoria).
sintoma_enfermedad(cruda, malestar_general).
sintoma_enfermedad(agotamiento_mental, fatiga_cognitiva).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
sintoma_enfermedad(colitis, inflamacion_intestinal).
sintoma_enfermedad(bronquitis, tos_congestion).
sintoma_enfermedad(heridas, sangrado).
sintoma_enfermedad(abscesos, hinchazon).
sintoma_enfermedad(conjuntivitis, ojos_rojos).
sintoma_enfermedad(infeccion_ojos, secrecion).
sintoma_enfermedad(ulceras_boca, lesiones_bucales).
sintoma_enfermedad(disenteria, diarrea_con_sangre).
sintoma_enfermedad(enterocolitis, dolor_abdominal).
sintoma_enfermedad(gripa, fiebre_y_congestion).
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(infecciones_garganta, dolor_garganta).
sintoma_enfermedad(llagas, heridas_abiertas).
sintoma_enfermedad(infecciones_piel, enrojecimiento).
sintoma_enfermedad(fiebre, temperatura_alta).
sintoma_enfermedad(irritacion_garganta, dolor_al_tragar).
sintoma_enfermedad(estrenimiento, dificultad_defecar).
sintoma_enfermedad(problemas_piel, erupciones_cutaneas).
sintoma_enfermedad(ulceras, llagas_estomacales).
sintoma_enfermedad(inflamacion_bucal, encias_hinchadas).
sintoma_enfermedad(bronquitis, tos_con_flema).
sintoma_enfermedad(gastritis, acidez_estomacal).
sintoma_enfermedad(eczema, picazon_piel).
sintoma_enfermedad(faringitis, dolor_garganta).
sintoma_enfermedad(ciatica, dolor_pierna).
sintoma_enfermedad(leishmaniasis, ulceras_piel). 
sintoma_enfermedad(diarrea_cronica, deshidratacion).
sintoma_enfermedad(hemorragias, sangrado_excesivo).
sintoma_enfermedad(infecciones_cutaneas, pus_piel).
sintoma_enfermedad(hepatitis, ictericia).
sintoma_enfermedad(cancer, dolor_cronico).
sintoma_enfermedad(glaucoma, presion_intraocular).
sintoma_enfermedad(males_ojos, irritacion_ocular).
sintoma_enfermedad(artritis, dolor_articular).
sintoma_enfermedad(reumatismo, dolor_articular).
sintoma_enfermedad(caida_cabello, perdida_cabello).
sintoma_enfermedad(obesidad, aumento_peso).
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(vomitos, nausea).
sintoma_enfermedad(ciatica, dolor_nervio).
sintoma_enfermedad(tuberculosis, tos_cronica).
sintoma_enfermedad(diabetes, hiperglucemia).
sintoma_enfermedad(rinones_adoloridos, dolor_renal).
sintoma_enfermedad(insomnio, dificultad_dormir).
sintoma_enfermedad(lactancia, baja_produccion_leche).
sintoma_enfermedad(nauseas, malestar_estomacal).
sintoma_enfermedad(neuralgias, dolor_nervioso).
sintoma_enfermedad(sarna, picazon_piel).
sintoma_enfermedad(hipertension, presion_alta).
sintoma_enfermedad(problemas_digestivos, dolor_estomago).
sintoma_enfermedad(inflamacion, hinchazon).
sintoma_enfermedad(diabetes, niveles_azucar_altos).
sintoma_enfermedad(tos, tos_seca).
sintoma_enfermedad(inflamacion_vejiga, hinchazon).
sintoma_enfermedad(anemia, fatiga).
sintoma_enfermedad(herpes, ampollas_cutaneas).
sintoma_enfermedad(anemia, debilidad).
sintoma_enfermedad(artritis, dolor_articulaciones).
sintoma_enfermedad(problemas_cutaneos, irritacion_piel).
sintoma_enfermedad(menstruacion, retraso_menstrual).
sintoma_enfermedad(colicos, dolor_abdominal).
sintoma_enfermedad(nerviosismo, ansiedad).
sintoma_enfermedad(estrenimiento, dificultad_evacuacion).
sintoma_enfermedad(digestion, pesadez_estomacal).
sintoma_enfermedad(higado, insuficiencia_hepatica).
sintoma_enfermedad(dolor_garganta, inflamacion_faringea).
sintoma_enfermedad(sudoracion_excesiva, sudor_constante).
sintoma_enfermedad(problemas_respiratorios, dificultad_respirar).
sintoma_enfermedad(tos, irritacion_bronquial).
sintoma_enfermedad(disenteria, 'dolor abdominal').
sintoma_enfermedad('cirrosis hepatica', 'picazon en la piel').
sintoma_enfermedad(ictericia, 'piel amarillenta').
sintoma_enfermedad(gonorrea, 'ardor al orinar').
sintoma_enfermedad(herpes, llagas).
sintoma_enfermedad('tos ferina', 'secreción nasal').
sintoma_enfermedad('enfermedades venereas', 'llagas').
sintoma_enfermedad('jaquecas neuronales', 'nauseas').
sintoma_enfermedad('inflamaciones intestinales', 'cansancio').
sintoma_enfermedad('flujo', 'entumecimiento').
sintoma_enfermedad('afecciones del rinon', 'dolor en espalda').
sintoma_enfermedad('asma', 'sibilancias').
sintoma_enfermedad(tetano, 'espasmos').
sintoma_enfermedad(epilepsia, 'crisis epileptica').
sintoma_enfermedad(eclampsia, 'convulsiones').
sintoma_enfermedad(tos, irritacion_garganta).
sintoma_enfermedad(hipertension, presion_alta).
sintoma_enfermedad(estres, tension_nerviosa).
sintoma_enfermedad(fatiga, cansancio_general).
sintoma_enfermedad(insomnio, dificultad_para_dormir).
sintoma_enfermedad(infeccion_urinaria, dolor_al_orinar).
sintoma_enfermedad(diabetes, glucosa_alta).
sintoma_enfermedad(dolor_muscular, rigidez_muscular).
sintoma_enfermedad(estrenimiento, dificultad_evacuar).


% Categoría: trata_enfermedad
trata_enfermedad(abrojo, infeccion_urinaria).
trata_enfermedad(abrojo, cistitis).
trata_enfermedad(aconito,neuralgias).
trata_enfermedad(aconito,neuralgia).
trata_enfermedad(aconito, fiebre).
trata_enfermedad(aconito,reumatismo).
trata_enfermedad(adormidera, insomnio).
trata_enfermedad(adormidera, dolor).
trata_enfermedad(adormidera, ansiedad).
trata_enfermedad(aguacate, estrenimiento).
trata_enfermedad(aguacate, problemas_digestivos).
trata_enfermedad(aguacate, tos).
trata_enfermedad(ahuhuete, infecciones_piel).
trata_enfermedad(ajenjo, parasitos_intestinales).
trata_enfermedad(ajenjo, problemas_digestivos).
trata_enfermedad(ajenjo, debilidad_general).
trata_enfermedad(ajo, reumas).
trata_enfermedad(ajo, sarna).
trata_enfermedad(ajo, tina).
trata_enfermedad(ajo, callos).
trata_enfermedad(ajo, lombrices).
trata_enfermedad(albahaca, alopecia).
trata_enfermedad(alcachofa, diabetes).
trata_enfermedad(alcachofa, anemia).
trata_enfermedad(alcanfor, gota).
trata_enfermedad(alcanfor, tifoidea).
trata_enfermedad(alcanfor, piquetes_mosco).
trata_enfermedad(alcanfor, artritis).
trata_enfermedad(alcanfor, arteriosclerosis).
trata_enfermedad(amapola_amarilla, diarrea).
trata_enfermedad(amapola_amarilla, insomnio).
trata_enfermedad(amapola_amarilla, ansiedad_leve).
trata_enfermedad(amate, reumatismo).
trata_enfermedad(amate, diviesos).
trata_enfermedad(amate, solitaria).
trata_enfermedad(amate, inflamacion).
trata_enfermedad(amate, infecciones_leves).
trata_enfermedad(anis, colitis_leve).
trata_enfermedad(anis, indigestion).
trata_enfermedad(anis, flatulencias).
trata_enfermedad(anis, colicos).
trata_enfermedad(anis, tos).
trata_enfermedad(anis, bronquitis).
trata_enfermedad(anacahuite, bronquitis).
trata_enfermedad(anacahuite, tos).
trata_enfermedad(anacahuite, pulmones).
trata_enfermedad(anacahuite, resfriado).
trata_enfermedad(arnica, golpes).
trata_enfermedad(arnica, torceduras).
trata_enfermedad(arnica, moretones).
trata_enfermedad(barbasco, verrugas).
trata_enfermedad(barbasco, tina).
trata_enfermedad(barbasco, sarna).
trata_enfermedad(barbasco, anticonceptivo).
trata_enfermedad(belladona, espasmos).
trata_enfermedad(belladona, colicos).
trata_enfermedad(belladona, dolores_menstruales).
trata_enfermedad(belladona, asma).
trata_enfermedad(belladona, parkinson).
trata_enfermedad(berro, bronquitis).
trata_enfermedad(boldo, problemas_hepaticos).
trata_enfermedad(borraja, fiebre).
trata_enfermedad(bugambilia, tos).
trata_enfermedad(brionia, lombrices).
trata_enfermedad(canela, anemia).
trata_enfermedad(cedron, tos).
trata_enfermedad(cardo_santo, nubes_ojos).
trata_enfermedad(cempasuchil, parasitos_intestinales).
trata_enfermedad(chaparro_amargoso, disenteria_amebiana).
trata_enfermedad(chaparro_amargoso, diarrea).
trata_enfermedad(chaparro_amargoso, flujo).
trata_enfermedad(chaparro_amargoso, hemorragias_internas).
trata_enfermedad(chicalote, tos).
trata_enfermedad(chicalote, asma).
trata_enfermedad(chicalote, tosferina).
trata_enfermedad(chicalote, epilepsia).
trata_enfermedad(chicalote, artritis).
trata_enfermedad(chicalote, insomnio).
trata_enfermedad(chicalote, ansiedad).
trata_enfermedad(chicalote, colicos_hepaticos).
trata_enfermedad(chicalote, colicos_renales).
trata_enfermedad(chicalote, colicos_intestinales).
trata_enfermedad(chile, asma).
trata_enfermedad(chile, reumatismo).
trata_enfermedad(chichigua, dermatitis).
trata_enfermedad(chichigua, inflamacion).
trata_enfermedad(cilantro, problemas_digestivos).
trata_enfermedad(cilantro, ansiedad).
trata_enfermedad(cocolmeca, reumatismo).
trata_enfermedad(cocolmeca, acne).
trata_enfermedad(cola_de_caballo, retencion_liquidos).
trata_enfermedad(cola_de_caballo, calculos_renales).
trata_enfermedad(cuajiote, anasarca).
trata_enfermedad(cuajiote, estrenimiento_cronico).
trata_enfermedad(cuasia, diabetes).
trata_enfermedad(cuasia, artritis).
trata_enfermedad(cuasia, reumatismo).
trata_enfermedad(cuasia, dolor_corporal).
trata_enfermedad(cuasia, migrana).
trata_enfermedad(cuasia, dolor_de_estomago).
trata_enfermedad(damiana, hipersexualidad).
trata_enfermedad(damiana, alcoholismo).
trata_enfermedad(damiana, diabetes).
trata_enfermedad(damiana, nefritis).
trata_enfermedad(damiana, orquitis).
trata_enfermedad(damiana, males_de_la_vejiga).
trata_enfermedad(diente_de_leon, anemia).
trata_enfermedad(diente_de_leon, acumulacion_de_toxinas).
trata_enfermedad(digitaria, miocarditis).
trata_enfermedad(digitaria, astenia).
trata_enfermedad(digitaria, epilepsia).
trata_enfermedad(doradilla, nefritis).
trata_enfermedad(epazote, lombrices).
trata_enfermedad(enebro, leucorrea).
trata_enfermedad(estafiate, empacho).
trata_enfermedad(estafiate, 'dolor estomacal').
trata_enfermedad(eucalipto, gripe).
trata_enfermedad(eucalipto, resfriado).
trata_enfermedad(fenogreco, diabetes).
trata_enfermedad(fenogreco, colesterol).
trata_enfermedad(genciana, anemia).
trata_enfermedad(genciana, indigestion).
trata_enfermedad(geranio, estres).
trata_enfermedad(geranio, insomnio).
trata_enfermedad(girasol, 'presion alta').
trata_enfermedad(girasol, fiebre).
trata_enfermedad(colchino, dolor_estomacal).
trata_enfermedad(colchino, parasitos).
trata_enfermedad(colchino, problemas_hepaticos).
trata_enfermedad(comino, indigestion).
trata_enfermedad(comino, flatulencia).
trata_enfermedad(comino, colico_menstrual).
trata_enfermedad(colpachi, sarampion).
trata_enfermedad(colpachi, afecciones_de_la_piel).
trata_enfermedad(colpachi, fiebre).
trata_enfermedad(cuachalalate, ulceras).
trata_enfermedad(cuachalalate, infecciones_gastrointestinales).
trata_enfermedad(cuachalalate, problemas_bucales).
trata_enfermedad(gingseng, 'Diabetes').
trata_enfermedad(gordolobo, 'bronquitis').
trata_enfermedad(gordolobo, 'tos').
trata_enfermedad(grama, 'cistitis').
trata_enfermedad(granado, 'Disentería').
trata_enfermedad(guaco, alergia).
trata_enfermedad(guaco, vitiligo).
trata_enfermedad(guaco, asma).
trata_enfermedad(guazuma, disenteria).
trata_enfermedad(guazuma, diarrea).
trata_enfermedad(guazuma, inflamacion_intestinal).
trata_enfermedad(guayacan, tos).
trata_enfermedad(guayacan, tuberculosis).
trata_enfermedad(guayacan, sifilis).
trata_enfermedad(guayacan, reumatismo).
trata_enfermedad(hamamelis, hemorroides).
trata_enfermedad(hamamelis, varices).
trata_enfermedad(hamamelis, retencion_orina).
trata_enfermedad(helenio, bronquitis).
trata_enfermedad(helenio, tos_ferina).
trata_enfermedad(helenio, retencion_orina).
trata_enfermedad(hierba_del_pollo, hemorragia).
trata_enfermedad(hierba_del_pollo, problemas_renales).
trata_enfermedad(hinojo, gases).
trata_enfermedad(hinojo, flatulencias).
trata_enfermedad(jalapa, disenteria).
trata_enfermedad(jalapa, estrenimiento).
trata_enfermedad(jalapa, indigestion).
trata_enfermedad(jalapa, apoplejia).
trata_enfermedad(jalapa, congestion_cerebral).
trata_enfermedad(ipecacuana, tos).
trata_enfermedad(jazmin_amarillo, dolores_de_cabeza).
trata_enfermedad(jazmin_amarillo, reuma).
trata_enfermedad(jazmin_amarillo, espasmos).
trata_enfermedad(jazmin_amarillo, asma_bronquial).
trata_enfermedad(jazmin_amarillo, menstruacion_dolorosa).
trata_enfermedad(jengibre, cruda).
trata_enfermedad(jengibre, agotamiento_mental).
trata_enfermedad(linaza, estrenimiento).
trata_enfermedad(linaza, colitis).
trata_enfermedad(linaza, males_estomacales).
trata_enfermedad(linaza, bronquitis).
trata_enfermedad(linaza, hemorroides).
trata_enfermedad(linaza, heridas).
trata_enfermedad(linaza, abscesos).
trata_enfermedad(llanten, conjuntivitis).
trata_enfermedad(llanten, infeccion_ojos).
trata_enfermedad(llanten, ulceras_boca).
trata_enfermedad(llanten, pequenas_infecciones).
trata_enfermedad(llanten, disenteria).
trata_enfermedad(llanten, enterocolitis).
trata_enfermedad(madreselva, gripa).
trata_enfermedad(madreselva, tos).
trata_enfermedad(madreselva, infecciones_garganta).
trata_enfermedad(maguey, llagas).
trata_enfermedad(maguey, infecciones_piel).
trata_enfermedad(maguey, fiebre).
trata_enfermedad(malva, irritacion_garganta).
trata_enfermedad(malva, estrenimiento).
trata_enfermedad(malva, problemas_piel).
trata_enfermedad(malva, ulceras).
trata_enfermedad(malva, inflamacion_bucal).
trata_enfermedad(malvavisco, bronquitis).
trata_enfermedad(malvavisco, gastritis).
trata_enfermedad(malvavisco, eczema).
trata_enfermedad(malvavisco, faringitis).
trata_enfermedad(malvavisco, ciatica).
trata_enfermedad(mangle, leishmaniasis).
trata_enfermedad(mangle, diarrea_cronica).
trata_enfermedad(mangle, hemorragias).
trata_enfermedad(mangle, infecciones_cutaneas).
trata_enfermedad(mangle, hepatitis).
trata_enfermedad(manzanilla, ansiedad).
trata_enfermedad(manzanilla, insomnio).
trata_enfermedad(manzanilla, indigestion).
trata_enfermedad(manzanilla, conjuntivitis).
trata_enfermedad(manzanilla, eczema).
trata_enfermedad(manzanilla, colico_menstrual).
trata_enfermedad(marrubio, asma).
trata_enfermedad(marrubio, caida_cabello).
trata_enfermedad(marrubio, obesidad).
trata_enfermedad(marrubio, tos).
trata_enfermedad(marrubio, reumatismo).
trata_enfermedad(marrubio, vomitos).
trata_enfermedad(marihuana, cancer).
trata_enfermedad(marihuana, glaucoma).
trata_enfermedad(marihuana, males_ojos).
trata_enfermedad(marihuana, artritis).
trata_enfermedad(marihuana, reumatismo).
trata_enfermedad(mastuerzo, ciatica).
trata_enfermedad(mastuerzo, tuberculosis).
trata_enfermedad(matarique, diabetes).
trata_enfermedad(matarique, reumatismo).
trata_enfermedad(matarique, rinones_adoloridos).
trata_enfermedad(menta, insomnio).
trata_enfermedad(menta, lactancia).
trata_enfermedad(menta, nauseas).
trata_enfermedad(menta, neuralgias).
trata_enfermedad(menta, vomitos).
trata_enfermedad(menta, sarna).
trata_enfermedad(nopal, diabetes).
trata_enfermedad(nopal, inflamacion_vejiga).
trata_enfermedad(nopal, heridas).
trata_enfermedad(nopal, hinchazones).
trata_enfermedad(nogal, anemia).
trata_enfermedad(nogal, escrofulosis).
trata_enfermedad(nogal, herpes).
trata_enfermedad(nogal, reumatismo).
trata_enfermedad(nuez_vomica, fiebres_malignas).
trata_enfermedad(nuez_vomica, bronquitis).
trata_enfermedad(nuez_vomica, reumas).
trata_enfermedad(nuez_vomica, lombrices_intestinales).
trata_enfermedad(nuez_vomica, tos_ferina).
trata_enfermedad(ocote, problemas_respiratorios).
trata_enfermedad(ocote, dolor_muscular).
trata_enfermedad(ortiga, anemia).
trata_enfermedad(ortiga, artritis).
trata_enfermedad(ortiga, reumatismo).
trata_enfermedad(ortiga, problemas_cutaneos).
trata_enfermedad(ortiga, caida_cabello).
trata_enfermedad(oregano, problemas_digestivos).
trata_enfermedad(oregano, resfriado).
trata_enfermedad(palo_de_flor, fiebre).
trata_enfermedad(palo_de_flor, dolor_de_cabeza).
trata_enfermedad(pasiflora, insomnio).
trata_enfermedad(pasiflora, ansiedad).
trata_enfermedad(pericon, colicos).
trata_enfermedad(pericon, indigestion).
trata_enfermedad(pinguica, infeccion_urinaria).
trata_enfermedad(pinguica, rinones).
trata_enfermedad(prodigiosa, disenteria).
trata_enfermedad(prodigiosa, 'cirrosis hepatica').
trata_enfermedad(prodigiosa, ictericia).
trata_enfermedad(pirul, gonorrea).
trata_enfermedad(pulsatilla, herpes).
trata_enfermedad(pulsatilla, 'tos ferina').
trata_enfermedad(pulsatilla, 'enfermedades venereas').
trata_enfermedad(pulsatilla, 'jaquecas neuronales').
trata_enfermedad(quebracho, 'inflamaciones intestinales').
trata_enfermedad(quebracho, 'flujo').
trata_enfermedad(quebracho, 'afecciones del rinon').
trata_enfermedad(quina, 'tos ferina').
trata_enfermedad(quina, 'asma').
trata_enfermedad(quina, tetano).
trata_enfermedad(quina, epilepsia).
trata_enfermedad(quina, eclampsia).
trata_enfermedad(regaliz, tos).
trata_enfermedad(regaliz, dolor_garganta).
trata_enfermedad(regaliz, problemas_digestivos).
trata_enfermedad(retama, hipertension).
trata_enfermedad(retama, reumatismo).
trata_enfermedad(ricino, estrenimiento).
trata_enfermedad(ricino, inflamacion).
trata_enfermedad(rosal, estres).
trata_enfermedad(rosal, problemas_digestivos).
trata_enfermedad(romero, fatiga).
trata_enfermedad(romero, problemas_digestivos).
trata_enfermedad(ruda, menstruacion).
trata_enfermedad(ruda, colicos).
trata_enfermedad(ruda, nerviosismo).
trata_enfermedad(ruibarbo, estrenimiento).
trata_enfermedad(ruibarbo, digestion).
trata_enfermedad(ruibarbo, higado).
trata_enfermedad(salvia, dolor_garganta).
trata_enfermedad(salvia, digestion).
trata_enfermedad(salvia, sudoracion_excesiva).
trata_enfermedad(sen, estrenimiento).
trata_enfermedad(sanguinaria, problemas_respiratorios).
trata_enfermedad(sanguinaria, dolor_garganta).
trata_enfermedad(sanguinaria, tos).
trata_enfermedad(sensativa, ansiedad).
trata_enfermedad(sensativa, insomnio).
trata_enfermedad(simonillo, problemas_estomacales).
trata_enfermedad(simonillo, parasitos_intestinales).
trata_enfermedad(tamarindo, estrenimiento).
trata_enfermedad(tamarindo, fiebre).
trata_enfermedad(tabachin, tos).
trata_enfermedad(tabachin, bronquitis).
trata_enfermedad(taray, problemas_renales).
trata_enfermedad(tila, insomnio).
trata_enfermedad(tila, ansiedad).
trata_enfermedad(te_de_milpa, infeccion_urinaria).
trata_enfermedad(te_de_milpa, retencion_liquidos).
trata_enfermedad(toloache, dolor_muscular).
trata_enfermedad(toloache, asma).
trata_enfermedad(tronadora, diabetes).
trata_enfermedad(tronadora, fiebre).
trata_enfermedad(tripa_de_judas, tos).
trata_enfermedad(tripa_de_judas, gripe).
trata_enfermedad(uva, estrenimiento).
trata_enfermedad(uva, hipertension).

% Categoría: accion_efecto_planta

accion_efecto_planta(abrojo, diuretico).
accion_efecto_planta(abrojo, antiinflamantorio).
accion_efecto_planta(aconito, antiinflamantorio).
accion_efecto_planta(aconito, analgesico).
accion_efecto_planta(adormidera, analgesico).
accion_efecto_planta(aguacate, laxante).
accion_efecto_planta(ahuhuete, antiinflamantorio).
accion_efecto_planta(ajenjo, desparasitante).
accion_efecto_planta(ajo, antiinflamantorio).
accion_efecto_planta(ajo, vermifugo).
accion_efecto_planta(ajo, febrifugo).
accion_efecto_planta(ajo, diuretico).
accion_efecto_planta(ajo, expectorante).
accion_efecto_planta(ajo, antiparasitario).
accion_efecto_planta(albahaca, tonico_capilar).
accion_efecto_planta(albahaca, diuretica).
accion_efecto_planta(albahaca, carminativa).
accion_efecto_planta(albahaca, emenagoga).
accion_efecto_planta(alcachofa, descongestionante).
accion_efecto_planta(alcachofa, desimflamatorio).
accion_efecto_planta(alcanfor, analgesico).
accion_efecto_planta(alcanfor, antiseptico).
accion_efecto_planta(amapola_amarilla, sedante_suave).
accion_efecto_planta(amapola_amarilla, antiespasmodico).
accion_efecto_planta(amate, antiparasitario).
accion_efecto_planta(amate, antiinflamatorio).
accion_efecto_planta(anis, carminativo).
accion_efecto_planta(anis, expectorante).
accion_efecto_planta(anacahuite, expectorante).
accion_efecto_planta(anacahuite, balsamico).
accion_efecto_planta(arnica, antiinflamatoria).
accion_efecto_planta(arnica, cicatrizante).
accion_efecto_planta(arnica, analgesica).
accion_efecto_planta(barbasco, toxica).
accion_efecto_planta(barbasco, irritante).
accion_efecto_planta(barbasco, pesticida).
accion_efecto_planta(belladona, antiespasmodica).
accion_efecto_planta(belladona, analgesica).
accion_efecto_planta(belladona, sedante).
accion_efecto_planta(belladona, toxica).
accion_efecto_planta(berro, expectorante).
accion_efecto_planta(berro, depurativa).
accion_efecto_planta(boldo, hepatoprotectora).
accion_efecto_planta(boldo, colagoga).
accion_efecto_planta(borraja, sudorifica).
accion_efecto_planta(borraja, antiinflamatoria).
accion_efecto_planta(bugambilia, expectorante).
accion_efecto_planta(bugambilia, antitusiva).
accion_efecto_planta(brionia, purgante).
accion_efecto_planta(brionia, antiparasitaria).
accion_efecto_planta(canela, estimulante).
accion_efecto_planta(canela, antimicrobiana).
accion_efecto_planta(cedron, expectorante).
accion_efecto_planta(cedron, calmante).
accion_efecto_planta(cardo_santo, oftalmica).
accion_efecto_planta(cempasuchil, antiparasitario).
accion_efecto_planta(cempasuchil, tonico).
accion_efecto_planta(chaparro_amargoso, antiseptico).
accion_efecto_planta(chicalote, antiespasmodico).
accion_efecto_planta(chicalote, hipnotico).
accion_efecto_planta(chicalote, sedante).
accion_efecto_planta(chile, antiinflamatorio).
accion_efecto_planta(chile, rubefaciente).
accion_efecto_planta(chichigua, antiinflamatorio).
accion_efecto_planta(chichigua, antiseptico).
accion_efecto_planta(cilantro, carminativo).
accion_efecto_planta(cilantro, relajante).
accion_efecto_planta(cocolmeca, depurativo).
accion_efecto_planta(cocolmeca, antiinflamatorio).
accion_efecto_planta(cola_de_caballo, diuretico).
accion_efecto_planta(cola_de_caballo, remineralizante).
accion_efecto_planta(cuajiote, laxante).
accion_efecto_planta(cuasia, analgesico).
accion_efecto_planta(cuasia, antiinflamatorio).
accion_efecto_planta(cuasia, hipoglucemiante).
accion_efecto_planta(damiana, relajante).
accion_efecto_planta(damiana, diuretico).
accion_efecto_planta(damiana, antiinflamatorio).
accion_efecto_planta(diente_de_leon, aperitivo).
accion_efecto_planta(diente_de_leon, depurativo).
accion_efecto_planta(diente_de_leon, laxante).
accion_efecto_planta(diente_de_leon, colagogo).
accion_efecto_planta(diente_de_leon, diuretico).
accion_efecto_planta(diente_de_leon, alimenticio).
accion_efecto_planta(digitaria, cardiotonica).
accion_efecto_planta(doradilla, diuretica).
accion_efecto_planta(doradilla, desinflamatoria).
accion_efecto_planta(epazote, antiparasitaria).
accion_efecto_planta(epazote, carminativa).
accion_efecto_planta(enebro, antiseptica).
accion_efecto_planta(enebro, diuretica).
accion_efecto_planta(estafiate, digestivo).
accion_efecto_planta(estafiate, antiparasitario).
accion_efecto_planta(eucalipto, expectorante).
accion_efecto_planta(eucalipto, antiseptico).
accion_efecto_planta(fenogreco, hipoglucemiante).
accion_efecto_planta(fenogreco, hipolipemiante).
accion_efecto_planta(genciana, estimulante).
accion_efecto_planta(genciana, tonico).
accion_efecto_planta(geranio, relajante).
accion_efecto_planta(geranio, ansiolitico).
accion_efecto_planta(girasol, diuretico).
accion_efecto_planta(girasol, antiinflamatorio).
accion_efecto_planta(colchino, analgesico).
accion_efecto_planta(colchino, antiparasitario).
accion_efecto_planta(colchino, hepatoprotector).
accion_efecto_planta(comino, carminativo).
accion_efecto_planta(comino, antiespasmodico).
accion_efecto_planta(comino, digestivo).
accion_efecto_planta(colpachi, antipiretico).
accion_efecto_planta(colpachi, antiseptico).
accion_efecto_planta(colpachi, dermatologico).
accion_efecto_planta(cuachalalate, cicatrizante).
accion_efecto_planta(cuachalalate, astringente).
accion_efecto_planta(cuachalalate, antiinflamatorio).
accion_efecto_planta(gingseng, 'estimulante').
accion_efecto_planta(gingseng, 'adaptógeno').
accion_efecto_planta(gordolobo, expectorante).
accion_efecto_planta(gordolobo, antiinflamatorio).
accion_efecto_planta(grama, 'diurético').
accion_efecto_planta(grama, 'depurativo').
accion_efecto_planta(granado, 'astringente').
accion_efecto_planta(granado, 'antiparasitario').
accion_efecto_planta(guaco, antiinflamatorio).
accion_efecto_planta(guaco, broncodilatador).
accion_efecto_planta(guazuma, antidiarreico).
accion_efecto_planta(guazuma, antiinflamatorio).
accion_efecto_planta(guayacan, expectorante).
accion_efecto_planta(guayacan, antiesifilitico).
accion_efecto_planta(hamamelis, venotonico).
accion_efecto_planta(hamamelis, diuretico).
accion_efecto_planta(helenio, expectorante).
accion_efecto_planta(helenio, diuretico).
accion_efecto_planta(hierba_del_pollo, hemostatico).
accion_efecto_planta(hierba_del_pollo, cicatrizante).
accion_efecto_planta(hierba_del_pollo, diuretico).
accion_efecto_planta(hinojo, digestivo).
accion_efecto_planta(jalapa, purgante).
accion_efecto_planta(ipecacuana, expectorante).
accion_efecto_planta(jazmin_amarillo, analgesico).
accion_efecto_planta(jazmin_amarillo, antiespasmodico).
accion_efecto_planta(jengibre, estimulante).
accion_efecto_planta(jengibre, digestiva).
accion_efecto_planta(linaza, emoliente).
accion_efecto_planta(linaza, laxante).
accion_efecto_planta(llanten, antiinflamatoria).
accion_efecto_planta(llanten, astringente).
accion_efecto_planta(madreselva, expectorante).
accion_efecto_planta(madreselva, antibacteriana).
accion_efecto_planta(maguey, cicatrizante).
accion_efecto_planta(maguey, antimicrobiana).
accion_efecto_planta(maguey, antipiretica).
accion_efecto_planta(malva, emoliente).
accion_efecto_planta(malva, antiinflamatorio).
accion_efecto_planta(malva, laxante_suave).
accion_efecto_planta(malva, cicatrizante).
accion_efecto_planta(malvavisco, demulcente).
accion_efecto_planta(malvavisco, antitusivo).
accion_efecto_planta(malvavisco, antiacido).
accion_efecto_planta(malvavisco, emoliente_intenso).
accion_efecto_planta(mangle, astringente_intenso).
accion_efecto_planta(mangle, antiviral).
accion_efecto_planta(mangle, hemostatico).
accion_efecto_planta(mangle, cicatrizante).
accion_efecto_planta(mangle, hepatoprotector).
accion_efecto_planta(manzanilla, sedante_suave).
accion_efecto_planta(manzanilla, antiespasmodico).
accion_efecto_planta(manzanilla, antiinflamatorio).
accion_efecto_planta(manzanilla, carminativo).
accion_efecto_planta(manzanilla, emenagogo).
accion_efecto_planta(marrubio, expectorante).
accion_efecto_planta(marrubio, digestiva).
accion_efecto_planta(marihuana, analgesica).
accion_efecto_planta(marihuana, antiinflamatoria).
accion_efecto_planta(mastuerzo, antiinflamatoria).
accion_efecto_planta(mastuerzo, expectorante).
accion_efecto_planta(matarique, desinflamatoria).
accion_efecto_planta(matarique, hipoglucemiante).
accion_efecto_planta(menta, digestiva).
accion_efecto_planta(menta, calmante).
accion_efecto_planta(menta, refrescante).
accion_efecto_planta(nopal, laxante).
accion_efecto_planta(nopal, vermifugo).
accion_efecto_planta(nogal, tonico).
accion_efecto_planta(nogal, antireumatico).
accion_efecto_planta(nogal, nutritivo).
accion_efecto_planta(ortiga, diuretico).
accion_efecto_planta(ortiga, depurativo).
accion_efecto_planta(ortiga, antiinflamatorio).
accion_efecto_planta(oregano, antiespasmodico).
accion_efecto_planta(oregano, expectorante).
accion_efecto_planta(palo_de_flor, febrifugo).
accion_efecto_planta(palo_de_flor, analgesico).
accion_efecto_planta(pasiflora, sedante).
accion_efecto_planta(pasiflora, ansiolitico).
accion_efecto_planta(pericon, digestivo).
accion_efecto_planta(pericon, carminativo).
accion_efecto_planta(pinguica, diuretico).
accion_efecto_planta(pinguica, depurativo).
accion_efecto_planta(prodigiosa, hepatoprotector).
accion_efecto_planta(prodigiosa, desintoxicante).
accion_efecto_planta(pirul, repelente).
accion_efecto_planta(pirul, purgante).
accion_efecto_planta(pulsatilla, calmante).
accion_efecto_planta(pulsatilla, antiespasmodico).
accion_efecto_planta(quebracho, antiasmatico).
accion_efecto_planta(quebracho, descongestivo).
accion_efecto_planta(quina, antiasmatico).
accion_efecto_planta(quina, antimicrobiano).
accion_efecto_planta(regaliz, expectorante).
accion_efecto_planta(regaliz, digestivo).
accion_efecto_planta(retama, diuretico).
accion_efecto_planta(retama, hipotensor).
accion_efecto_planta(ricino, laxante).
accion_efecto_planta(ricino, antiinflamatorio).
accion_efecto_planta(rosal, relajante).
accion_efecto_planta(rosal, digestivo).
accion_efecto_planta(romero, estimulante).
accion_efecto_planta(romero, digestivo).
accion_efecto_planta(ruda, calmante).
accion_efecto_planta(ruda, emenagoga).
accion_efecto_planta(ruda, antiespasmodica).
accion_efecto_planta(ruibarbo, laxante).
accion_efecto_planta(ruibarbo, digestiva).
accion_efecto_planta(ruibarbo, tonica).
accion_efecto_planta(salvia, astringente).
accion_efecto_planta(salvia, digestiva).
accion_efecto_planta(salvia, antiseptica).
accion_efecto_planta(sen, laxante).
accion_efecto_planta(sanguinaria, expectorante).
accion_efecto_planta(sanguinaria, estimulante).
accion_efecto_planta(sanguinaria, antiseptica).
accion_efecto_planta(sensativa, sedante).
accion_efecto_planta(sensativa, relajante).
accion_efecto_planta(simonillo, digestivo).
accion_efecto_planta(simonillo, antiparasitario).
accion_efecto_planta(tamarindo, laxante).
accion_efecto_planta(tamarindo, antipiretico).
accion_efecto_planta(tabachin, expectorante).
accion_efecto_planta(tabachin, antitusivo).
accion_efecto_planta(taray, diuretico).
accion_efecto_planta(taray, antiinflamatorio).
accion_efecto_planta(tila, calmante).
accion_efecto_planta(tila, sedante).
accion_efecto_planta(te_de_milpa, diuretico).
accion_efecto_planta(te_de_milpa, depurativo).
accion_efecto_planta(toloache, analgesico).
accion_efecto_planta(toloache, broncodilatador).
accion_efecto_planta(tronadora, hipoglucemiante).
accion_efecto_planta(tronadora, antipiretico).
accion_efecto_planta(tripa_de_judas, expectorante).
accion_efecto_planta(tripa_de_judas, antiespasmodico).
accion_efecto_planta(uva, antioxidante).
accion_efecto_planta(uva, laxante).

% Categoría: modo_tratamiento
modo_tratamiento(abrojo, tres_veces_dia).
modo_tratamiento(aconito, dos_veces_dia).
modo_tratamiento(adormidera, hasta_tres_veces_al_dia).
modo_tratamiento(aguacate, tres_veces_dia).
modo_tratamiento(ahuhuete, hasta_tres_veces_al_dia).
modo_tratamiento(ajenjo, hasta_tres_veces_al_dia).
modo_tratamiento(ajo, consumo_en_ayunas).
modo_tratamiento(ajo, aplicado_directamente).
modo_tratamiento(albahaca, riccionarse_en_pelo).
modo_tratamiento(alcachofa, tomarlo_con_gusto).
modo_tratamiento(alcanfor, untar_aceite_3_veces_al_dia).
modo_tratamiento(amapola_amarilla, tomar_infusion_1_vez_por_la_noche).
modo_tratamiento(amate, beber_una_taza_cada_8_horas).
modo_tratamiento(berro, tomar_te_dos_veces_dia).
modo_tratamiento(boldo, tomar_te_despues_comidas).
modo_tratamiento(borraja, tomar_te_dos_tres_veces_dia).
modo_tratamiento(bugambilia, tomar_te_tres_veces_dia).
modo_tratamiento(brionia, tomar_te_dosis_bajas).
modo_tratamiento(canela, tomar_te_o_anadir_alimentos).
modo_tratamiento(cedron, tomar_te_dos_tres_veces_dia).
modo_tratamiento(cardo_santo, aplicar_gotas_ojos).
modo_tratamiento(cempasuchil, tomar_te_en_caso_de_parasitos).
modo_tratamiento(chaparro_amargoso, tomar_te_hojas_y_corteza_2_veces_dia).
modo_tratamiento(chicalote, cocimiento_2_veces_al_dia).
modo_tratamiento(chicalote, aplicar_leche_directamente_en_ojos_en_casos_de_carnosidad).
modo_tratamiento(chile, aplicar_hojas_en_pecho_para_el_asma).
modo_tratamiento(chile, aplicar_paños_calientes_con_cocimiento_para_reumatismo).
modo_tratamiento(chichigua, uso_topico_dos_veces_dia).
modo_tratamiento(cilantro, dos_veces_dia).
modo_tratamiento(cocolmeca, una_vez_dia).
modo_tratamiento(cola_de_caballo, una_a_dos_veces_dia).
modo_tratamiento(cuajiote, uso_moderado_no_mas_de_3_dias).
modo_tratamiento(cuasia, una_taza_por_dia).
modo_tratamiento(damiana, de_una_a_dos_tazas_al_dia).
modo_tratamiento(diente_de_leon, te_tomado_en_ayunas).
modo_tratamiento(digitaria, tomar_te_supervision_medica).
modo_tratamiento(doradilla, tomar_te_una_dos_veces_dia).
modo_tratamiento(epazote, tomar_te_una_vez_dia).
modo_tratamiento(enebro, tomar_te_o_lavados_externos).
modo_tratamiento(estafiate, 'una taza después de los alimentos').
modo_tratamiento(eucalipto, 'inhalar vapor 2 veces al día').
modo_tratamiento(fenogreco, 'una taza en ayunas').
modo_tratamiento(genciana, 'media taza antes de las comidas').
modo_tratamiento(geranio, 'una taza antes de dormir').
modo_tratamiento(girasol, 'Té diario o compresas').
modo_tratamiento(colchino, tomar_taza_infusion_dos_veces_al_dia_por_5_dias).
modo_tratamiento(comino, tomar_taza_infusion_tras_comidas).
modo_tratamiento(colpachi, aplicar_infusion_tibia_en_piel_2_veces_al_dia).
modo_tratamiento(cuachalalate, tomar_infusion_3_veces_al_dia_tras_las_comidas).
modo_tratamiento(gingseng, infusion).
modo_tratamiento(gordolobo, 'Té 2-3 veces al día').
modo_tratamiento(grama, 'Té o jarabe').
modo_tratamiento(granado, 'Té o enjuague bucal').
modo_tratamiento(guaco, infusion_o_aplicacion_externa).
modo_tratamiento(guazuma, infusion_colada_y_fria).
modo_tratamiento(guayacan, infusion_5_dias_descanso_5_dias).
modo_tratamiento(hamamelis, infusion_15_minutos).
modo_tratamiento(helenio, infusion_diaria).
modo_tratamiento(hierba_del_pollo, aplicacion_local).
modo_tratamiento(hierba_del_pollo, tomar_te).
modo_tratamiento(hinojo, tomar_te).
modo_tratamiento(jalapa, tomar_en_ayunas).
modo_tratamiento(ipecacuana, tomar_infusion).
modo_tratamiento(jazmin_amarillo, tomar_tintura).
modo_tratamiento(jengibre, uso_interno).
modo_tratamiento(linaza, uso_externo).
modo_tratamiento(linaza, uso_interno).
modo_tratamiento(llanten, uso_externo).
modo_tratamiento(llanten, uso_interno).
modo_tratamiento(madreselva, uso_interno).
modo_tratamiento(maguey, uso_externo).
modo_tratamiento(malva, tomar_infusion_tres_veces_dia).
modo_tratamiento(malva, aplicar_cataplasma_zonas_afectadas).
modo_tratamiento(malva, hacer_gargaras_dos_veces_dia).
modo_tratamiento(malvavisco, tomar_jarabe_4_veces_dia).
modo_tratamiento(malvavisco, infusion_raiz_fria).
modo_tratamiento(malvavisco, compresas_raiz_molida).
modo_tratamiento(mangle, decoccion_50g_corteza_1litro).
modo_tratamiento(mangle, aplicar_polvo_heridas).
modo_tratamiento(mangle, masticar_propagulos_diarrea).
modo_tratamiento(manzanilla, infusion_3g_flores_150ml).
modo_tratamiento(manzanilla, compresas_ojos_inflamados).
modo_tratamiento(manzanilla, aceite_diluido_masajes).
modo_tratamiento(manzanilla, tintura_30gotas_agua).
modo_tratamiento(marrubio, tomar_te_dos_veces_dia).
modo_tratamiento(marihuana, frotaciones_externas_agua_uso).
modo_tratamiento(mastuerzo, tomar_te_o_compresas).
modo_tratamiento(matarique, tomar_te_o_tintura).
modo_tratamiento(menta, tomar_te_dos_tres_veces_dia).
modo_tratamiento(nopal, cataplasma).
modo_tratamiento(nopal, consumo_directo).
modo_tratamiento(nogal, te).
modo_tratamiento(nogal, infusion).
modo_tratamiento(nogal, consumo_directo).
modo_tratamiento(nuez_vomica, te_espanol).
modo_tratamiento(nuez_vomica, hojas_te).
modo_tratamiento(ocote, cataplasma).
modo_tratamiento(ortiga, te).
modo_tratamiento(ortiga, infusion).
modo_tratamiento(ortiga, cataplasma).
modo_tratamiento(ortiga, consumo_directo).
modo_tratamiento(oregano, dos_veces_dia).
modo_tratamiento(palo_de_flor, dos_veces_dia).
modo_tratamiento(pasiflora, antes_de_dormir).
modo_tratamiento(pericon, despues_comidas).
modo_tratamiento(pinguica, tres_veces_dia).
modo_tratamiento(prodigiosa, 'una taza en ayunas y otra antes de cada comida').
modo_tratamiento(pirul, '20 gotas cada 8 horas').
modo_tratamiento(pulsatilla, 'tres a cinco veces al dia').
modo_tratamiento(quebracho, 'una a tres tazas al dia').
modo_tratamiento(quina, 'una a dos tazas al dia').
modo_tratamiento(regaliz, pequenas_cantidades).
modo_tratamiento(retama, con_precaucion).
modo_tratamiento(ricino, uso_externo_o_ocasional).
modo_tratamiento(rosal, dos_tazas_al_dia).
modo_tratamiento(romero, una_taza_manana).
modo_tratamiento(ruda, con_moderacion).
modo_tratamiento(ruibarbo, pequenas_dosis).
modo_tratamiento(salvia, hacer_gargaras_o_beber).
modo_tratamiento(sen, una_taza_diaria_por_una_semana).
modo_tratamiento(sanguinaria, beber_o_hacer_gargaras).
modo_tratamiento(sensativa, noche).
modo_tratamiento(simonillo, en_ayunas).
modo_tratamiento(tamarindo, cuando_se_requiera).
modo_tratamiento(tabachin, tres_veces_dia).
modo_tratamiento(taray, como_agua_de_uso).
modo_tratamiento(tila, una_vez_noche).
modo_tratamiento(te_de_milpa, dos_veces_dia).
modo_tratamiento(toloache, uso_externo_o_dosis_baja).
modo_tratamiento(tronadora, dos_veces_dia).
modo_tratamiento(tripa_de_judas, tres_veces_dia).
modo_tratamiento(uva, consumo_diario).

% Categoría: precaucion_planta

precaucion_planta(abrojo, no_consumir_en_embarazo).
precaucion_planta(aconito, toxicidad_alta).
precaucion_planta(adormidera, dependencia).
precaucion_planta(aguacate, ninguna).
precaucion_planta(ahuhuete, tenesmo_rectal).
precaucion_planta(ajenjo, no_consumir_en_embarazo).
precaucion_planta(ajo, problemas_gastrointestinales).
precaucion_planta(albahaca, reacciones_alergicas).
precaucion_planta(alcachofa, alergias).
precaucion_planta(alcanfor, no_usar_en_exceso).
precaucion_planta(amapola_amarilla, evitar_en_embarazo).
precaucion_planta(amapola_amarilla, evitar_en_lactancia).
precaucion_planta(amate, puede_irritar_la_piel).
precaucion_planta(berro, evitar_dosis_altas_puede_ser_irritante).
precaucion_planta(boldo, evitar_uso_prolongado_embarazo).
precaucion_planta(borraja, evitar_uso_prolongado_alcaloides_toxicos).
precaucion_planta(bugambilia, evitar_en_embarazo_dosis_altas).
precaucion_planta(brionia, toxica_dosis_altas).
precaucion_planta(canela, alergias_coagulacion).
precaucion_planta(cedron, presion_arterial_baja).
precaucion_planta(cardo_santo, contacto_prolongado_ojos).
precaucion_planta(cempasuchil, cocimiento_3_veces_al_dia).
precaucion_planta(chaparro_amargoso, 'En disentería crónica usar como lavativa').
precaucion_planta(chicalote, 'Es un poco tóxica, usar con cuidado').
precaucion_planta(chile, 'No debe darse a niños; puede irritar mucosas, diarrear, inflamar hígado y hemorroides').
precaucion_planta(chichigua, toxica_si_se_ingiere).
precaucion_planta(cilantro, evitar_en_embarazo_excesivo).
precaucion_planta(cocolmeca, no_usar_por_periodos_prolongados).
precaucion_planta(cola_de_caballo, evitar_en_insuficiencia_renal).
precaucion_planta(cuajiote, puede_provocar_gastroenteritis).
precaucion_planta(cuajiote, puede_provocar_rectitis).
precaucion_planta(cuajiote, puede_provocar_enterocolitis).
precaucion_planta(cuasia, puede_provocar_irritacion_gastrica).
precaucion_planta(cuasia, puede_provocar_vomito).
precaucion_planta(cuasia, puede_provocar_estupor).
precaucion_planta(damiana, puede_provocar_insomnio).
precaucion_planta(damiana, puede_provocar_irritacion_gastrica).
precaucion_planta(diente_de_leon, puede_provocar_diarrea).
precaucion_planta(diente_de_leon, puede_provocar_acidez_estomacal).
precaucion_planta(diente_de_leon, puede_provocar_dolor_abdominal).
precaucion_planta(diente_de_leon, puede_provocar_gases).
precaucion_planta(digitaria, toxica_dosis_altas).
precaucion_planta(doradilla, evitar_exceso_irritacion_renal).
precaucion_planta(epazote, evitar_embarazo_ninos).
precaucion_planta(enebro, evitar_problemas_renales_embarazo).
precaucion_planta(estafiate, embarazo).
precaucion_planta(eucalipto, 'no ingerir aceite esencial puro').
precaucion_planta(fenogreco, 'no usar en embarazo').
precaucion_planta(genciana, 'evitar en úlceras gástricas').
precaucion_planta(geranio, 'posible irritación cutánea').
precaucion_planta(girasol, exceso).
precaucion_planta(colchino, dosis_alta_toxica).
precaucion_planta(comino, evitar_en_embarazo).
precaucion_planta(colpachi, evitar_en_lactancia).
precaucion_planta(cuachalalate, no_uso_prolongado).
precaucion_planta(gingseng, hipertension).
precaucion_planta(gingseng, embarazo).
precaucion_planta(gordolobo, infusion).
precaucion_planta(grama, embarazo).
precaucion_planta(granado, estrenimiento).
precaucion_planta(guaco, uso_prolongado).
precaucion_planta(guazuma, alergia_hojas).
precaucion_planta(guayacan, interaccion_medicamentos).
precaucion_planta(hamamelis, hipersensibilidad).
precaucion_planta(helenio, dosis_excesiva).
precaucion_planta(hierba_del_pollo, embarazo).
precaucion_planta(hinojo, embarazo).
precaucion_planta(jazmin_amarillo, problemas_corazon).
precaucion_planta(jazmin_amarillo, problemas_rinones).
precaucion_planta(jengibre, hipertension).
precaucion_planta(linaza, embarazo).
precaucion_planta(malva, no_consumir_en_embarazo).
precaucion_planta(malva, moderar_uso_en_ninos).
precaucion_planta(malva, evitar_si_alergia_malvaceas).
precaucion_planta(mangle, no_uso_prolongado).
precaucion_planta(mangle, evitar_en_embarazo).
precaucion_planta(mangle, maximo_7dias_continuos).
precaucion_planta(mangle, contraindicado_anemia).
precaucion_planta(manzanilla, evitar_alergicos_asteraceas).
precaucion_planta(manzanilla, no_uso_ocular_sin_filtrar).
precaucion_planta(manzanilla, moderar_en_embarazo).
precaucion_planta(manzanilla, no_hervir_flores).
precaucion_planta(marrubio, evitar_exceso_molestias_estomacales).
precaucion_planta(marihuana, supervision_medica_menores_edad).
precaucion_planta(mastuerzo, tuberculosis_avanzada).
precaucion_planta(matarique, diabetes_problemas_renales).
precaucion_planta(menta, reflujo_gastroesofagico).
precaucion_planta(oregano, evitar_dosis_altas).
precaucion_planta(palo_de_flor, no_prolongar_tratamiento).
precaucion_planta(pasiflora, no_combinar_con_alcohol).
precaucion_planta(pericon, evitar_embarazo).
precaucion_planta(pinguica, no_usar_por_periodos_largos).
precaucion_planta(prodigiosa, embarazo).
precaucion_planta(pirul, 'alergia polen').
precaucion_planta(pulsatilla, 'irritante severo en piel').
precaucion_planta(quebracho, lactancia).
precaucion_planta(quina, alergia).
precaucion_planta(regaliz, hipertension).
precaucion_planta(retama, toxicidad).
precaucion_planta(ricino, toxicidad_semillas).
precaucion_planta(rosal, alergia_cutanea).
precaucion_planta(romero, embarazo).
precaucion_planta(ruda, evitar_embarazo).
precaucion_planta(ruibarbo, no_usar_en_embarazo).
precaucion_planta(salvia, no_usar_en_grandes_cantidades).
precaucion_planta(sen, no_uso_prolongado).
precaucion_planta(sanguinaria, toxicidad_alta_si_se_abusa).
precaucion_planta(sensativa, combinacion_sedantes).
precaucion_planta(simonillo, dosis_altas).
precaucion_planta(tamarindo, diarrea).
precaucion_planta(tabachin, embarazo).
precaucion_planta(taray, dosis_excesivas).
precaucion_planta(tila, hipersensibilidad).
precaucion_planta(te_de_milpa, alergia_maiz).
precaucion_planta(toloache, toxicidad_alta).
precaucion_planta(tronadora, hipoglucemia).
precaucion_planta(tripa_de_judas, dosis_excesiva).
precaucion_planta(uva, diabetes).



%Imagenes
iman('abrojo','C:/EL_YERBERITO/assets/abrojo.jpg').
iman('aconito','C:/EL_YERBERITO/assets/aconito.jpg').
iman('adormidera','C:/EL_YERBERITO/assets/Adormidera.jpg').
iman('aguacate','C:/EL_YERBERITO/assets/Aguacate.jpg').
iman('ahuhuete','C:/EL_YERBERITO/assets/ahuhuete.jpg').
iman('ajenjo','C:/EL_YERBERITO/assets/Ajenjo.jpg').
iman('ajo','C:/EL_YERBERITO/assets/ajo.jpeg').
iman('albahaca','C:/EL_YERBERITO/assets/albahaca.jpeg').
iman('alcachofa','C:/EL_YERBERITO/assets/alcachofa.jpeg').
iman('alcanfor','C:/EL_YERBERITO/assets/alcantar.jpg').
iman('amapola_amarilla','C:/EL_YERBERITO/assets/amapolaAmarilla.jpg').
iman('amate','C:/EL_YERBERITO/assets/amate.jpg').
iman('anacahuite','C:/EL_YERBERITO/assets/Anacahuite.jpg').
iman('anis','C:/EL_YERBERITO/assets/anis.jpg').
iman('arnica','C:/EL_YERBERITO/assets/Arnica.png').
iman('barbasco','C:/EL_YERBERITO/assets/Barbasco.jpeg').
iman('belladona','C:/EL_YERBERITO/assets/Belladona.jpeg').
iman('cempasuchil','C:/EL_YERBERITO/assets/Cempasuchil.jpg').
iman('chaparro_amargoso','C:/EL_YERBERITO/assets/Chaparro amargoso.jpg').
iman('chicalote','C:/EL_YERBERITO/assets/Chicalote.jpg').
iman('chichigua','C:/EL_YERBERITO/assets/chichigua.jpg').
iman('chile','C:/EL_YERBERITO/assets/Chile.jpg').
iman('cilantro','C:/EL_YERBERITO/assets/cilantro.jpeg').
iman('cocolmeca','C:/EL_YERBERITO/assets/cocolmeca.jpg').
iman('cola_de_caballo','C:/EL_YERBERITO/assets/colacaballo.jpeg').
iman('colchino','C:/EL_YERBERITO/assets/Colchino.png').
iman('colpachi','C:/EL_YERBERITO/assets/Colpachi.jpg').
iman('comino','C:/EL_YERBERITO/assets/Comino.jpg').
iman('cuachalalate','C:/EL_YERBERITO/assets/Cuachalalate.jpeg').
iman('cuajiote','C:/EL_YERBERITO/assets/Cuajiote.jpg').
iman('cuasia','C:/EL_YERBERITO/assets/Cuasia.jpg').
iman('damiana','C:/EL_YERBERITO/assets/Damiana.jpg').
iman('diente_de_leon','C:/EL_YERBERITO/assets/Diente_De_Leon.jpg').
iman('estafiate','C:/EL_YERBERITO/assets/estafiate.jpg').
iman('eucalipto','C:/EL_YERBERITO/assets/eucalipto.png').
iman('fenogreco','C:/EL_YERBERITO/assets/fenogreco.jpg').
iman('genciana','C:/EL_YERBERITO/assets/genciana.jpg').
iman('geranio','C:/EL_YERBERITO/assets/geranio.jpg').
iman('gingseng','C:/EL_YERBERITO/assets/gingseng.jpg').
iman('girasol','C:/EL_YERBERITO/assets/girasol.jpg').
iman('gordolobo','C:/EL_YERBERITO/assets/gordolobo.jpg').
iman('grama','C:/EL_YERBERITO/assets/grama.jpg').
iman('granado','C:/EL_YERBERITO/assets/granado.jpg').
iman('guaco','C:/EL_YERBERITO/assets/guaco.jpg').
iman('guayacan','C:/EL_YERBERITO/assets/guayacan.jpg').
iman('guazuma','C:/EL_YERBERITO/assets/guazuma.jpeg').
iman('hamamelis','C:/EL_YERBERITO/assets/hamamelis.jpeg').
iman('helenio','C:/EL_YERBERITO/assets/helenio.jpg').
iman('hierba_del_pollo','C:/EL_YERBERITO/assets/Hierba del pollo.jpg').
iman('hinojo','C:/EL_YERBERITO/assets/Hinojo.jpg').
iman('berro','C:/EL_YERBERITO/assets/imgberro.jpg').
iman('boldo','C:/EL_YERBERITO/assets/imgboldo.jpg').
iman('borraja','C:/EL_YERBERITO/assets/imgborraja.jpg').
iman('brionia','C:/EL_YERBERITO/assets/imgbrionia.jpg').
iman('bugambilia','C:/EL_YERBERITO/assets/imgbugambilia.jpg').
iman('canela','C:/EL_YERBERITO/assets/imgcanela.jpg').
iman('cardo_santo','C:/EL_YERBERITO/assets/imgcardo.jpg').
iman('cedron','C:/EL_YERBERITO/assets/imgcedron.jpg').
iman('digitaria','C:/EL_YERBERITO/assets/imgdigitaria.jpg').
iman('doradilla','C:/EL_YERBERITO/assets/imgdoradilla.jpg').
iman('enebro','C:/EL_YERBERITO/assets/imgenebro.jpg').
iman('epazote','C:/EL_YERBERITO/assets/imgepazote.jpg').
iman('marihuana','C:/EL_YERBERITO/assets/imgmarihuana.jpg').
iman('marrubio','C:/EL_YERBERITO/assets/imgmarrubio.jpg').
iman('mastuerzo','C:/EL_YERBERITO/assets/imgmastuerzo.jpg').
iman('matarique','C:/EL_YERBERITO/assets/imgmatarique.jpg').
iman('menta','C:/EL_YERBERITO/assets/imgmenta.jpg').
iman('ipecacuana','C:/EL_YERBERITO/assets/Ipecacuana.jpg').
iman('jazmin_amarillo','C:/EL_YERBERITO/assets/Jazmin Amarillo.jpg').
iman('jengibre','C:/EL_YERBERITO/assets/Jengibre.jpg').
iman('linaza','C:/EL_YERBERITO/assets/Linaza.jpg').
iman('llanten','C:/EL_YERBERITO/assets/Llanten.jpg').
iman('madreselva','C:/EL_YERBERITO/assets/Madreselva.jpg').
iman('maguey','C:/EL_YERBERITO/assets/Maguey.jpg').
iman('maiz','C:/EL_YERBERITO/assets/maíz.jpeg').
iman('malva','C:/EL_YERBERITO/assets/malva.jpeg').
iman('mangle','C:/EL_YERBERITO/assets/mangle.jpg').
iman('manzanilla','C:/EL_YERBERITO/assets/manzanilla.jpeg').
iman('malvavisco','C:/EL_YERBERITO/assets/mlavavisco.jpg').
iman('nogal','C:/EL_YERBERITO/assets/nogal.jpg').
iman('ocote','C:/EL_YERBERITO/assets/Ocote.jpg').
iman('oregano','C:/EL_YERBERITO/assets/oregano.jpeg').
iman('ortiga','C:/EL_YERBERITO/assets/ortiga.jpg').
iman('palo_de_flor','C:/EL_YERBERITO/assets/palo_de_flor.jpeg').
iman('pasiflora','C:/EL_YERBERITO/assets/pasiflora.jpg').
iman('pericon','C:/EL_YERBERITO/assets/pericon.jpg').
iman('pinguica','C:/EL_YERBERITO/assets/pinguica.jpeg').
iman('pirul','C:/EL_YERBERITO/assets/pirul.jpg').
iman('prodigiosa','C:/EL_YERBERITO/assets/prodigiosa.jpg').
iman('pulsatilla','C:/EL_YERBERITO/assets/pulsatilla.jpg').
iman('quebracho','C:/EL_YERBERITO/assets/quebracho.jpg').
iman('quina','C:/EL_YERBERITO/assets/quina.jpg').
iman('regaliz','C:/EL_YERBERITO/assets/regaliz.jpg').
iman('retama','C:/EL_YERBERITO/assets/retama.jpg').
iman('ricino','C:/EL_YERBERITO/assets/ricino.jpg').
iman('romero','C:/EL_YERBERITO/assets/romero.jpg').
iman('rosal','C:/EL_YERBERITO/assets/rosal.jpg').
iman('ruda','C:/EL_YERBERITO/assets/Ruda.jpg').
iman('ruibarbo','C:/EL_YERBERITO/assets/Ruibarbo.jpg').
iman('salvia','C:/EL_YERBERITO/assets/Salvia.jpg').
iman('sanguinaria','C:/EL_YERBERITO/assets/Sanguinaria.jpg').
iman('sen','C:/EL_YERBERITO/assets/Sen.jpg').
iman('sensitiva','C:/EL_YERBERITO/assets/Sensitiva.jpeg').
iman('simonillo','C:/EL_YERBERITO/assets/Simonillo.jpg').
iman('tabachin','C:/EL_YERBERITO/assets/Tabachin.jpg').
iman('tamarindo','C:/EL_YERBERITO/assets/Tamarindo.jpeg').
iman('taray','C:/EL_YERBERITO/assets/Taray.jpg').
iman('te_de_milpa','C:/EL_YERBERITO/assets/te_de_milpa.jpeg').
iman('tila','C:/EL_YERBERITO/assets/tila.jpeg').
iman('toloache','C:/EL_YERBERITO/assets/toloache.jpeg').
iman('tripa_de_judas','C:/EL_YERBERITO/assets/tripa_de_judas.jpeg').
iman('tronadora','C:/EL_YERBERITO/assets/tronadora.jpeg').
iman('uva','C:/EL_YERBERITO/assets/uva.jpeg').

descripcionEfecto('Aumenta la resistencia del organismo al estrés, la fatiga y las enfermedades', adaptogeno).
descripcionEfecto('Proporciona nutrientes o complementa la dieta', alimenticio).
descripcionEfecto('Alivia o reduce el dolor sin pérdida de conciencia', analgesico).
descripcionEfecto('Reduce la ansiedad y la tensión nerviosa', ansiolitico).
descripcionEfecto('Neutraliza el ácido gástrico, alivia la acidez', antiacido).
descripcionEfecto('Alivia síntomas de artritis o inflamación articular', antiartritico).
descripcionEfecto('Ayuda a controlar o prevenir ataques de asma', antiasmatico).
descripcionEfecto('Mata o inhibe el crecimiento de bacterias', antibacteriano).
descripcionEfecto('Previene infecciones al inhibir microorganismos patógenos', antiseptico).
descripcionEfecto('Relaja músculos y calma espasmos o calambres', antiespasmodico).
descripcionEfecto('Reduce inflamaciones en tejidos o articulaciones', antiinflamatorio).
descripcionEfecto('Actúa contra microbios (bacterias, hongos, virus)', antimicrobiano).
descripcionEfecto('Protege células del daño por radicales libres', antioxidante).
descripcionEfecto('Combate parásitos internos o externos', antiparasitario).
descripcionEfecto('Reduce la fiebre', antipiretico).
descripcionEfecto('Suprime o alivia la tos', antitusivo).
descripcionEfecto('Inhibe la replicación de virus', antiviral).
descripcionEfecto('Contrae tejidos, reduce secreciones o sangrados', astringente).
descripcionEfecto('Alivia irritaciones en vías respiratorias o piel', balsamico).
descripcionEfecto('Dilata los bronquios, mejora flujo de aire', broncodilatador).
descripcionEfecto('Tranquiliza el sistema nervioso o irritaciones locales', calmante).
descripcionEfecto('Fortalece o regula la función cardíaca', cardiotonico).
descripcionEfecto('Facilita la expulsión de gases intestinales', carminativo).
descripcionEfecto('Acelera la curación de heridas o úlceras', cicatrizante).
descripcionEfecto('Estimula la producción o secreción de bilis', colagogo).
descripcionEfecto('Purifica la sangre o elimina toxinas', depurativo).
descripcionEfecto('Protege tejidos irritados (mucosas, piel)', demulcente).
descripcionEfecto('Alivia congestión nasal o respiratoria', descongestionante).
descripcionEfecto('Disminuye hinchazón o inflamación', desinflamatorio).
descripcionEfecto('Ayuda a eliminar sustancias tóxicas del organismo', desintoxicante).
descripcionEfecto('Expulsa o mata parásitos intestinales', desparasitante).
descripcionEfecto('Facilita la digestión o alivia molestias gástricas', digestivo).
descripcionEfecto('Aumenta la producción y eliminación de orina', diuretico).
descripcionEfecto('Estimula o regula el flujo menstrual', emenagogo).
descripcionEfecto('Suaviza e hidrata la piel o mucosas', emoliente).
descripcionEfecto('Aumenta energía o actividad fisiológica', estimulante).
descripcionEfecto('Facilita la expulsión de moco respiratorio', expectorante).
descripcionEfecto('Reduce la fiebre', febrifugo).
descripcionEfecto('Detiene hemorragias o sangrados', hemostatico).
descripcionEfecto('Protege el hígado de daños o toxinas', hepatoprotector).
descripcionEfecto('Induce sueño o somnolencia', hipnotico).
descripcionEfecto('Reduce niveles de glucosa en sangre', hipoglucemiante).
descripcionEfecto('Reduce niveles de lípidos en sangre', hipolipemiante).
descripcionEfecto('Disminuye la presión arterial', hipotensor).
descripcionEfecto('Causa irritación local (usado con precaución)', irritante).
descripcionEfecto('Estimula la evacuación intestinal', laxante).
descripcionEfecto('Aporta nutrientes esenciales', nutritivo).
descripcionEfecto('Usado para tratar afecciones oculares', oftalmico).
descripcionEfecto('Mata o repele plagas (insectos, hongos)', pesticida).
descripcionEfecto('Laxante fuerte que provoca evacuación intensa', purgante).
descripcionEfecto('Produce sensación de frescor en piel o mucosas', refrescante).
descripcionEfecto('Reduce tensión muscular o nerviosa', relajante).
descripcionEfecto('Repone minerales en huesos o tejidos', remineralizante).
descripcionEfecto('Aleja insectos o parásitos', repelente).
descripcionEfecto('Aumenta flujo sanguíneo local (enrojecimiento)', rubefaciente).
descripcionEfecto('Calma el sistema nervioso, induce relajación', sedante).
descripcionEfecto('Estimula la sudoración', sudorifico).
descripcionEfecto('Fortalece o revitaliza órganos o sistemas', tonico).
descripcionEfecto('Fortalece cabello y cuero cabelludo', tonico_capilar).
descripcionEfecto('Expulsa lombrices intestinales', vermifugo).
