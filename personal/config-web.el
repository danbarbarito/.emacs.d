(prelude-require-packages '(web-mode))

(require 'web-mode)

(with-eval-after-load 'web-mode
  (defun my--init-web-mode ()
    "Local init function for `web-mode'."


    )


  (add-hook 'web-mode-hook 'my--init-web-mode)
  (add-hook 'web-mode-hook 'rainbow-mode))
