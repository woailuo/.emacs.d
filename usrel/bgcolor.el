;; background color
(set-foreground-color "white")
(set-background-color "black")
(set-cursor-color "gold1")
(set-mouse-color "gold1")

;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue") 
(set-face-background 'secondary-selection "darkblue")
;;(set-face-attribute 'default nil :font "文泉驿正黑 14")

;; 中文字体
;; (set-fontset-font "fontset-default" 'han'("STHeiti"))
;; 英文字体
;; (set-default-font "Source Code Pro 20")
;;(set-face-attribute 'default nil :font  "MingLan_Code 14")

(provide 'bgcolor)
