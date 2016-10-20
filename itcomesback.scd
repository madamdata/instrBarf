s.boot;
{9.do{"It comes back.".post;0.6.wait;}}.fork;

Ndef('aa', {Saw.ar([500,510,520,530,540], 0.1).splay}).play;
Ndef(\aa).fadeTime_(5);

Ndef('bb').play.fadeTime_(5);
Ndef('bb', {|freq = 4| LFNoise0.ar([700,800]) * 0.1 * LFPulse.ar(freq).range(0,1)});
Ndef('bb').mold(2);
Tdef(\bbCtrl, {inf.do{|i|Ndef('bb').set(\freq, [12, 14, 5, 1, 6, 3, 4, 8, 16].wrapAt(i));0.5.wait}}).play;

{25.do{"It is the same bullet".postln; 0.8.wait}}.fork;
"It is the same bullet"



Ndef('aa', {Saw.ar(([50,53,57,60,64]-2).midicps, 0.1).splay}).play;
Ndef('aa', {Saw.ar(([50,53,57,60,64]-0).midicps, 0.1).splay}).play;
Ndef('aa', {Saw.ar(([50,53,57,60,64]+10).midicps, 0.1).splay}).play;
Ndef('aa', {Saw.ar(([50,53,57,60,64]+12).midicps, 0.1).splay}).play;

{45.do{"Before stars were stars".postln; 0.4.wait}}.fork;

Ndef('aa').end
Ndef('bb').end
s.quit;

"thank you."
"code, music and poetry by madam data"
