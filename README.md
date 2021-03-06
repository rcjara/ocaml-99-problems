# 99 Problems in OCaml
http://ocaml.org/tutorials/99problems.html

# Dependencies
* Opam
* Batteries: use this package for goodies like <code>List.take</code> and <code>List.drop</code>

# I. Install OCaml + OPAM
See Yaron Minsky's documentation 
[here](https://bitbucket.org/yminsky/core-hello-world/src/dbca0beb206aa595c748664ab19ed547fee7f20e/PREREQUISITES.md?at=default).

# II. Install utop (from Real World OCaml)
	$ opam init
	$ opam switch 4.00.1+short-types
	$ opam install utop core_extended 
	$ eval `opam config -env`

	You may need to add `opam config -env` to your .bash_profile (there may be a better way of doing this). Now, go get a cup of coffee or a beer, this is going to take a while to install.

# III. Create an OCaml init (from Real World OCaml)
Create an init file, such as <code> ~/.ocamlinit</code>

Then add these lines:
	
	#use "topfind"
	#camlp4o
	#thread
	#require "core.top"

# IV. Installing packages

<code>opam install {package_name} (i.e. batteries)</code>

add the new dependency to your <code>_tags</code> file:
		<code><*>: package(batteries)</code>
(The tags file will be created when you compile using ocamlbuild, shown below.)

# V. Using packages
* We open the package namespace, like this: <code>open Batteries;;</code>

# VI. Compiling and running
* <code>ocamlbuild -use-ocamlfind {file_name}.native</code>
* <code>./{file_name}.native</code>

# VII. Resources
* <code>#ocaml</code> on IRC is ok for asking questions. But be sure to give a detailed expalation of what you are doing. 








