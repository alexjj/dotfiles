;;; alexjj emacs config

;;; emacs

;Show matching parentheses

(show-paren-mode 1)
(setq show-paren-delay 0)

;Interactively Do Things
(require 'ido)
(ido-mode t)

;;; Ledger
(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
             (expand-file-name "/usr/share/emacs/site-lisp/ledger-mode/"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
