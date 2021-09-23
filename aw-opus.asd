(asdf:defsystem :aw-opus
  :description "Common Lisp bindings to Xiph Opus audio codec"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-opus-bindings))


(asdf:defsystem :aw-opus/wrapper
  :description "Wrapper generator for Xiph Opus audio codec"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :claw :claw-utils)
  :serial t
  :components ((:file "src/claw")
               (:module :opus-includes :pathname "src/lib/opus/include/")))
