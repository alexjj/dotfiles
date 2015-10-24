;; -*- emacs-lisp -*-
;;; alexjj emacs config

;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


;; Ledger

(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/elpa/ledger-mode-3.1/"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
(setq ledger-post-auto-adjust-amounts t)


;; emacs

;; Show matching parentheses

(show-paren-mode 1)
(setq show-paren-delay 0)

;; line numbering
(global-linum-mode 1)

;; Auto indent with RET
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Interactively Do Things

(require 'ido)
(ido-mode t)
(ido-everywhere)
(setq ido-enable-flex-matching t)
(setq ido-ignore-extensions t)
(add-to-list 'completion-ignored-extensions ".pyc")


;; Use ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; org

     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cc" 'org-capture)
     (global-set-key "\C-cb" 'org-iswitchb)

;; Zenburn theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("ff9e6deb9cfc908381c1267f407b8830bcad6028231a5f736246b9fc65e92b44" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
