# Require by convention

> Automatically require Ruby files in a given directory by convention

## Usage example

```
ruby <<'EOF'
$LOAD_PATH.unshift '.'
autodir = 'somedir'
Dir.glob("#{autodir}/*.rb").each do |f|
  require f
end
puts "hello world"
EOF
loaded bar.rb...
loaded baz.rb...
loaded foo.rb...
hello world
```

```
tree .
.
├── README.md
├── some.rb
└── somedir
    ├── bar.rb
    ├── baz.rb
    └── foo.rb

1 directory, 5 files
```