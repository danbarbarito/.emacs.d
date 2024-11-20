;; Code:


(prelude-require-packages '(prettier))

(require 'prelude-lsp)

(defun my--init-ts-mode ()
  (prettier-mode)
  (lsp-deferred)
  (setq lsp-enable-indentation nil)
  (setq typescript-indent-level 2))

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

(add-hook 'typescript-ts-mode-hook 'my--init-ts-mode)
(add-hook 'tsx-ts-mode-hook 'my--init-ts-mode)
