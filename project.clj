(defproject sha-words "0.1.0"
  :description "Convert a sha512 value to a predictive list of 5 words"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main sha-words.main
  :aot [sha-words.main])
