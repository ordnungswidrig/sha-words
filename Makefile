BB:=target/sha-words.bb

all: babashka uberjar
	@echo "Executable babashka script is in ${BB}"
	@echo "Uberjar is in target/sha-words.jar" 

target:
	mkdir target

${BB}: target
	bb -cp src -m sha-words.main --uberscript ${BB}
	bb -e '(spit "${BB}" (str "#!/usr/bin/env bb\n\n" (slurp "target/sha-words.bb")))'
	chmod +x ${BB}

.PHONY: babashka
babashka: ${BB}

classes/sha_words/main.class:
	mkdir -p classes
	clj -M -e "(compile 'sha-words.main)"

target/sha-words.jar: classes/sha_words/main.class
	clojure -A:uberdeps -M --main-class sha_words.main

.PHONY: uberjar
uberjar: target/sha-words.jar 

.PHONY: clean
clean:
	rm -r classes
	rm -r target

