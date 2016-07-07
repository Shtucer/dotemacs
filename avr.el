
(defun avr-ecb-load nil
    (interactive)
;    (require 'ecb-autoloads)
    (require 'cedet)
    (global-ede-mode 1)
    (require 'auto-complete-clang)
    (require 'ac-clang)
    (require 'ac-clang-autoloads)
     (define-key c++-mode-map "C-S-<return>") 'ac-complete-clan
;    (semantic-load-enable-excessive-code-helpers); Enable prototype help and smart completion
;    (semantic-load-enable-gaudy-code-helpers)
;    (semantic-load-enable-excessive-code-helpers)

;    (require 'semantic-ia)
    (require 'semantic-gcc)

    (ede-cpp-root-project "photoresist"
                          :name "photoresist"
                          :file "d:\Projects\workspace-mars\arduino\photoresist.git\photoresist\main.c"
                          :include-path '(".", "e:\devtools\avr-toolchain\avr8-gnu-toolchain\avr\include")
                          :system-include-path '("e:\devtools\avr-toolchain\avr8-gnu-toolchain\avr\include")
                          :spp-table '(("__AVR_AT90S8535__"."")))
    ;(ecb-activate)
    )
    
             
