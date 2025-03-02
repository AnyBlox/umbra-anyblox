# Umbra AnyBlox binary

Umbra is a closed-source project. We distribute the `sql` binary with the AnyBlox integration and a prebuild AnyBlox cpp library
corresponding to the one expected by `sql`.

This should be runnable on modern Linux systems with `llvm-19` and `libarrow`. We also provide a `Dockerfile` that creates
an environment where `sql` is confirmed to run.

## Usage

You can query `.any` files with the Umbra-specific syntax:

```sql
SELECT * FROM umbra.anyblox('/path/to/dataset.any');
```
