s.boot
{45.do{"It comes back".post;0.9.wait}}.fork;
Ndef('aa').play.fadeTime_(8);
Ndef('aa', {Saw.ar([100,102,104,103,105,106], 0.2).splay}).play;
Ndef('aa', {Saw.ar([102,101,105,102,106,102], 0.2).splay}).play;
Ndef('aa', {Saw.ar([202,201,305,202,306,202], 0.2).splay}).play;
Ndef('aa', {LFTri.ar([202,201,305,202,306,202], mul:0.2).splay}).play;


Ndef('bb').play.fadeTime_(5);
Ndef('cc').play.fadeTime_(5);
Ndef('bb', {Saw.ar([20,22] *  Ndef('cc'), 0.5).splay}).play;
Ndef('cc', {Pulse.ar( Ndef('bb')*15, 0.8).range(2,5)});
Ndef('cc').end;
{47.do{"It happens again".post;0.8.wait;}}.fork;


Ndef.clear;
s.record;
s.stopRecording
