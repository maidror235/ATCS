function [ routeXY ] = XY_Route( waynd,route1,counting,car_no,n,n1 )
%XY_ROUTE Summary of this function goes here
% 2017.6.23 (c) Ofer Keren, ofer293@gmail.com; Itay Levitan, itay007@gmail.com
                

z=1;
for i=1:(size(route1,2)-1)
    for j=1:size(waynd,2)
        if (counting(1,j)~=0 && counting(2,j)~=0)
            if (route1(i) == waynd{1,j}(2,counting(1,j)) && route1(i+1) == waynd{1,j}(2,counting(2,j))) 
%             if route1(i+1) == waynd{1,j}(2,counting(2,j))
%                 if (car_no <= n-n1) 
                    routeXY(1,z:z+counting(2,j)-1)= waynd{1,j}(3,1:counting(2,j));  %% X cord
                    routeXY(2,z:z+counting(2,j)-1)= waynd{1,j}(4,1:counting(2,j)); %% Y cord
                    z=z+counting(2,j)-1;
%                 else
            elseif (route1(i+1) == waynd{1,j}(2,counting(1,j)) && route1(i) == waynd{1,j}(2,counting(2,j)))
                
                    routeXY(1,z:z+counting(2,j)-1)= fliplr(waynd{1,j}(3,1:counting(2,j)));  %% X cord
                    routeXY(2,z:z+counting(2,j)-1)= fliplr(waynd{1,j}(4,1:counting(2,j))); %% Y cord
                    z=z+counting(2,j)-1;
%                     routeXY(1,z:z+counting(2,j)-1)= waynd{1,j}(3,1:counting(2,j));  %% X cord
%                     routeXY(2,z:z+counting(2,j)-1)= waynd{1,j}(4,1:counting(2,j)); %% Y cord
%                     
%                     routeXY(1,z+counting(2,j))= waynd{1,j}(3,counting(2,j));  %% X cord
%                     routeXY(2,z+counting(2,j))= waynd{1,j}(4,counting(2,j));
%                     z=z+counting(2,j)+1;
%                 end
            end
            end
        end
    end
end
% end

