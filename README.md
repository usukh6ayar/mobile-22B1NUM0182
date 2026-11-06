# ShopLite — Мобайл апп хөгжүүлэлт (Flutter)

**Нэр:** Usukhbayar  
**Оюутны код:** 22B1NUM0182

- `lab1_dart/` — Лаборатори 1, Dart дасгал
- `shoplite/` — Flutter апп
- `screenshots/` — дэлгэцийн зураг

## Лаборатори 1

![flutter doctor](screenshots/flutter_doctor.png)
![shoplite](screenshots/shoplite.png)

### lab1_dart

- `dart test test/lab1_test.dart`: 25 / 25
- Бонус B1 (`dart test test/bonus_test.dart`): хийсэн

### D2. Төслийн бүтэц

1. `lib/main.dart`-д ямар классууд байна? Аль нь StatelessWidget, аль нь StatefulWidget вэ?
   > `ShopLiteApp` (анх `MyApp`) нь StatelessWidget. `MyHomePage` нь StatefulWidget, түүний төлөв `_MyHomePageState` классд байна.
2. `pubspec.yaml`-д ямар сангууд байна?
   > dependencies: `flutter`, `cupertino_icons`. dev_dependencies: `flutter_test`, `flutter_lints`.
3. `android/` хавтас юунд хэрэгтэй вэ? Та ихэвчлэн аль хавтсанд код бичих вэ?
   > `android/` дотор Android-д build хийх тохиргоо (Gradle, AndroidManifest) байна. Би кодоо ихэвчлэн `lib/` хавтсанд бичнэ.

### D4. Hot reload ба hot restart

| Өөрчлөлт | Hot reload (r) | Hot restart (R) |
|---|---|---|
| AppBar-ийн гарчгийг өөрчлөх | Гарчиг солигдсон, тоо 3 хэвээр | Гарчиг солигдсон, тоо 0 болсон |
| seed өнгийг солих | Өнгө солигдсон, тоо 3 хэвээр | Өнгө солигдсон, тоо 0 болсон |
| `int _count = 0;` → `= 5` | Өөрчлөгдөөгүй, тоо 3 хэвээр | Тоо 5 болсон |
| `main()` дотор `print('start');` нэмэх | Юу ч хэвлэгдээгүй | `start` хэвлэгдсэн |

**Дүгнэлт:** аль тохиолдолд тоолуурын утга (state) хадгалагдсан бэ? Яагаад?
> Hot reload хийхэд тоо хадгалагдсан. Hot reload зөвхөн `build()`-ийг дахин ажиллуулдаг, State хэвээрээ үлддэг. Hot restart аппыг `main()`-оос дахин эхлүүлдэг тул State шинээр үүсч, тоо анхны утга руугаа буцсан.
