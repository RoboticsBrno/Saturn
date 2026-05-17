all: panelize fabassembly

panelize:
	kikit panelize -p kik.json saturn.kicad_pcb jlc\kik_panel.kicad_pcb

fabassembly:
	kikit fab jlcpcb --assembly jlc\kik_panel.kicad_pcb --schematic saturn.kicad_sch jlc
