abstract class MapperFrom<T, V> {
  T from(V data);
}

abstract class MapperTo<T, V> {
  V to(T data);
}

abstract class Mapper<T, V> with MapperFrom<T, V>, MapperTo<T, V> {}
