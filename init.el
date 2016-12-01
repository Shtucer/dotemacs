(require 'cl)
(defun system-is-linux ()
    "Linux system checking."
    (interactive)
    (string-equal system-type "gnu/linux"))

(defun system-is-mac ()
    "Mac OS X system checking."
    (interactive)
    (string-equal system-type "darwin"))

(defun system-is-windows ()
    "MS Windows system checking."
    (interactive)
    (string-equal system-type "windows-nt"))

(setq exec-path (append exec-path '("/usr/local/bin")))
;;(setq exec-path (append exec-path '("/HDD/Users/shtucer/opt/go/bin")))
(setq exec-path (append exec-path '("/usr/local/sbin")))
(if (system-is-windows)
    (setq exec-path (append exec-path '("e:/devtools/sbt/bin")))
    (setq exec-path (append exec-path '("c:/Program Files (x86)/zeal"))))

(setq exec-path (append exec-path '(getenv "GOBIN")))
(if (eq system-type 'darwin)
    (setenv "PATH" (shell-command-to-string "/bin/bash -l -c 'echo -n $PATH'"))
  (setenv "PATH" (shell-command-to-string "cmd.exe /C 'echo -n %PATH%'"))
  )

(require 'package)
;;(add-to-list 'load-path "~/.emacs.d/")

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives
               '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-quick-help-prefer-pos-tip nil)
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(column-number-mode nil)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "076f5aa21f3963f12fa8663cbf0d7be26998f1677e74936d78b861cdc5767d82" "84d36e1ca952a8b0c566bab5076e72961664ce0e3667edf06bd5495f76fed59a" "5e3fec601288c100d7d54fc2ef30f300952bba335593ef19d47646abcc9301d9" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" "19352d62ea0395879be564fc36bc0b4780d9768a964d26dfae8aad218062858d" "4eebdd59b960ef9d4ef5df476c176f9b99ac66d3910e51d541df7436a32084cd" "136f18c34f8f176596855bda01f05f6ba45982c09e5dafdc06e0b611ce841fa3" "55dce02b4174803311dabad4ef9e58ca742f7587b2ab8766fa1fa11eaaa5d51a" "18c0b439a3135469cee18991c78de09e90a0e86dbd64e4fed8adf45662223765" "2391bc35a8db68ac326c13e663efd2e1b8511ce3872815534785f235affb132d" "687be7f302e0690fc098cb0ea507bf7d5382a6525c955404e7d7e5f11e6582f8" "c8145aa3d4a61cc335b35ac283666a1df66ea3fb570b27cbc046bbba5b1ad5db" "1d8eff77e8a35948beaa7d1d48409ed6e1e44629b4d69c2e0607f070ece2ac0b" "292016e3d380abbaeac337d8e1ee32215c8b72b0ba7e9d09097050b3ce04c38d" "d641d617c070dbe9074a3cf5e4af507c9b28d76ed204f604183541fd21298d29" "d677a22bc5fcf4d20b98a11e411e88456cc3c21c5ce03cae8662ae76e5a7285d" "a444b2e10bedc64e4c7f312a737271f9a2f2542c67caa13b04d525196562bf38" "a1df8cc7f29bcb115ba0ade0c9fd34548df21b7ea4e05796a7fed7f17cc6c8dd" "0fffe5937465d8fed961ccecba764fbd20eb9bacf9dcf2b2367b169c4659c544" "abb0ebabc5563a769d25e2a5fad177b8f9689d8bbc9d983842990b029e4fa580" "64fb24f819ebe1fb34ed960df6450a07c3a0d57c0fb05e50d7bb2a6579e535ba" "fcf52a9b2cda3e8669febd84fcc38067c483b18429e6563ca237d21381c903e7" "fb29967882b9f19815fa1d24547465971aa0c9035b55285ad2414e460ffb204a" "a7b99824278e4ceeb6e91dd17d4a615f9a6d761b0aba1b7b2d03a52436fae4d2" "9bc4aab886722159ae137ecba42a3cc8d5bfe72dce06e97c9088b6d2eb9b5c59" "78cb6cc7bb34cad325906ecf4efc95aa06a3dba79e5fa35fe4118f00bfd48a43" "036068ba8437be2afbca03462602941431afdf62a4d50eb61c0f4e501b8d7364" "95ded3ae65f1edd8ed8b15cb3baabeb5c123e3ecb1b79f0816c9fa72433302e9" "e1714d8db35b6d31d8e1f0e8d0fe145d9a317ab581d0972f7af4b4a4f822bb9d" "8d384d93616646cf2af33341af613ffb8db3797291b933bc98bf7ad95cf317d7" "61f375e89a01d860d6cca664cc179c20af731a5294ddbb68e30b3a9d751e7b65" "f295c7a3a9b85573b217e6145834b36a3f832c853d31201f42987d88e8212f94" "5f4c5d8dc3f404956b4f32ddc645bcddca1f6dcd2ea028c34a92c56565a50116" "8937ca75e5404c73d6805ace9be9dcf33c2a34250c41c6a316589c287be10d13" "4c526fc3b75a2889e4d62f1be5fd63c7da7d61b23fe258253f5f201d42203e8d" "23b3c0b14c2fd9883966b33c075b5104bf246b79d3a34c1aca9f5422a4e6d207" "0163669c353332da24c34dc2b1ef82eb1348f8514e898d876cb7e342671c7c1d" "aa25b5f20bd5e29a8a38f202562a6e9571d28a96c1738dd941aa9914db0cdd4b" "9e0f840b8638ff7aa86c7a4c06132dd7e479e245b4dff2d490cdadb2138e4621" "57d7e8b7b7e0a22dc07357f0c30d18b33ffcbb7bcd9013ab2c9f70748cfa4838" "d085b693f8f02a62989ed781ddef26290082b76aea62c43dcfcba16c27f45230" "11168d628a3ada93800f58fe0e0b6a4f1f422c24167777a70df1fd3d2f1ff8fd" "8146121a4377953c60106822613dd7ecc36569b923b775f7486d9b1be7845498" "a31492f5652bc6d9e5bfa2ee43793b5db12050bb8845ff599b9ef2faa0e364f7" "d62020d1f8cc805a410cb8735cd8d75c2acb20d4addaa7c855b552936acb8935" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "5da98201a6a14abee4a2a08b53de11508f06f4418c849557b49a893c8885c1b1" "f756000762cd239af1c024808f582cf9b5f6e1fd8d596513ae13036854cefaf6" "a07499103b6d1a1324ae3b7dfd80577eaacf8f62ee1c4ecd28dc5c983abe4c4b" "948788ad37ebb872a4bc253f8aef590d27406b59dc044a3506177f37dd701d72" "5ea25a136175518059f0093a4e12473cc10a1c64cd7fa2e5ee554a06addeb49a" "7d2e46b6b4720c7b00beadf64970161680778f01632bc54894a9edad38c01ed9" "e5ca63af902a95233fa52b0de5ab98e69cc4da34d7214acbf9fd0b8e7f413a3a" "cbef37d6304f12fb789f5d80c2b75ea01465e41073c30341dc84c6c0d1eb611d" "cdaab103628aba27dac387e2e85dde6690e73f44be07656a19929b97c58e98a5" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ecb-layout-name "shtucer-fancy-layout")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("d:/Projects" "Projects") ("c:" "c:"))))
 '(ede-project-directories
   (quote
    ("d:/Projects/workspace-mars/arduino/photoresist.git/photoresist")))
 '(fci-rule-color "#383838")
 '(fringe-mode (quote (0)) nil (fringe))
 '(global-hl-line-mode t)
 '(global-linum-mode nil)
 '(indent-tabs-mode nil)
 '(linum-format "%4d │ ")
 '(make-backup-files nil)
 '(neo-window-fixed-size nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-babel-python-command "e:\\devtools\\python35\\python.exe")
 '(package-selected-packages
   (quote
    (flymake-json web-beautify js2-highlight-vars json-mode json-reformat jsx-mode angular-mode company-tern ## node-resolver nodejs-repl flymake-jslint es-mode jedi projectile projectile-speedbar virtualenvwrapper auto-virtualenv company-jedi flymake-hlint ghc ghc-imported-from ghci-completion hi2 powerline-evil ac-emmet tern-context-coloring tern-django tern-auto-complete tern etags-select flymake-coffee flymake-less less-css-mode airline-themes emacsql-psql emacsql-mysql windresize slim-mode rainbow-mode rainbow-delimiters powerline maxframe linum-relative gradle-mode go-autocomplete flymake-python-pyflakes flymake-php flymake-haskell-multi flylisp fic-mode evil-paredit evil-org evil-numbers evil-lisp-state django-snippets column-marker auto-complete-clang-async auto-complete-clang ac-slime ac-php ac-js2 ac-html-bootstrap ac-html ac-haskell-process ac-clang abyss-theme)))
 '(rainbow-delimiters-mode 1 t)
 '(show-paren-mode t)
 '(tab-width 4)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(zenburn-no-bold t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-tag-header-face ((t (:background "gray10")))))

;(require 'gradle-mode)
;(add-to-list 'auto-mode-alist '("\\.gradle" . gradle-mode))
;(gradle-mode 1)

;(require 'groovy-mode)

;; Load configuration modules
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq company-etags-everywhere '(web-mode scss-mode sass-mode))

(load-user-file "evil.el")
(load-user-file "appearance.el")
(load-user-file "golang.el")
(load-user-file "ensime.el")
;(load-user-file "ecb.el")
(load-user-file "keymapping.el")
(load-user-file "lisp.el")
(load-user-file "python.el")
(load-user-file "webmode.el")
(load-user-file "javascript.el")
(load-user-file "scssmode.el")
(load-user-file "haskell.el")
(put 'set-goal-column 'disabled nil)
(paredit-mode t)
(setq powerline-arrow-shape 'arrow)
(put 'scroll-left 'disabled nil)
