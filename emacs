(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     t)

(package-initialize)

;; Make evil mode work before everything else
(require 'evil)
(evil-mode 1)

(require 'powerline)
(powerline-center-theme)

; Set up helm-mode
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p t)

(require 'org)
(org-babel-do-load-languages
 'org-babel-load-languages
  '( (perl . t)         
     (ruby . t)
     (sh . t)
     (python . t)
     (emacs-lisp . t)   
   ))

; use latexmk when building latex
(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))

(require 'ob)


;(load-theme 'wombat)
(load-theme 'monokai t)
;(load-theme 'material t)

;; load path
(add-to-list 'load-path "~/projects/dotfiles/emacs/")

;; general configs
(column-number-mode)
(electric-indent-mode 1)
(show-paren-mode)
(winner-mode t)
(windmove-default-keybindings)
(global-linum-mode t)
(global-hl-line-mode)
(autopair-global-mode t)

(setq make-backup-files nil)
(set-default 'truncate-lines t)
(defvar ido-enable-flex-matching t)
(defvar ido-everywhere t)
(ido-mode 1)



;(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)


(global-undo-tree-mode)
(global-set-key (kbd "M-/" ) 'undo-tree-visualize)
(global-set-key (kbd "C-M-z") 'switch-window)



;; magit
(global-set-key (kbd "C-x g") 'magit-status)

(require 'cl)

(provide '.emacs)
