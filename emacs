
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("525cf5e455ac1c31b2c32ea4f71954e792dbbeadf5fcb28393167f6e60107294" "f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default)))
 '(fci-rule-color "#3C3D37")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (ido-ubiquitous ido-completing-read+ flx-ido ox-html5slide org cdlatex ox-twbs ox-textile ox-rst ox-gfm ox-reveal ox-pandoc vimrc-mode ox-ioslide org-ac monokai-alt-theme monokai-theme ac-helm company-math math-symbol-lists powerline-evil evil auctex)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Manual settings
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     t)

(package-initialize)

(require 'evil)
(evil-mode 1)

(require 'powerline)
(powerline-center-theme)

;; Set up helm-mode
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p t)

;; Org mode stuffs
(require 'org)

; syntax highlight in source blocks
(setq org-src-fontify-natively t)
; make TAB act as if it were issued in a buffer of the language's major mode
(setq org-src-tab-acts-natively t)

; (add-hook 'org-mode-hook 'flyspell-mode) ; don't have ispell on Windows
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)


(require 'ox-beamer)
(require 'ox-md)
(require 'ox-html5slide)
(require 'ox-ioslide)

(require 'ob)
(org-babel-do-load-languages
 'org-babel-load-languages
  '((perl . t)         
    (ruby . t)
    (sh . t)
    (python . t)
    (emacs-lisp . t)   
   ))

; use latexmk when building latex
(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))

(require 'org-ac)
(org-ac/config-default)

;; General configs
(column-number-mode)
(electric-indent-mode 1)
(show-paren-mode)
(winner-mode t)
(windmove-default-keybindings)
(global-linum-mode t)

(setq ido-enable-flex-matching t) ; for fuzzy search
(setq ido-everywhere t)
(ido-mode 1)
; (ido-ubiquitous)
(flx-ido-mode 1) ; better/faster matching



(global-set-key (kbd "M-x") 'helm-M-x) ; use helm's M-x

(ac-config-default)

(global-undo-tree-mode)
(global-set-key (kbd "M-/" ) 'undo-tree-visualize)

(global-visual-line-mode)

;; Turn on autocomplete mode
; (auto-complete-mode)


;; Set up ac-helm
(require 'ac-helm) ;; Not necessary if using ELPA package
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)



