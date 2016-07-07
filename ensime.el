;;(require 'scala-mode2)
;;(require 'ensime)
(setq ensime-sbt-command "e:/devtools/sbt/bin/sbt.bat")
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook '(lambda() (setq
                                        scala-indent:step 4)))

(add-hook 'ensime-mode-hook '(lambda() (evil-leader/set-key-for-mode 'ensime-mode
                                         "gd" 'ensime-edit-definition)))
;; Gradle files should use Groovy Mode
(add-to-list 'auto-mode-alist '("\\.gradle\\'" . groovy-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode2))

