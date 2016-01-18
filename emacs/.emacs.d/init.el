;; -*- emacs-lisp -*-
;;; alexjj emacs config


;; INSTALL PACKAGES

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme
    ledger-mode
    elpy
    flycheck
    py-autopep8
    ein
    neotree
    magit))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION

;(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(setq user-full-name "Alex Johnstone")
(setq user-mail-address "alexjj@gmail.com")

;;Auto backups
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; Ledger

(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/elpa/ledger-mode-20160111.1834/"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
(setq ledger-post-auto-adjust-amounts t)

;; Python Dev

(elpy-enable)
(elpy-use-ipython)
(defalias 'workon 'pyvenv-workon)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;;magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;;neotree
(setq neo-smart-open t)
(global-set-key [f8] 'neotree-toggle)

;;org-mode configuration
;; Enable org-mode
(require 'org)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/python.org" 
                             "~/org/home.org"))


