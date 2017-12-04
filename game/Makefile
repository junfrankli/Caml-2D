run:
	ocamlc -c state.mli
	ocamlc state.ml -o state
	ocamlfind ocamlc -g -package lablgtk2 graphics.cma state.cmo -linkpkg gui.ml -o gui

clean:
	ocamlbuild -clean
