
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(setq TeX-auto-save t)
(setq TeX-parser-self t)


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
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages
   (quote
    (jedi auto-complete auto-complete-chunk python math-symbol-lists auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(defun my-LaTeX-mode()
  (add-to-list 'TeX-view-program-list '("Evince" "evince --page-index=%(outpage) %o"))
  (setq TeX-view-program-selection '((output-pdf "Evince")))
                                        ; Other mode specific config
  )

(add-hook 'LaTeX-mode-hook 'my-LaTeX-mode)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
