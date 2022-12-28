(defgroup bioSyntax nil
  "Mode for viewing biological data"
  :group 'text)


(defface bioSyntax-comment
  '((t :foreground "#B1B1AF"))
  "Face for a comment."
  :group 'bioSyntax)

(defface bioSyntax-header
  '((t :foreground "#E6DB74"
       :background "#3E3D32"
       :weight bold))
  "Face for a header."
  :group 'bioSyntax)

(defface bioSyntax-headerbw
  '((t :foreground "#BDB691"))
  "Face for a black and white header."
  :group 'bioSyntax)

(defface bioSyntax-ntA
  '((t :foreground "#000000"
       :background "#47FF19"))
  "Face for adenine."
  :group 'bioSyntax)


(defface bioSyntax-ntT
  '((t :foreground "#000000"
       :background "#4192FF"))
  "Face for thymine."
  :group 'bioSyntax)


(defface bioSyntax-ntG
  '((t :foreground "#000000"
       :background "#FFAF00"))
  "Face for guanine."
  :group 'bioSyntax)


(defface bioSyntax-ntC
  '((t :foreground "#000000"
       :background "#FF4641"))
  "Face for cytosine."
  :group 'bioSyntax)

(defface bioSyntax-ntU
  '((t :foreground "#000000"
       :background "#8A89FF"))
  "Face for uracil."
  :group 'bioSyntax)


(defface bioSyntax-ntR
  '((t :foreground "#000000"
       :background "#FFFE80"))
  "Face for purines."
  :group 'bioSyntax)

(defface bioSyntax-ntY
  '((t :foreground "#000000"
       :background "#E180FF"))
  "Face for pyrimidines."
  :group 'bioSyntax)

(defface bioSyntax-ntS
  '((t :foreground "#000000"
       :background "#FF9B80"))
  "Face for strong interactions."
  :group 'bioSyntax)

(defface bioSyntax-ntW
  '((t :foreground "#000000"
       :background "#80FFF2"))
  "Face for weak interactions."
  :group 'bioSyntax)

(defface bioSyntax-ntM
  '((t :foreground "#000000"
       :background "#CE8834"))
  "Face for bases with amino groups."
  :group 'bioSyntax)

(defface bioSyntax-ntK
  '((t :foreground "#000000"
       :background "#90B82C"))
  "Face for bases that are ketones."
  :group 'bioSyntax)

(defface bioSyntax-ntD
  '((t :foreground "#000000"
       :background "#C7FFB9"))
  "Face for bases that are not C (i.e. A, G, T or U)."
  :group 'bioSyntax)

(defface bioSyntax-ntB
  '((t :foreground "#000000"
       :background "#F8C1C0"))
  "Face for bases that are not A (i.e. C, G, T or U)"
  :group 'bioSyntax)

(defface bioSyntax-ntV
  '((t :foreground "#000000"
       :background "#FFE3B9"))
  "Face for bases that are Neither T nor U (i.e. A, C or G)"
  :group 'bioSyntax)

(defface bioSyntax-ntH
  '((t :foreground "#000000"
       :background "#BFD8F9"))
  "Face for bases that are Not G (i.e. A, C, T or U)"
  :group 'bioSyntax)

(defface bioSyntax-ntN
  '((t :foreground "#000000"
       :background "#FFFFFF"))
  "Face for nucleic acids"
  :group 'bioSyntax)

(defface bioSyntax-ntGap
  '((t :background "#FFFFFF"))
  "Face for gap of indeterminate length"
  :group 'bioSyntax)

(defvar clustal-font-lock
  '(("CLUSTAL.*" . 'bioSyntax-header)
    ("^[[:graph:]]*[[:space:]]" . 'bioSyntax-comment)
    ("[Aa]" . 'bioSyntax-ntA)
    ("[Gg]" . 'bioSyntax-ntG)
    ("[Cc]" . 'bioSyntax-ntC)
    ("[Tt]" . 'bioSyntax-ntT)
    ("[Uu]" . 'bioSyntax-ntU)
    ("[Rr]" . 'bioSyntax-ntR)
    ("[Yy]" . 'bioSyntax-ntY)
    ("[Ss]" . 'bioSyntax-ntS)
    ("[Ww]" . 'bioSyntax-ntW)
    ("[Mm]" . 'bioSyntax-ntM)
    ("[Kk]" . 'bioSyntax-ntK)
    ("[Dd]" . 'bioSyntax-ntD)
    ("[Bb]" . 'bioSyntax-ntB)
    ("[Vv]" . 'bioSyntax-ntV)
    ("[Hh]" . 'bioSyntax-ntH)
    ("[Nn]" . 'bioSyntax-ntN)
    ("[/\-\.]" . 'bioSyntax-ntGap))


  "Font lock rules for `fasta files'.")

(add-to-list 'auto-mode-alist '("\\.\\(clustal|aln\\)" . clustal-mode))

;;;###autoload
(define-derived-mode clustal-mode fundamental-mode "clustal"
  "Major mode for editing fasta files."
  (setq font-lock-defaults '(clustal-font-lock)))

(provide 'clustal)
