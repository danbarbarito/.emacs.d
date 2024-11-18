(add-to-list 'auto-mode-alist
             '("\\.scss\\'" . scss-mode))

(add-to-list 'auto-mode-alist
             '("\\.css\\'" . css-mode))

(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
