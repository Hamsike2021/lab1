%% Creating pitches
pitchDur = 1;
fs = 8000;
timeArray = 0 : 1/fs: pitchDur;
pitchA = 1* sin(2* pi *pitchFreq(1)*timeArray  + 0);
pitchB = 1* sin(2* pi *pitchFreq(2)*timeArray  + 0);
pitchC = 1* sin(2* pi *pitchFreq(3)*timeArray  + 0);
pitchD = 1* sin(2* pi *pitchFreq(4)*timeArray  + 0);
pitchF = 1* sin(2* pi *pitchFreq(5)*timeArray  + 0);
pitchE = 1* sin(2* pi *pitchFreq(6)*timeArray  + 0);
pitchG = 1* sin(2* pi *pitchFreq(7)*timeArray  + 0);
%% Read the file with pitches
fid = fopen('song.txt');
song = fscanf(fid, '%s');
whos song;
%% Create the song and the file.wav
singsong = [];
for i = 1: length(song)
    if song(i) == 'F'
        singsong = [ singsong pitchF ];
    end
    if song(i) == 'C'
        singsong = [ singsong pitchC ];
    end
    if song(i) == 'E'
        singsong = [ singsong pitchE ];
    end
end
sound(singsong, fs)
