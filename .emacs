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
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces)
