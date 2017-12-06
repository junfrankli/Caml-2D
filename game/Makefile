run:
	ocamlc -c state.mli
	ocamlc state.ml -o state
	ocamlfind ocamlc -g state.cmo -package lablgtk2 -package camlimages.all -linkpkg gui.ml -o gui


old:
	ocamlbuild -use-ocamlfind -pkgs lablgtk2,graphics,camlimages.all gui.byte

clean:
	ocamlbuild -clean
