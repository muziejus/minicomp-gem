# minicomp-gem

The Ruby version of the Minicomp tools

First goal:

```bash
> gem install minicomp
> minicomp csv dictionary --input_file=data.csv --format_file=data-fmt.yml --output_file=data-dictionary.html
```

The resulting `.html` has an `<ol>` describing all the columns. This can be
pushed and shared on gh-pages or deposited in a repository.
