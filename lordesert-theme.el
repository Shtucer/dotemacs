;;; lordesert-theme.el --- lordesert theme

;; Copyright (C) Sergei Lebedev
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of lordesert theme from  'color-themes'

;;; Code:
;;; TODO: 
(deftheme lordesert
  "lordesert theme")
(custom-theme-set-faces
 'lordesert
 '(default ((t (:background "#2e3436" :foreground "ghost white"))))
 '(ac-candidate-face ((t (:background "SkyBlue4" :foreground "ghost white"))))
 '(ac-completion-face ((t (:background "olive drab" :foreground "khaki"))))
 '(ac-selection-face ((t (:foreground "khaki" :background "olive drab"))))
 '(bold ((t (:bold nil :weight normal))))
 '(bold-italic ((t (:italic t :bold nil :slant italic :weight normal))))
 '(border ((t (nil))))
 '(buffer-menu-buffer ((t (:bold nil :foreground "khaki" :weight normal))))
 '(button ((t (:bold nil :weight normal :underline nil :foreground "MediumPurple3" :background "gray20"))))
 '(completions-annotations ((t (:underline t :foreground "ghost white"))))
 '(completions-common-part ((t (:foreground "ghost white" :background "SkyBlue4"))))
 '(completions-first-difference ((t (:bold nil :weight normal))))

 '(cursor ((t (:background "khaki"))))

 '(dired-directory ((t (:bold nil :weight normal :foreground "PaleGreen3"))))
 '(dired-flagged ((t (:bold nil :weight normal :foreground "Pink"))))
 '(dired-header ((t (:bold nil :weight normal :foreground "PaleGreen3"))))
 '(dired-ignored ((t (:foreground "grey70"))))
 '(dired-mark ((t (:foreground "#ffa0a0"))))
 '(dired-marked ((t (:bold nil :weight normal :foreground "DarkOrange"))))
 '(dired-perm-write ((t (:foreground "LightSkyBlue3"))))
 '(dired-symlink ((t (:foreground "khaki"))))
 '(dired-warning ((t (:bold nil :weight normal :foreground "goldenrod"))))

 '(elscreen-tab-background-face ((t (:background "gray15"))))
 '(elscreen-tab-control-face
   ((t (:bold nil :weight normal :foreground "goldenrod" :background "gray15" :underline nil))))
 '(elscreen-tab-current-screen-face
   ((t (:bold nil :background "gray15" :foreground "goldenrod" :weight normal))))
 '(elscreen-tab-other-screen-face ((t (:background "gray15" :foreground "gray60"))))

 '(error ((t (:bold nil :foreground "pink" :weight normal))))
 '(escape-glyph ((t (:foreground "cyan"))))
 '(file-name-shadow ((t (:foreground "grey70"))))

 '(hl-line ((t (:background "grey40"))))
 
 '(font-lock-builtin-face ((t (:foreground "#87FB98"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "LightSkyBlue3"))))
 '(font-lock-comment-face ((t (:foreground "LightSkyBlue3"))))
 '(font-lock-constant-face ((t (:foreground "#ffa0a0"))))
 '(font-lock-doc-face ((t (:foreground "IndianRed3"))))
 '(font-lock-function-name-face ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "khaki"))))
 '(font-lock-negation-char-face ((t (nil))))
 '(font-lock-preprocessor-face ((t (:foreground "MediumPurple3"))))
 '(font-lock-regexp-grouping-backslash ((t (:bold nil :weight normal))))
 '(font-lock-regexp-grouping-construct ((t (:bold nil :weight normal))))
 '(font-lock-string-face ((t (:foreground "#ffa0a0"))))
 '(font-lock-type-face ((t (:bold nil :foreground "darkkhaki" :weight normal))))
 '(font-lock-variable-name-face ((t (:foreground "ghost white"))))
 '(font-lock-warning-face ((t (:bold nil :foreground "goldenrod" :weight normal))))
 '(fringe ((t (:background "gray20"))))
 '(glyphless-char ((t (:height 0.6))))
 '(header-line ((t (:background "gray15" :box (:color "gray20" :line-width 2)))))
 '(help-argument-name ((t (nil))))
 '(highlight ((t (:background "#666666"))))
 '(ido-first-match ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(ido-only-match ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(ido-subdir ((t (:bold nil :weight normal :foreground "khaki"))))

 '(isearch ((t (:background "peru" :foreground "wheat"))))
 '(isearch-fail ((t (:background "red4"))))
 '(isearch-lazy-light
   ((t (:bold nil :background "gray20" :foreground "ghost white" :weight normal))))

 '(italic ((t (:underline t))))

 '(jabber-activity-face ((t (:bold nil :weight normal :foreground "PaleGreen3"))))
 '(jabber-activity-personal-face ((t (:bold nil :foreground "#ffa0a0" :weight normal))))
 '(jabber-chat-prompt-foreign ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(jabber-chat-prompt-local ((t (:bold nil :foreground "#ffa0a0" :weight normal))))
 '(jabber-chat-prompt-system ((t (:bold nil :foreground "LightSkyBlue3" :weight normal))))
 '(jabber-rare-time-face ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(jabber-roster-user-away ((t (:foreground "IndianRed3"))))
 '(jabber-roster-user-chatty ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(jabber-roster-user-dnd ((t (:foreground "LightSkyBlue3"))))
 '(jabber-roster-user-error ((t (:bold nil :weight normal :foreground "goldenrod"))))
 '(jabber-roster-user-offline ((t (:background "gray20" :foreground "gray40"))))
 '(jabber-roster-user-online ((t (:bold nil :foreground "khaki" :weight normal))))
 '(jabber-roster-user-xa ((t (:foreground "IndianRed3"))))
 '(jabber-title-large ((t (:bold nil :weight normal :height 1.728))))
 '(jabber-title-medium ((t (:bold nil :weight normal :height 1.44))))
 '(jabber-title-small ((t (:bold nil :weight normal :height 1.2))))

 '(lazy-highlight ((t (:background "peru"))))
 '(link ((t (:bold nil :background "gray20" :foreground "MediumPurple3" :underline nil :weight normal))))
 '(link-visited ((t (:bold nil :underline nil :foreground "MediumPurple3" :background "gray20" :weight normal))))
 '(linum ((t (:background "gray20" :foreground "#ADD8E6"))))
 '(match ((t (:bold nil :weight normal))))
 '(menu ((t (nil))))
 '(minibuffer-prompt ((t (:bold nil :foreground "khaki" :weight normal))))

 '(mode-line
   ((t (:box (:color "gray20" :line-width 2)
             :background "gray15" :foreground "gray60"))))
 '(mode-line-buffer-id
   ((t (:bold nil :background "gray15" :box (:color "gray20" :line-width 2)
              :foreground "goldenrod" :weight normal))))
 '(mode-line-emphasis ((t (:bold nil :weight normal))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
 '(mode-line-inactive
   ((t (:foreground "gray60" :background "gray15"
                    :box (:color "gray20" :line-width 2)))))

 '(mouse ((t (:background "khaki"))))
 '(next-error ((t (:background "olive drab" :foreground "khaki"))))
 '(nobreak-space ((t (:foreground "cyan" :underline t))))
 '(query-replace ((t (:foreground "khaki" :background "olive drab"))))
 '(region ((t (:foreground "khaki" :background "olive drab"))))
 '(scroll-bar ((t (nil))))
 '(secondary-selection ((t (:background "SkyBlue4"))))
 '(shadow ((t (:foreground "grey70"))))
 '(show-paren-match ((t (:bold nil :foreground "PaleGreen3" :weight normal))))
 '(show-paren-mismatch ((t (:bold nil :foreground "goldenrod" :weight normal))))
 '(success ((t (:bold nil :foreground "green1" :weight normal))))
 '(tool-bar
   ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(tooltip ((t (:background "light yellow" :foreground "black"))))
 '(trailing-whitespace ((t (:bold nil :weight normal :foreground "goldenrod"))))
 '(underline ((t (:underline t))))

 '(vertical-border ((t (nil))))
 '(warning ((t (:bold nil :foreground "DarkOrange" :weight normal))))
 '(widget-button ((t (:bold nil :weight normal))))
 '(widget-button-pressed ((t (:foreground "red1"))))
 '(widget-documentation ((t (:foreground "lime green"))))
 '(widget-field ((t (:background "dim gray"))))
 '(widget-inactive ((t (:foreground "grey70"))))
 '(widget-single-line-field ((t (:background "dim gray"))))
