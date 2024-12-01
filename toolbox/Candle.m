classdef Candle < handle
    %CANDLE
    %candle starts in random location and moves to random location when the
    %pumpkin comsumes it

    properties
        Position = [0.5, 0.5];
        Colour = [0 0 1];
        Graphic 
    end 

    methods
        function obj = Candle()
            %creates an instance of this class 
        end


        function draw(obj)
            %METHOD1 defines the graphics property of the object to a plot
            %of its x position and y position.
            obj.Graphic = plot(obj.Position(1),obj.Position(2),'o','MarkerFaceColor',obj.Colour);
        end

        function updatePosition(obj)
            set(obj.Graphic,'XData',obj.Position(1),'YData',obj.Position(2))
        end
    end
end
   