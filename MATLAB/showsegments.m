function foo(fname)
% /*****************************************************************
%  *
%  * This file is part of the People2D project
%  *
%  * People2D Copyright (c) 2011 Luciano Spinello
%  *
%  * This software is licensed under the "Creative Commons 
%  * License (Attribution-NonCommercial-ShareAlike 3.0)" 
%  * and is copyrighted by Luciano Spinello
%  * 
%  * Further information on this license can be found at:
%  * http://creativecommons.org/licenses/by-nc-sa/3.0/
%  * 
%  * People2D is distributed in the hope that it will be useful,
%  * but WITHOUT ANY WARRANTY; without even the implied 
%  * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
%  * PURPOSE.  
%  *
%  *****************************************************************/

close all
% fname = '../segments.seg'
data = load(fname);

sz = size(data,1);
lnsz = size(data,2);
figure(1);

for i=1:sz,
    grid on, hold on
    labelsegs = data(i,4:3:lnsz);
    ulbl = unique ( labelsegs );
    X = data(i,2:3:lnsz);
    Y = data(i,3:3:lnsz);

    for u=1:length(ulbl),
        label_idx = ( (labelsegs == u) ); 
        plot( X(label_idx), Y(label_idx), '.', 'Color', [rand(),rand(),rand()]);
    end
    axis([0 10 -5 5]);
    pause (0.001)
%     pause
    xlabel('x [m]');
    ylabel('y [m]');    
    clf
end