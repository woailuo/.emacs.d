;; no backup files
(setq make-backup-files nil)

;; set defalut tab-width 4
(setq-default indent-tabs-mode nil) ; always replace tabs with spaces
(setq-default tab-width 4) ; set tab width to 4 for all buffers

;; use apsell as ispell backend  
(setq-default ispell-program-name "aspell")  
;; use American English as ispell default dictionary  
(ispell-change-dictionary "american" t)  

;; package
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(setq url-http-attempt-keepalives nil)

;; auto-complete 
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5.3")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20151112.2030")
(require 'auto-complete-config)  
(add-to-list 'ac-dictionary-directories "~/emacs.d/elpa/auto-complete-20151112.2030/dict")  
(ac-config-default)  

;; undo-tree
(global-undo-tree-mode)

;; bash auto completion
(add-to-list 'load-path "~/.emacs.d/elpa/bash-completion")
(require 'bash-completion)
(bash-completion-dynamic-complete)
(bash-completion-setup)


;; tuareg 
(load "~/.emacs.d/elpa/tuareg/tuareg-site-file")
(setq exec-path (append exec-path (list "/usr/local/bin")))

;; user define: windows, backgroud, font
(add-to-list 'load-path "~/.emacs.d/usrel")
(require 'bgcolor)
(require 'winbar)
(require 'envm)

;; add merlin 
(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
    ;; Register Merlin
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (autoload 'merlin-mode "merlin" nil t nil)
    ;; Automatically start it in OCaml buffers
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)))

;; frama-c
(add-to-list 'load-path "~/.emacs.d/frama-c")
(load-library "frama-c-recommended")


(provide 'init)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (undo-tree popup-complete caml bash-completion auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
