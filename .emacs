
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(setq debug-on-error t
      vc-follow-symlinks t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(global-linum-mode)
(column-number-mode)

(show-paren-mode)

(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

(add-hook 'c-mode-common-hook
          (lambda()
            (local-set-key (kbd "C-c <down>") 'hs-show-block)
            (local-set-key (kbd "C-c <up>") 'hs-hide-block)
            (local-set-key (kbd "C-c <left>") 'hs-hide-all)
            (local-set-key (kbd "C-c <right>") 'hs-show-all)
            (hs-minor-mode t)))

(electric-pair-mode)

(setq c-basic-offset 4
      c-default-style "bsd"
      fill-column 80)

(add-hook 'before-save-hook ' delete-trailing-whitespace)

(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)


(setq whitespace-style '(face
			 tabs tab-mark
			 lines-tail
			 trailing))

(global-whitespace-mode)

(xterm-mouse-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(require 'yasnippet)

;;(yas-global-mode 1)

;;(global-set-key (kdb "C-a C-a") 'create-auto-yasnippet)
;;(global-set-key (kdb "C-e C-e") 'expand-auto-yasnippet)
