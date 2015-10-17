;; -*- emacs-lisp -*-
;;; alexjj emacs config

;; org-mode

(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package

;; Ledger

(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
             (expand-file-name "/usr/share/emacs/site-lisp/ledger-mode/"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))


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
