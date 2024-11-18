;; Code:


(require 'prelude-lsp)

(defun my--init-ts-mode ()
  (setq lsp-enable-indentation nil)
  (setq typescript-indent-level 2))

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

(add-hook 'typescript-ts-mode-hook 'my--init-ts-mode)
(add-hook 'tsx-ts-mode-hook 'my--init-ts-mode)
(add-hook 'typescript-ts-mode-hook #'lsp-deferred)
(add-hook 'tsx-ts-mode-hook #'lsp-deferred)
