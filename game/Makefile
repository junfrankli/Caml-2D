run:
	ocamlfind ocamlc -g -package lablgtk2 graphics.cma -linkpkg gui.ml -o gui

andrew:
	ocamlc -c level.mli
	ocamlc -c state.mli
	ocamlc level.ml -o level
	ocamlc state.ml -o state
	ocamlfind ocamlc -g state.cmo -package lablgtk2 -package camlimages.all -linkpkg gui.ml -o gui

jeff:
	ocamlbuild -use-ocamlfind -pkgs lablgtk2,graphics,camlimages.all gui.byte

clean:
	ocamlbuild -clean