;;;;; popup
 '(popup-tip-face ((t (:background "wheat" :foreground "black" :height .9))))
; '(popup-face ((t (:background "khaki" :foreground "black" :font "InputMono-8"))))
 ;; '(popup-isearch-match ((t (:background "yellow" :foreground ,base03))))
; '(popup-isearch-match ((t (:background "yellow" :foreground ,base03))))
; '(popup-menu-face ((,class (:background ,base02 :foreground ,base0))))
; '(popup-menu-mouse-face ((,class (:background ,blue :foreground ,base03))))
; '(popup-menu-selection-face ((,class (:background ,magenta :foreground ,base03))))
; '(popup-scroll-bar-background-face ((,class (:background ,base01))))
; '(popup-scroll-bar-foreground-face ((,class (:background ,base1))))
; '(popup-tip-face ((,class (:background ,base02 :foreground ,base0))))
;;;;; pophint

; '(pophint:tip-face ((,class (:background ,magenta :foreground ,base03))))
; '(pophint:match-face ((,class (:background ,blue :foreground ,base03))))
; '(pophint:pos-tip-face ((,class (:background ,base02 :foreground ,base0))))
                                        ;
;;;; powerline
; '(powerline-active1 ((,class ,(if solarized-high-contrast-mode-line
;                                   '(:background ,base00 :foreground ,base03)
;                                 '(:background ,base03 :foreground ,base00)))))
; '(powerline-active2 ((,class ,(if solarized-high-contrast-mode-line
;                                   '(:background ,base01 :foreground ,base03)
;                                 '(:background ,base02 :foreground ,base00)))))
; '(powerline-inactive1 ((,class ,(if solarized-high-contrast-mode-line
;                                     '(:background ,base03 :foreground ,base1)
;                                   '(:background ,base02 :foreground ,base01)))))
; '(powerline-inactive2 ((,class ,(if solarized-high-contrast-mode-line
;                                     '(:background ,base02 :foreground ,base1)
                                        ;                                   '(:background ,base03 :foreground ,base01)))))
 )
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'lordesert)

;;; lordesert-theme.el ends here
