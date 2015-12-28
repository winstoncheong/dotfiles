;(load-theme 'wombat)
(load-theme 'monokai t)
;(load-theme 'material t)


(column-number-mode)
(electric-indent-mode 1)
(show-paren-mode)
(winner-mode t)
(windmove-default-keybindings)
(global-linum-mode t)
(global-hl-line-mode)
(autopair-global-mode)

(setq make-backup-files nil)
(set-default 'truncate-lines t)
(defvar ido-enable-flex-matching t)
(defvar ido-everywhere t)
(ido-mode 1)


(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     t)
(add-to-list '("marmalade" . "http://marmalade-repo.org/packages/")
	     t)

(package-initialize)

;(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)


(global-undo-tree-mode)
(Global-set-key (kbd "M-/" ) 'undo-tree-visualize)
(global-set-key (kbd "C-M-z") 'switch-window)

; Set up helm-mode
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p t)

(require 'org)
(require 'ob)


(require 'evil)
(evil-mode 1)

(require 'cl)
(require 'powerline)
(powerline-center-theme)
