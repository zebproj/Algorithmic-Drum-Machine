import random

#declare the base drum pattern in a typical 16th note cell fashion

no_weight = [] 

for i in range (16): no_weight.append(1)

snare_note = 	(0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1)
snare_vel = 	(0,0,0,0,1,0,0,0,0,0,0,0,1,.25,.25,.25)
snare_weight = 	(0,0,0,0,1,0,0,0,0,0,0,0,1,.25,.25,.25)


kick_note = 	(1,0,0,0,1,0,0,0,1,0,0,0,1,0,1,0)
kick_vel = 	(1,0,0,0,1,0,0,0,1,0,0,0,1,0,.25,0)
kick_weight = 	(1,0,0,0,1,0,0,0,1,0,0,0,1,0,.50)

hihat_note = 	(1,1,1,1,1,0,1,0,1,0,1,0,1,0,1,1)
hihat_vel = 	(1,.5,1,.5,1,0,1,0,1,0,1,0,1,0,1,1)
hihat_weight = 	(1,.5,1,.5,1,0,1,0,1,0,1,0,1,0,1,.5)

#open score file
score = open("examples/newdrumscore.sco", "w")
tempo = 111

#write tempo
score.write("t 0 " + str(tempo) + "\n")

def glitch(instr, time, velocity, reverse, repeat):
	score.write("; + GLITCH\n")
	dif = (1.0/(repeat))*0.25
	for i in range(repeat):
		score.write("i" + str(instr) + " " + str(time+(i*dif)) + " " + str(dif) + " " + str(velocity) + " " + str(reverse) + " 1 1\n")
	score.write("; - GLITCH\n")
def drumseq(name,instr,start,note,vel,bar_num,weight, rand, human, glitch_val):
	score.write(";" + str(name) + "\n")
	for bar in range(bar_num):
		for i in range(16):
			rand_val = random.random()
			if note[i] == 1 and rand_val <= weight[i]:
				epsilon = 0
				time = start + i * .25 + 4*bar 
				if human != 0 and time != 0:	epsilon = random.uniform(-1*human,human)
				time += epsilon
				rand_val = random.random()
				glitch_rand = random.random()
				reverse = 1
				duration = .25 - epsilon
				velocity = vel[i] - (epsilon * 10)
				if rand_val <= rand: reverse = -1
				#score.write("i" + str(instr) + " " + str(time) + " " + str(duration) + " " + str(velocity) + " " + str(reverse) + " 1 1 0" "\n")
				if glitch_rand <= glitch_val:
					repeat = random.randint(2,12) 
					glitch(instr, time, velocity, reverse, repeat)
				else:
					score.write("i" + str(instr) + " " + str(time) + " " + str(duration) + " " + str(velocity) + " " + str(reverse) + " 1 1\n")
					
#write the parts

drumseq("hihat", 3, 0, hihat_note, hihat_vel, 8, hihat_weight, 0.3, 0.01, 0.3)
drumseq("snare", 1, 0, snare_note, snare_vel, 8, snare_weight, 0, 0.01, 0)
drumseq("kick", 2, 0,  kick_note, kick_vel, 8, kick_weight, 0, 0.01, 0)

score.close()
