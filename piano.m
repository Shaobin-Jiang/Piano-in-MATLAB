function piano
[hFigure,y,Fs]=Init;
audioPlayerCell=ConstructAudioPlayer(y,Fs);%audioPlayerCell{39} is standard C.
hFigure.KeyPressFcn=@KeyPressFunction;
hFigure.KeyReleaseFcn=@KeyReleaseFunction;
key=[];

    function [hFigure,y,Fs]=Init
        load standardNote.mat;
        screensize=get(0,'screensize');
        hFigure=figure('position',[(screensize(3)-1196)/2 (screensize(4)-200)/2 1195 200],'toolbar','none','menubar','none','numbertitle','off','name','Piano Simulation');
        hAxes=axes('parent',hFigure,'units','pixels','position',[0 0 1195 200]);
        axis off;
        axis([0 1195 0 200]);
        imgMat=ones(200,1195,3);
        imshow(imgMat,'parent',hAxes);
        hold on;
        for ii=1:52
            fill([23*(ii-1) 23*(ii-1) 23*ii 23*ii],[200 200 200 200]-[0 150 150 0],'w');
        end
        for ii=0:6
            fill([64+ii*161 64+ii*161 74+ii*161 74+ii*161],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
            fill([87+ii*161 87+ii*161 97+ii*161 97+ii*161],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
            fill([133+ii*161 133+ii*161 143+ii*161 143+ii*161],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
            fill([156+ii*161 156+ii*161 166+ii*161 166+ii*161],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
            fill([179+ii*161 179+ii*161 189+ii*161 189+ii*161],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
        end
        fill([18 18 28 28],[200 200 200 200]-[51 150 150 51],'k','edgealpha',0);
    end

    function KeyPressFunction(~,~,~)
        currentCharacter=get(hFigure,'currentcharacter');
        if ~any(currentCharacter==key)
            key=[key currentCharacter];
            StartPlaying(key(end));
        end
    end

    function KeyReleaseFunction(~,~)
        currentCharacter=get(hFigure,'currentcharacter');
        StopPlaying(currentCharacter);
        key=strrep(key,currentCharacter,'');
    end

    function audioPlayerCell=ConstructAudioPlayer(y,Fs)
        for id=1:88
            audioPlayerCell{id}=audioplayer(y(20000:end),Fs*2^(-19/6+1/12*(id-1)));
        end
    end

    function StartPlaying(note)
        if isempty(note)
            return;
        end
        switch note
            case 'z'
                play(audioPlayerCell{29});Deepen(29);
            case 'x'
                play(audioPlayerCell{30});Deepen(30);
            case 'c'
                play(audioPlayerCell{31});Deepen(31);
            case 'v'
                play(audioPlayerCell{32});Deepen(32);
            case 'b'
                play(audioPlayerCell{33});Deepen(33);
            case 'n'
                play(audioPlayerCell{34});Deepen(34);
            case 'm'
                play(audioPlayerCell{35});Deepen(35);
            case char(44)
                play(audioPlayerCell{36});Deepen(36);
            case char(46)
                play(audioPlayerCell{37});Deepen(37);
            case char(47)
                play(audioPlayerCell{38});Deepen(38);
            case '1'
                play(audioPlayerCell{39});Deepen(39);
            case '2'
                play(audioPlayerCell{40});Deepen(40);
            case '3'
                play(audioPlayerCell{41});Deepen(41);
            case '4'
                play(audioPlayerCell{42});Deepen(42);
            case '5'
                play(audioPlayerCell{43});Deepen(43);
            case '6'
                play(audioPlayerCell{44});Deepen(44);
            case '7'
                play(audioPlayerCell{45});Deepen(45);
            case '8'
                play(audioPlayerCell{46});Deepen(46);
            case '9'
                play(audioPlayerCell{47});Deepen(47);
            case '0'
                play(audioPlayerCell{48});Deepen(48);
            case char(45)
                play(audioPlayerCell{49});Deepen(49);
            case char(61)
                play(audioPlayerCell{50});Deepen(50);
            case 'q'
                play(audioPlayerCell{51});Deepen(51);
            case 'w'
                play(audioPlayerCell{52});Deepen(52);
            case 'e'
                play(audioPlayerCell{53});Deepen(53);
            case 'r'
                play(audioPlayerCell{54});Deepen(54);
            case 't'
                play(audioPlayerCell{55});Deepen(55);
            case 'y'
                play(audioPlayerCell{56});Deepen(56);
            case 'u'
                play(audioPlayerCell{57});Deepen(57);
            case 'i'
                play(audioPlayerCell{58});Deepen(58);
            case 'o'
                play(audioPlayerCell{59});Deepen(59);
            case 'p'
                play(audioPlayerCell{60});Deepen(60);
            case char(91)
                play(audioPlayerCell{61});Deepen(61);
            case char(93)
                play(audioPlayerCell{62});Deepen(62);
        end
    end

    function StopPlaying(note)
        switch note
            case 'z'
                stop(audioPlayerCell{29});Undeepen(29);
            case 'x'
                stop(audioPlayerCell{30});Undeepen(30);
            case 'c'
                stop(audioPlayerCell{31});Undeepen(31);
            case 'v'
                stop(audioPlayerCell{32});Undeepen(32);
            case 'b'
                stop(audioPlayerCell{33});Undeepen(33);
            case 'n'
                stop(audioPlayerCell{34});Undeepen(34);
            case 'm'
                stop(audioPlayerCell{35});Undeepen(35);
            case char(44)
                stop(audioPlayerCell{36});Undeepen(36);
            case char(46)
                stop(audioPlayerCell{37});Undeepen(37);
            case char(47)
                stop(audioPlayerCell{38});Undeepen(38);
            case '1'
                stop(audioPlayerCell{39});Undeepen(39);
            case '2'
                stop(audioPlayerCell{40});Undeepen(40);
            case '3'
                stop(audioPlayerCell{41});Undeepen(41);
            case '4'
                stop(audioPlayerCell{42});Undeepen(42);
            case '5'
                stop(audioPlayerCell{43});Undeepen(43);
            case '6'
                stop(audioPlayerCell{44});Undeepen(44);
            case '7'
                stop(audioPlayerCell{45});Undeepen(45);
            case '8'
                stop(audioPlayerCell{46});Undeepen(46);
            case '9'
                stop(audioPlayerCell{47});Undeepen(47);
            case '0'
                stop(audioPlayerCell{48});Undeepen(48);
            case char(45)
                stop(audioPlayerCell{49});Undeepen(49);
            case char(61)
                stop(audioPlayerCell{50});Undeepen(50);
            case 'q'
                stop(audioPlayerCell{51});Undeepen(51);
            case 'w'
                stop(audioPlayerCell{52});Undeepen(52);
            case 'e'
                stop(audioPlayerCell{53});Undeepen(53);
            case 'r'
                stop(audioPlayerCell{54});Undeepen(54);
            case 't'
                stop(audioPlayerCell{55});Undeepen(55);
            case 'y'
                stop(audioPlayerCell{56});Undeepen(56);
            case 'u'
                stop(audioPlayerCell{57});Undeepen(57);
            case 'i'
                stop(audioPlayerCell{58});Undeepen(58);
            case 'o'
                stop(audioPlayerCell{59});Undeepen(59);
            case 'p'
                stop(audioPlayerCell{60});Undeepen(60);
            case char(91)
                stop(audioPlayerCell{61});Undeepen(61);
            case char(93)
                stop(audioPlayerCell{62});Undeepen(62);
        end
    end

    function Deepen(id)
        pos=location(id);
        fill([pos-5 pos-5 pos+5 pos+5],[49 44 44 49],'r','edgealpha',0);
    end

    function Undeepen(id)
        pos=location(id);
        fill([pos-5 pos-5 pos+5 pos+5],[49 44 44 49],'w','edgealpha',0);
    end

    function pos=location(id)
        iPos=mod((id-27),12);
        oPos=floor((id-27)/12);
        temp=[11.5 23 34.5 46 57.5 80.5 92 103.5 115 126.5 138 149.5];
        pos=oPos*161+368+temp(iPos+1);
    end

end