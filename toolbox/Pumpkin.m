classdef Pumpkin < handle
    %PUMPKIN
    %pumpkin changes colours and moves 

  
    
    properties
        Position = [0.5, 0.5]
        Colour = [0 1 0];
        Graphic 
        Speed = 0.5
        Shape = imread('pumpkinImage.jpg');
    end

    
    methods
        function obj = Pumpkin()
            %PUMPKIN Construct an instance of this class
            %   Detailed explanation goes here
        end
        
        function draw(obj)
            %METHOD1 defines the graphic property of the pumpkin as a plot
            %of its position 
            obj.Graphic = plot(obj.Position(1),obj.Position(2),'o','MarkerFaceColor',obj.Colour);
            
           
        end

        function updatePosition(obj)
            %METHOD2 defines function updatePosition which will change the
            %set the obj.Graphic property to the current values of position
            set(obj.Graphic,'XData',obj.Position(1),'YData',obj.Position(2))
        end
    end
end

%% scr2@hw.ac.uk