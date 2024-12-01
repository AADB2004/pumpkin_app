close all; clear all; %#ok<CLALL>

%gets an instance of a template app
pumpkinapp = RealTimeApp;


pumpkinapp.GridScale = [10, 10];

%gets the objects 
pumpkin = Pumpkin;
candle = Candle; 

%call the key press and main loop functions
pumpkinapp.KeyPressFcn = @(input) moveObject(input, pumpkin);
pumpkinapp.MainLoopFcn = @() mainLoop(pumpkinapp, pumpkin, candle);

%initialises the app 
pumpkinapp.initialise;

%calls the draw method in the pumpkin object which defines the object 
%property 'Graphic' as a plot of the pumpkin, which also plots the pumpkin
pumpkin.draw;

%defines the initial position of the candle as a random integer between 1 
%and 10
candleInitialPositionUnrounded = randi([-9, 9],1,2);
candleInitialPosition = round(candleInitialPositionUnrounded,1);
candle.Position = candleInitialPosition;

%draws in the candle 
candle.draw

%starts the app 
pumpkinapp.start;

%defines the moveObj function 
function moveObject(input, pumpkin)

        switch input.Key
            case {'a'}
                pumpkin.Position(1) = pumpkin.Position(1) - pumpkin.Speed;
            case {'d'}
                pumpkin.Position(1) = pumpkin.Position(1) + pumpkin.Speed;
            case {'w'}
                pumpkin.Position(2) = pumpkin.Position(2) + pumpkin.Speed;
            case {'s'}
                pumpkin.Position(2) = pumpkin.Position(2) - pumpkin.Speed;     
        end    
        pumpkin.Position = round(pumpkin.Position/pumpkin.Speed)*pumpkin.Speed;
end



function mainLoop(~, pumpkin, candle)
    pumpkin.updatePosition

    %calls the newCandle function wich moves the candle to a new location
    %on the grid
    newCandle(pumpkin, candle)

    candle.updatePosition
end


