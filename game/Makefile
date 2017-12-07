run:
	ocamlc -c level.mli
	ocamlc -c state.mli
	ocamlc level.ml -o level
	ocamlc state.ml -o state
	ocamlfind ocamlc -g state.cmo level.cmo -package lablgtk2 -package camlimages.all -linkpkg gui.ml -o gui

old:
	ocamlfind ocamlc -g -package lablgtk2 graphics.cma -linkpkg gui.ml -o gui

clean:
	ocamlbuild -clean
