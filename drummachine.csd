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
	ilen filelen "examples/snare.wav"
	p3 = ilen
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "examples/snare.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
instr 2
	iamp = .3
	ivel = p4
	ilen filelen "examples/kick.wav"
	p3 = ilen 
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "examples/kick.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
instr 3
	iamp = .3
	ivel = p4
	ilen filelen "examples/hat.wav"
	p3 = ilen 
	ipanL = p6
	ipanR = p7
	a1,a1 diskin2 "examples/hat.wav", p5, 0, 1
	outs a1*iamp*ivel*ipanL, a1*iamp*ivel*ipanR
endin
</CsInstruments>
<CsScore>
#include "examples/newdrumscore.sco"

;i1 0 1 1 1 1 1

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>0</x>
 <y>61</y>
 <width>252</width>
 <height>479</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>231</r>
  <g>46</g>
  <b>255</b>
 </bgcolor>
 <bsbObject version="2" type="BSBVSlider">
  <objectName>slider1</objectName>
  <x>5</x>
  <y>5</y>
  <width>20</width>
  <height>100</height>
  <uuid>{8917d9fe-55a7-495f-a97e-cd653bdfe657}</uuid>
  <visible>true</visible>
  <midichan>0</midichan>
  <midicc>-3</midicc>
  <minimum>0.00000000</minimum>
  <maximum>1.00000000</maximum>
  <value>0.00000000</value>
  <mode>lin</mode>
  <mouseControl act="jump">continuous</mouseControl>
  <resolution>-1.00000000</resolution>
  <randomizable group="0">false</randomizable>
 </bsbObject>
</bsbPanel>
<bsbPresets>
</bsbPresets>
