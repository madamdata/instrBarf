(
Server.local.options.blockSize_(256);
Server.local.options.sampleRate_(44100);
)
s.boot;

Ndef('aa', {Saw.ar([135, 140, 153, 165, 173, 283, 192, 231],0.2, 0.2).splay}).play;
Ndef('aa', {Saw.ar([132, 145, 152, 166, 174, 284, 193, 230],0.2, 0.2).splay}).play;
Ndef('aa', {Saw.ar([131, 144, 151, 267, 83, 185, 194, 33],0.2, 0.2).splay}).play;


Ndef('bb', {Saw.ar([50, 54]*Ndef('cc'), 0.2, 0.3).splay;}).play;
Ndef('cc', {Pulse.ar(2.9*Mix(Ndef('bb'))).range(1,8.3)});
Ndef('bb').fadeTime_(5);
Ndef('aa').fadeTime_(3);
Ndef('aa').fadeTime_(10);
Ndef('aa').stop;
Ndef.clear;
s.record
s.stopRecording
s.quit;
