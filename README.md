# Avo Money Field

A simple money field for [avo-hq/avo](https://github.com/avo-hq/avo), a Rails Admin Panel and Internal Tool Builder.

Docs available at [https://docs.avohq.io/3.0/fields/money.html](https://docs.avohq.io/3.0/fields/money.html)

## Usage

```ruby
field :price, as: :money, currencies: %w[EUR USD RON PEN]
```

