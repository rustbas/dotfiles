(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(package-selected-packages
   '(zig-mode xclip haskell-tng-mode haskell-mode gruber-darker-theme smex markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Create backup files at home directory
;;(setq auto-save-file-name-transforms
;;`((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; Turn off startup screen
(setq inhibit-startup-screen t)

;; Turn off some bars
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)

;; Fonts
(set-face-attribute 'default nil :height 140)

;; IDO Mode
(ido-mode 1)

;; IDO mode for M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

;; Line numbers
(global-display-line-numbers-mode)
;;(setq display-line-numbers 'relative)
;;(global-linum-mode)


;; HASKELL-MODE
;; Font Locking, Programming Modes, and Compilation settings
;;

;; (global-font-lock-mode 1)
;; ;; maximum colors
;; (setq font-lock-maximum-decoration t)

;; ;; extra key bindings
;; (global-set-key "\M-C" 'compile)
;; (global-set-key "\C-^" 'next-error)
;; (global-set-key "\C-\M-g" 'goto-line)

;; ;; use spaces instead of tabs
;; (setq-default indent-tabs-mode nil)

;; ;; haskell mode configuration
;; (setq auto-mode-alist
;;       (append auto-mode-alist
;;               '(("\\.[hg]s$"  . haskell-mode)
;;                 ("\\.hic?$"     . haskell-mode)
;;                 ("\\.hsc$"     . haskell-mode)
;;   ("\\.chs$"    . haskell-mode)
;;                 ("\\.l[hg]s$" . literate-haskell-mode))))
;; (autoload 'haskell-mode "haskell-mode"
;;    "Major mode for editing Haskell scripts." t)
;; (autoload 'literate-haskell-mode "haskell-mode"
;;    "Major mode for editing literate Haskell scripts." t)

;; ;adding the following lines according to which modules you want to use:
;; (require 'inf-haskell)

;; (add-hook 'haskell-mode-hook 'turn-on-font-lock)
;; ;(add-hook 'haskell-mode-hook 'turn-off-haskell-decl-scan)
;; ;(add-hook 'haskell-mode-hook 'turn-off-haskell-doc-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; ;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; ;(add-hook 'haskell-mode-hook 'turn-on-haskell-hugs)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)
;; (add-hook 'haskell-mode-hook 
;;    (function
;;     (lambda ()
;;       (setq haskell-program-name "ghci")
;;       (setq haskell-ghci-program-name "ghci6"))))


;; TURN OFF BELL
(setq ring-bell-function 'ignore)
