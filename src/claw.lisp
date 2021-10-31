(claw:defwrapper (:aw-opus
                  (:system :aw-opus/wrapper)
                  (:headers "opus.h")
                  (:includes :opus-includes)
                  (:include-definitions "^(Opus|opus_|OPUS_)\\w*")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu")
                            ((:and :aarch64 :android) "aarch64-linux-android"))
                  (:persistent t :depends-on (:claw-utils)))
  :in-package :%opus
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:by-removing-prefixes "opus_" "OPUS_"))
