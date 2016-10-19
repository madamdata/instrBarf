'It comes back'.post
s.boot;

a = 'It is the same bullet ';

Ndef('aa', {Splay.ar(LFPar.ar([173, 212, 191, 166, 133, 143, 135, 146], 0.07))}).play
Ndef('aa', {Splay.ar(LFTri.ar([173, 212, 191, 166, 133, 143, 135, 146], 0.07))}).play
Ndef('aa', {Splay.ar(Saw.ar([113, 115, 125, 125, 182, 167, 137, 26], 0.17))}).play
Ndef('aa', {Splay.ar(Saw.ar([117, 117, 125, 125, 181, 162, 131, 22], 0.17))}).play
Ndef('aa', {Splay.ar(Saw.ar([113, 115, 125, 125, 182, 167, 137, 26], 0.17))}).play
Ndef('aa', {Splay.ar(Saw.ar([113, 182, 151, 126, 183, 163, 135, 16]*0.2, 0.17))}).play
Ndef(\aa).fadeTime_(10);

(
Tdef(\again, {
	185.do({|i|
		(i+1).do{[a, 'It happens again. '].wchoose([0.26, 0.74]).post}; 
		''.postln;
		0.18.wait;

	});
}).play;
)
s.quit;
