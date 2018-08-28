 #!/usr/bin/env python3
import sys

f = open(sys.argv[1], 'r')
code = f.read().split('\n')
lines=[]
last_key = ""
for i, line in enumerate(code):
    if "def" in line:
        lines.append(i)
    if "end" in line:
        if "ignore" not in line:
            lines.append(i)
holes = []
chars=0
array_pos=0
counting=False
for i, line in enumerate(code):
    if i == lines[array_pos]:
        array_pos = array_pos if array_pos == len(lines)-1 else array_pos + 1
        counting = not counting
        if not counting:
            holes.append(chars)
            chars=0
    if counting:
        if "puts" in line:
            1
        elif "def" in line:
            if "(" in line:
                t=line.split('(')[1].split(')')[0]
                chars += len(t)
        else:
            chars += len(line.replace(' ',''))
total_score = 0
for i, hole in enumerate(holes):
    print("Hole #%d's score: %d" % (i+1, hole))
    total_score += hole
print("Total score %d for %d holes." % (total_score, len(holes)))
