function [f, beta_W,numD] = truthGen(problemClass, varargin)
   if nargin == 1
       [f, beta_W,numD]=eval('caller',[problemClass, '()']);
   else
        [f, beta_W,numD]=eval('caller',[problemClass, '(varargin{1},varargin{2},varargin{3})']);
   end
end

