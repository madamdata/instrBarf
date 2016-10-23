(
Server.local.options.blockSize_(128);
Server.local.options.sampleRate_(48000);
)
(s.boot;s.latency_(0.03);)
s.quit;
Ndef('aa', {|freq=70, t_gate=0| Saw.ar([freq,freq+10,freq+20,freq+40,freq+50], 0.2).splay *EnvGen.ar(Env.perc,t_gate)}).play;
Ndef('dd', {CombL.ar(Ndef('aa'), 2, [0.5,0.47], 9)}).play;
Ndef('dd').mold(2);
Ndef('aa').set(\freq, 10)
Ndef('aa', {Saw.ar([133, 143, 153, 163, 173, 283, 193, 231],0.2, 0.2).splay}).play;
Ndef('aa', {Saw.ar([232, 245, 252, 266, 274, 284, 293, 230],0.2, 0.2).splay}).play;
Ndef('aa', {Saw.ar([131, 144, 151, 267, 83, 185, 194, 33],0.2, 0.2).splay}).play;


Ndef('bb', {Saw.ar([50, 54]*Ndef('cc'), 0.2, 0.3).splay;}).play;
Ndef('cc', {Pulse.ar(1.9*Mix(Ndef('bb'))).range(1,8.3)});
Ndef('bb').fadeTime_(5);
Ndef('aa').fadeTime_(3);
Ndef('aa').fadeTime_(10);
Ndef('aa').stop;
Ndef.clear;
s.record
s.stopRecording
s.quit;

a = {|freq=440| Saw.ar([freq, freq+2], 0.2)}.play;
a.set(\freq, 300)
MIDIClient.init;MIDIIn.connectAll

(
MIDIdef.noteOn(\hello, {|vel, note|
	[note, vel].postln;
	Ndef(\aa).set(\freq, note.midicps);
	Ndef(\aa).set(\t_gate, 1);
});
)
a.free;
