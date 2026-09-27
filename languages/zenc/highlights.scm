; Zenc-specific keywords (parsed as identifiers by the C grammar)
((identifier) @keyword
  (#match? @keyword "^(fn|let|var|impl|trait|match|defer|test|assert|alias|use|comptime|async|await|and|or|not|opaque|import|in|loop|repeat|unless|null|this|self|pub|raw|plugin)$"))

; Zenc primitive types (parsed as identifiers by the C grammar)
((identifier) @type.builtin
  (#match? @type.builtin "^(uint|i8|i16|i32|i64|i128|u8|u16|u32|u64|u128|byte|usize|isize|string|f32|f64|rune|size_t|ptrdiff_t|ssize_t|int8_t|int16_t|int32_t|int64_t|uint8_t|uint16_t|uint32_t|uint64_t)$"))

; C grammar keywords
[
  "break"
  "const"
  "continue"
  "default"
  "do"
  "else"
  "enum"
  "extern"
  "for"
  "if"
  "return"
  "sizeof"
  "static"
  "struct"
  "switch"
  "union"
  "volatile"
  "while"
] @keyword

; Preprocessor / C directives
(preproc_directive) @preproc

; Comments
(comment) @comment

; Strings
(string_literal) @string
(char_literal) @string

; Numbers
(number_literal) @number

; User-defined / referenced types
(type_identifier) @type

; C primitive types
(primitive_type) @type.builtin

; Functions
(function_declarator
  declarator: (identifier) @function)

; Fields / members
(field_identifier) @property

; Parameters
(parameter_declaration
  declarator: (identifier) @variable.parameter)

; Variables (fallback)
(identifier) @variable
