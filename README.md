# Pyth SDK for Dart

A **Dart port of the [Pyth JavaScript SDK](https://github.com/pyth-network/pyth-crosschain/tree/main/price_service/sdk/js)**, originally developed by the **Pyth Data Association**.

This package allows Dart and Flutter developers to interact with the [Pyth Network](https://pyth.network), parse on-chain price feeds, and work with accumulator updates in a Dart/Flutter environment.

---

## ✨ Features

- Parse and validate **AccumulatorUpdateData** messages.
- Work with **PriceFeed** and **Price** objects.
- Support for **TWAP (Time Weighted Average Price)** parsing.
- Big-endian number parsing using Dart’s `ByteData` and `Uint8List`.
- Compatible with **Flutter** and **pure Dart** projects.

---

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  pyth_sdk_dart: ^0.1.0
```
