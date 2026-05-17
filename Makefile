all: assembly

panelize:
	kikit panelize -p kik.json saturn.kicad_pcb jlc\kik_panel.kicad_pcb

#fab: panelize
#	kikit fab jlcpcb jlc\kik_panel.kicad_pcb jlc

assembly:
	kikit fab jlcpcb --assembly jlc\kik_panel.kicad_pcb --schematic saturn.kicad_sch jlc

