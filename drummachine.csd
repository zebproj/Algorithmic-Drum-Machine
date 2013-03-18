<CsoundSynthesizer>
<CsOptions>
;-o superglitch.aiff 
-odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 10
nchnls = 2
0dbfs = 1
instr 1
	iamp = .2
	ivel = p4
	ilen filelen "snare9.wav"
	p3 = ilen
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "snare9.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
instr 2
	iamp = .3
	ivel = p4
	ilen filelen "kick3.wav"
	p3 = ilen 
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "kick3.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
instr 3
	iamp = .3
	ivel = p4
	ilen filelen "hat9.wav"
	p3 = ilen 
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "hat9.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
</CsInstruments>
<CsScore>
#include "drumscore.sco"

;i1 0 1 1 1 1 1

</CsScore>
</CsoundSynthesizer>
