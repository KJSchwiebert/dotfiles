% For those in the terminal--man is just an alias for help.

function man(varargin)

evalString = 'builtin(''help'',';
for i = 1:length(varargin)
    evalString = [evalString '''' varargin{i} ''',']; %#ok<AGROW>
end
evalString(end) = ')';

evalin('caller',evalString);

