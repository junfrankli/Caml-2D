run:
	ocamlc -c state.mli
	ocamlc state.ml -o state
	ocamlfind ocamlc -g -package lablgtk2 graphics.cma -linkpkg gui.ml -o gui

clean:
	ocamlbuild -clean
