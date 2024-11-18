;; Code:


(prelude-require-packages '(corfu
                            coverlay
                            origami))
(require 'tsx-mode)

(add-to-list 'auto-mode-alist '("\\.[jt]s[x]?\\'" . tsx-mode))
