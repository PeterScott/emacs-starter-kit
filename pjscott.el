;;; User-specific customizations

(autoload 'line-comment-banner "line-comment-banner" nil t)
(global-set-key (kbd "C-;") 'line-comment-banner)

(add-hook 'c-mode-common-hook
          (lambda () (make-local-variable 'comment-fill)
            (setq comment-fill "*")))

(add-hook 'c-mode-common-hook
          (lambda ()
            (hs-minor-mode)
            (local-set-key (kbd "C-c s") 'hs-toggle-hiding)
            (local-set-key (kbd "C-c H") 'hs-hide-all)
            (local-set-key (kbd "C-c S") 'hs-show-all)))

(setq yas/root-directory "~/.emacs.d/snippets/")
(yas/load-directory yas/root-directory)
(add-hook 'org-mode-hook
          (lambda ()
            (yas/load-directory yas/root-directory)))
