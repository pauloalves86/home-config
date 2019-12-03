# Defined in - @ line 0
function ls --description 'alias ls=ls -lhAv --group-directories-first --color=always'
	command ls -lhAv --group-directories-first --color=always $argv;
end
